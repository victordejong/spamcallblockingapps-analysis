package com.google.android.exoplayer2.offline;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import com.google.android.exoplayer2.offline.DownloadAction;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadManager.class */
public final class DownloadManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_MAX_SIMULTANEOUS_DOWNLOADS = 1;
    public static final int DEFAULT_MIN_RETRY_COUNT = 5;
    private static final String TAG = "DownloadManager";
    private final ActionFile actionFile;
    private final ArrayList<Task> activeDownloadTasks;
    private final DownloadAction.Deserializer[] deserializers;
    private final DownloaderConstructorHelper downloaderConstructorHelper;
    private boolean downloadsStopped;
    private final Handler fileIOHandler;
    private final HandlerThread fileIOThread;
    private final Handler handler;
    private boolean initialized;
    private final CopyOnWriteArraySet<Listener> listeners;
    private final int maxActiveDownloadTasks;
    private final int minRetryCount;
    private int nextTaskId;
    private boolean released;
    private final ArrayList<Task> tasks;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadManager$Listener.class */
    public interface Listener {
        void onIdle(DownloadManager downloadManager);

        void onInitialized(DownloadManager downloadManager);

        void onTaskStateChanged(DownloadManager downloadManager, TaskState taskState);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadManager$Task.class */
    public static final class Task implements Runnable {
        public static final int STATE_QUEUED_CANCELING = 5;
        public static final int STATE_STARTED_CANCELING = 6;
        public static final int STATE_STARTED_STOPPING = 7;
        private final DownloadAction action;
        private volatile int currentState;
        private final DownloadManager downloadManager;
        private volatile Downloader downloader;
        private Throwable error;

        /* renamed from: id */
        private final int f3603id;
        private final int minRetryCount;
        private Thread thread;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadManager$Task$InternalState.class */
        public @interface InternalState {
        }

        private Task(int i, DownloadManager downloadManager, DownloadAction downloadAction, int i2) {
            this.f3603id = i;
            this.downloadManager = downloadManager;
            this.action = downloadAction;
            this.currentState = 0;
            this.minRetryCount = i2;
        }

        public boolean canStart() {
            return this.currentState == 0;
        }

        public void cancel() {
            if (changeStateAndNotify(0, 5)) {
                this.downloadManager.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.DownloadManager.Task.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Task.this.changeStateAndNotify(5, 3);
                    }
                });
            } else if (!changeStateAndNotify(1, 6)) {
            } else {
                cancelDownload();
            }
        }

        private void cancelDownload() {
            if (this.downloader != null) {
                this.downloader.cancel();
            }
            this.thread.interrupt();
        }

        public boolean changeStateAndNotify(int i, int i2) {
            return changeStateAndNotify(i, i2, null);
        }

        public boolean changeStateAndNotify(int i, int i2, Throwable th) {
            if (this.currentState != i) {
                return false;
            }
            this.currentState = i2;
            this.error = th;
            boolean z = false;
            if (this.currentState != getExternalState()) {
                z = true;
            }
            if (z) {
                return true;
            }
            this.downloadManager.onTaskStateChange(this);
            return true;
        }

        private int getExternalState() {
            int i = this.currentState;
            if (i != 5) {
                if (i != 6 && i != 7) {
                    return this.currentState;
                }
                return 1;
            }
            return 0;
        }

        private int getRetryDelayMillis(int i) {
            return Math.min((i - 1) * 1000, 5000);
        }

        private String getStateString() {
            int i = this.currentState;
            return (i == 5 || i == 6) ? "CANCELING" : i != 7 ? TaskState.getStateString(this.currentState) : "STOPPING";
        }

        public void start() {
            if (changeStateAndNotify(0, 1)) {
                Thread thread = new Thread(this);
                this.thread = thread;
                thread.start();
            }
        }

        public void stop() {
            if (changeStateAndNotify(1, 7)) {
                DownloadManager.logd("Stopping", this);
                this.thread.interrupt();
            }
        }

        private static String toString(byte[] bArr) {
            if (bArr.length > 100) {
                return "<data is too long>";
            }
            return '\'' + Util.fromUtf8Bytes(bArr) + '\'';
        }

        public float getDownloadPercentage() {
            return this.downloader != null ? this.downloader.getDownloadPercentage() : -1.0f;
        }

        public TaskState getDownloadState() {
            return new TaskState(this.f3603id, this.action, getExternalState(), getDownloadPercentage(), getDownloadedBytes(), this.error);
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [long] */
        public long getDownloadedBytes() {
            return this.downloader != null ? this.downloader.getDownloadedBytes() : (char) 0;
        }

        public boolean isActive() {
            boolean z = true;
            if (this.currentState != 5) {
                z = true;
                if (this.currentState != 1) {
                    z = true;
                    if (this.currentState != 7) {
                        z = this.currentState == 6;
                    }
                }
            }
            return z;
        }

        public boolean isFinished() {
            return this.currentState == 4 || this.currentState == 2 || this.currentState == 3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        @Override // java.lang.Runnable
        public void run() {
            Throwable th;
            DownloadManager.logd("Task is started", this);
            try {
                this.downloader = this.action.createDownloader(this.downloadManager.downloaderConstructorHelper);
                if (!this.action.isRemoveAction) {
                    char c = 65535;
                    int i = 0;
                    while (!Thread.interrupted()) {
                        try {
                            this.downloader.download();
                            break;
                        } catch (IOException e) {
                            ?? downloadedBytes = this.downloader.getDownloadedBytes();
                            char c2 = c;
                            if (downloadedBytes != c) {
                                DownloadManager.logd("Reset error count. downloadedBytes = " + ((long) downloadedBytes), this);
                                c2 = downloadedBytes;
                                i = 0;
                            }
                            if (this.currentState == 1) {
                                i++;
                                if (i <= this.minRetryCount) {
                                    DownloadManager.logd("Download error. Retry " + i, this);
                                    Thread.sleep((long) getRetryDelayMillis(i));
                                    c = c2;
                                }
                            }
                            throw e;
                        }
                    }
                }
                this.downloader.remove();
                th = null;
            } catch (Throwable th2) {
                th = th2;
            }
            final Throwable th3 = th;
            this.downloadManager.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.DownloadManager.Task.2
                @Override // java.lang.Runnable
                public void run() {
                    Task task = Task.this;
                    Throwable th4 = th3;
                    if (task.changeStateAndNotify(1, th4 != null ? 4 : 2, th4) || Task.this.changeStateAndNotify(6, 3) || Task.this.changeStateAndNotify(7, 0)) {
                        return;
                    }
                    throw new IllegalStateException();
                }
            });
        }

        public String toString() {
            return super.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadManager$TaskState.class */
    public static final class TaskState {
        public static final int STATE_CANCELED = 3;
        public static final int STATE_COMPLETED = 2;
        public static final int STATE_FAILED = 4;
        public static final int STATE_QUEUED = 0;
        public static final int STATE_STARTED = 1;
        public final DownloadAction action;
        public final float downloadPercentage;
        public final long downloadedBytes;
        public final Throwable error;
        public final int state;
        public final int taskId;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadManager$TaskState$State.class */
        public @interface State {
        }

        private TaskState(int i, DownloadAction downloadAction, int i2, float f, long j, Throwable th) {
            this.taskId = i;
            this.action = downloadAction;
            this.state = i2;
            this.downloadPercentage = f;
            this.downloadedBytes = j;
            this.error = th;
        }

        public static String getStateString(int i) {
            if (i != 0) {
                if (i == 1) {
                    return "STARTED";
                }
                if (i == 2) {
                    return "COMPLETED";
                }
                if (i == 3) {
                    return "CANCELED";
                }
                if (i != 4) {
                    throw new IllegalStateException();
                }
                return "FAILED";
            }
            return "QUEUED";
        }
    }

    public DownloadManager(DownloaderConstructorHelper downloaderConstructorHelper, int i, int i2, File file, DownloadAction.Deserializer... deserializerArr) {
        Assertions.checkArgument(deserializerArr.length > 0, "At least one Deserializer is required.");
        this.downloaderConstructorHelper = downloaderConstructorHelper;
        this.maxActiveDownloadTasks = i;
        this.minRetryCount = i2;
        this.actionFile = new ActionFile(file);
        this.deserializers = deserializerArr;
        this.downloadsStopped = true;
        this.tasks = new ArrayList<>();
        this.activeDownloadTasks = new ArrayList<>();
        Looper myLooper = Looper.myLooper();
        this.handler = new Handler(myLooper == null ? Looper.getMainLooper() : myLooper);
        HandlerThread handlerThread = new HandlerThread("DownloadManager file i/o");
        this.fileIOThread = handlerThread;
        handlerThread.start();
        this.fileIOHandler = new Handler(handlerThread.getLooper());
        this.listeners = new CopyOnWriteArraySet<>();
        loadActions();
        logd("Created");
    }

    public DownloadManager(DownloaderConstructorHelper downloaderConstructorHelper, File file, DownloadAction.Deserializer... deserializerArr) {
        this(downloaderConstructorHelper, 1, 5, file, deserializerArr);
    }

    public DownloadManager(Cache cache, DataSource.Factory factory, File file, DownloadAction.Deserializer... deserializerArr) {
        this(new DownloaderConstructorHelper(cache, factory), file, deserializerArr);
    }

    public Task addTaskForAction(DownloadAction downloadAction) {
        int i = this.nextTaskId;
        this.nextTaskId = i + 1;
        Task task = new Task(i, this, downloadAction, this.minRetryCount);
        this.tasks.add(task);
        logd("Task is added", task);
        return task;
    }

    private void loadActions() {
        this.fileIOHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.DownloadManager.2
            @Override // java.lang.Runnable
            public void run() {
                DownloadAction[] downloadActionArr;
                try {
                    downloadActionArr = DownloadManager.this.actionFile.load(DownloadManager.this.deserializers);
                    DownloadManager.logd("Action file is loaded.");
                } catch (Throwable th) {
                    Log.e(DownloadManager.TAG, "Action file loading failed.", th);
                    downloadActionArr = new DownloadAction[0];
                }
                final DownloadAction[] downloadActionArr2 = downloadActionArr;
                DownloadManager.this.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.DownloadManager.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (DownloadManager.this.released) {
                            return;
                        }
                        ArrayList arrayList = new ArrayList(DownloadManager.this.tasks);
                        DownloadManager.this.tasks.clear();
                        for (DownloadAction downloadAction : downloadActionArr2) {
                            DownloadManager.this.addTaskForAction(downloadAction);
                        }
                        DownloadManager.logd("Tasks are created.");
                        DownloadManager.this.initialized = true;
                        Iterator it = DownloadManager.this.listeners.iterator();
                        while (it.hasNext()) {
                            ((Listener) it.next()).onInitialized(DownloadManager.this);
                        }
                        if (!arrayList.isEmpty()) {
                            DownloadManager.this.tasks.addAll(arrayList);
                            DownloadManager.this.saveActions();
                        }
                        DownloadManager.this.maybeStartTasks();
                        for (int i = 0; i < DownloadManager.this.tasks.size(); i++) {
                            Task task = (Task) DownloadManager.this.tasks.get(i);
                            if (task.currentState == 0) {
                                DownloadManager.this.notifyListenersTaskStateChange(task);
                            }
                        }
                    }
                });
            }
        });
    }

    public static void logd(String str) {
    }

    public static void logd(String str, Task task) {
        logd(str + ": " + task);
    }

    private void maybeNotifyListenersIdle() {
        if (!isIdle()) {
            return;
        }
        logd("Notify idle state");
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onIdle(this);
        }
    }

    public void maybeStartTasks() {
        DownloadAction downloadAction;
        boolean z;
        boolean z2;
        boolean z3;
        if (!this.initialized || this.released) {
            return;
        }
        boolean z4 = this.downloadsStopped || this.activeDownloadTasks.size() == this.maxActiveDownloadTasks;
        for (int i = 0; i < this.tasks.size(); i++) {
            Task task = this.tasks.get(i);
            if (task.canStart() && ((z = (downloadAction = task.action).isRemoveAction) || !z4)) {
                int i2 = 0;
                boolean z5 = true;
                while (true) {
                    boolean z6 = z5;
                    z2 = z4;
                    z3 = z6;
                    if (i2 >= i) {
                        break;
                    }
                    Task task2 = this.tasks.get(i2);
                    boolean z7 = z6;
                    if (task2.action.isSameMedia(downloadAction)) {
                        if (!z) {
                            z7 = z6;
                            if (task2.action.isRemoveAction) {
                                z2 = true;
                                z3 = false;
                                break;
                            }
                        } else {
                            logd(task + " clashes with " + task2);
                            task2.cancel();
                            z7 = false;
                        }
                    }
                    i2++;
                    z5 = z7;
                }
                z4 = z2;
                if (z3) {
                    task.start();
                    z4 = z2;
                    if (!z) {
                        this.activeDownloadTasks.add(task);
                        z4 = this.activeDownloadTasks.size() == this.maxActiveDownloadTasks;
                    }
                }
            }
        }
    }

    public void notifyListenersTaskStateChange(Task task) {
        logd("Task state is changed", task);
        TaskState downloadState = task.getDownloadState();
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onTaskStateChanged(this, downloadState);
        }
    }

    public void onTaskStateChange(Task task) {
        if (this.released) {
            return;
        }
        boolean z = !task.isActive();
        if (z) {
            this.activeDownloadTasks.remove(task);
        }
        notifyListenersTaskStateChange(task);
        if (task.isFinished()) {
            this.tasks.remove(task);
            saveActions();
        }
        if (!z) {
            return;
        }
        maybeStartTasks();
        maybeNotifyListenersIdle();
    }

    public void saveActions() {
        if (this.released) {
            return;
        }
        final DownloadAction[] downloadActionArr = new DownloadAction[this.tasks.size()];
        for (int i = 0; i < this.tasks.size(); i++) {
            downloadActionArr[i] = this.tasks.get(i).action;
        }
        this.fileIOHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.DownloadManager.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    DownloadManager.this.actionFile.store(downloadActionArr);
                    DownloadManager.logd("Actions persisted.");
                } catch (IOException e) {
                    Log.e(DownloadManager.TAG, "Persisting actions failed.", e);
                }
            }
        });
    }

    public void addListener(Listener listener) {
        this.listeners.add(listener);
    }

    public TaskState[] getAllTaskStates() {
        Assertions.checkState(!this.released);
        int size = this.tasks.size();
        TaskState[] taskStateArr = new TaskState[size];
        for (int i = 0; i < size; i++) {
            taskStateArr[i] = this.tasks.get(i).getDownloadState();
        }
        return taskStateArr;
    }

    public int getDownloadCount() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < this.tasks.size()) {
                int i4 = i3;
                if (!this.tasks.get(i).action.isRemoveAction) {
                    i4 = i3 + 1;
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    public int getTaskCount() {
        Assertions.checkState(!this.released);
        return this.tasks.size();
    }

    public TaskState getTaskState(int i) {
        Assertions.checkState(!this.released);
        for (int i2 = 0; i2 < this.tasks.size(); i2++) {
            Task task = this.tasks.get(i2);
            if (task.f3603id == i) {
                return task.getDownloadState();
            }
        }
        return null;
    }

    public int handleAction(DownloadAction downloadAction) {
        Assertions.checkState(!this.released);
        Task addTaskForAction = addTaskForAction(downloadAction);
        if (this.initialized) {
            saveActions();
            maybeStartTasks();
            if (addTaskForAction.currentState == 0) {
                notifyListenersTaskStateChange(addTaskForAction);
            }
        }
        return addTaskForAction.f3603id;
    }

    public int handleAction(byte[] bArr) {
        Assertions.checkState(!this.released);
        return handleAction(DownloadAction.deserializeFromStream(this.deserializers, new ByteArrayInputStream(bArr)));
    }

    public boolean isIdle() {
        Assertions.checkState(!this.released);
        if (!this.initialized) {
            return false;
        }
        for (int i = 0; i < this.tasks.size(); i++) {
            if (this.tasks.get(i).isActive()) {
                return false;
            }
        }
        return true;
    }

    public boolean isInitialized() {
        Assertions.checkState(!this.released);
        return this.initialized;
    }

    public void release() {
        if (this.released) {
            return;
        }
        this.released = true;
        for (int i = 0; i < this.tasks.size(); i++) {
            this.tasks.get(i).stop();
        }
        final ConditionVariable conditionVariable = new ConditionVariable();
        this.fileIOHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.DownloadManager.1
            @Override // java.lang.Runnable
            public void run() {
                conditionVariable.open();
            }
        });
        conditionVariable.block();
        this.fileIOThread.quit();
        logd("Released");
    }

    public void removeListener(Listener listener) {
        this.listeners.remove(listener);
    }

    public void startDownloads() {
        Assertions.checkState(!this.released);
        if (this.downloadsStopped) {
            this.downloadsStopped = false;
            maybeStartTasks();
            logd("Downloads are started");
        }
    }

    public void stopDownloads() {
        Assertions.checkState(!this.released);
        if (!this.downloadsStopped) {
            this.downloadsStopped = true;
            for (int i = 0; i < this.activeDownloadTasks.size(); i++) {
                this.activeDownloadTasks.get(i).stop();
            }
            logd("Downloads are stopping");
        }
    }
}
