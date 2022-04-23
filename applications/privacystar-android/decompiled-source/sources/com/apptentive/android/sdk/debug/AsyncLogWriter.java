package com.apptentive.android.sdk.debug;

import android.support.annotation.NonNull;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchQueueType;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/AsyncLogWriter.class */
public class AsyncLogWriter implements ApptentiveLog.LogListener {
    private static final int MESSAGE_QUEUE_SIZE = 256;
    private final File destDir;
    private final int logHistorySize;
    private final Object mutex;
    private final List<String> pendingMessages;
    private final DispatchQueue writeQueue;
    private final DispatchTask writeQueueTask;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/debug/AsyncLogWriter$LogFileWriteTask.class */
    private class LogFileWriteTask extends DispatchTask {
        private final File file;
        private final List<String> queuedMessagesTemp;

        private LogFileWriteTask(File file) {
            if (file == null) {
                throw new IllegalArgumentException("File is null");
            }
            this.file = file;
            this.queuedMessagesTemp = new ArrayList(256);
        }

        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
        protected void execute() {
            synchronized (AsyncLogWriter.this.mutex) {
                this.queuedMessagesTemp.addAll(AsyncLogWriter.this.pendingMessages);
                AsyncLogWriter.this.pendingMessages.clear();
            }
            try {
                Util.writeText(this.file, this.queuedMessagesTemp, true);
            } catch (Exception e) {
                ApptentiveLog.m408e(e, "Exception while writing log file: " + AsyncLogWriter.this.destDir, new Object[0]);
            }
            this.queuedMessagesTemp.clear();
        }
    }

    public AsyncLogWriter(File file, int i) {
        this(file, DispatchQueue.createBackgroundQueue("Apptentive Log Queue", DispatchQueueType.Serial), i);
    }

    AsyncLogWriter(File file, DispatchQueue dispatchQueue, int i) {
        this.mutex = new Object();
        if (file == null) {
            throw new IllegalArgumentException("Dest dir is null");
        } else if (dispatchQueue == null) {
            throw new IllegalArgumentException("Write queue is null");
        } else if (i < 1) {
            throw new IllegalArgumentException("Illegal log history size: " + i);
        } else {
            this.destDir = file;
            this.logHistorySize = i;
            this.writeQueue = dispatchQueue;
            this.pendingMessages = new ArrayList(256);
            File file2 = new File(file, createLogFilename());
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m403v(apptentiveLogTag, "Log file: " + file2, new Object[0]);
            this.writeQueueTask = new LogFileWriteTask(file2);
            dispatchQueue.dispatchAsync(createInitializationTask());
        }
    }

    private DispatchTask createInitializationTask() {
        return new DispatchTask() { // from class: com.apptentive.android.sdk.debug.AsyncLogWriter.1
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                File[] listFiles = AsyncLogWriter.this.destDir.listFiles(new FilenameFilter() { // from class: com.apptentive.android.sdk.debug.AsyncLogWriter.1.1
                    @Override // java.io.FilenameFilter
                    public boolean accept(File file, String str) {
                        return str.endsWith(Constants.LOG_FILE_EXT);
                    }
                });
                if (!(listFiles == null || listFiles.length == 0)) {
                    Arrays.sort(listFiles, new Comparator<File>() { // from class: com.apptentive.android.sdk.debug.AsyncLogWriter.1.2
                        public int compare(File file, File file2) {
                            int lastModified = (int) (file2.lastModified() - file.lastModified());
                            return lastModified != 0 ? lastModified : file2.getName().compareTo(file.getName());
                        }
                    });
                    for (int i = AsyncLogWriter.this.logHistorySize - 1; i < listFiles.length; i++) {
                        listFiles[i].delete();
                    }
                }
            }
        };
    }

    @NonNull
    protected String createLogFilename() {
        return Util.currentDateAsFilename(Constants.LOG_FILE_PREFIX, Constants.LOG_FILE_EXT);
    }

    @Override // com.apptentive.android.sdk.ApptentiveLog.LogListener
    public void onLogMessage(@NonNull ApptentiveLog.Level level, @NonNull String str) {
        synchronized (this.mutex) {
            List<String> list = this.pendingMessages;
            list.add(level.getShortName() + ": " + str);
            this.writeQueue.dispatchAsyncOnce(this.writeQueueTask);
        }
    }
}
