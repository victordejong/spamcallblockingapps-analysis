package com.google.firebase.crashlytics.internal.common;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/Utils.class */
public final class Utils {
    private static final FilenameFilter ALL_FILES_FILTER = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.common.Utils.1
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return true;
        }
    };
    private static final ExecutorService TASK_CONTINUATION_EXECUTOR_SERVICE = ExecutorUtils.buildSingleThreadExecutorService("awaitEvenIfOnMainThread task continuation executor");

    private Utils() {
    }

    public static <T> T awaitEvenIfOnMainThread(Task<T> task) throws InterruptedException, TimeoutException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        task.mo10789g(TASK_CONTINUATION_EXECUTOR_SERVICE, Utils$$Lambda$1.lambdaFactory$(countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (task.mo10782n()) {
            return task.mo10786j();
        }
        if (task.mo10784l()) {
            throw new CancellationException("Task is already canceled");
        } else if (task.mo10783m()) {
            throw new IllegalStateException(task.mo10787i());
        } else {
            throw new TimeoutException();
        }
    }

    public static <T> Task<T> callTask(Executor executor, final Callable<Task<T>> callable) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        executor.execute(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.Utils.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ((Task) callable.call()).mo10790f(new Continuation<T, Void>() { // from class: com.google.firebase.crashlytics.internal.common.Utils.3.1
                        @Override // com.google.android.gms.tasks.Continuation
                        public Void then(@NonNull Task<T> task) throws Exception {
                            if (task.mo10782n()) {
                                taskCompletionSource.m10828c(task.mo10786j());
                                return null;
                            }
                            taskCompletionSource.m10829b(task.mo10787i());
                            return null;
                        }
                    });
                } catch (Exception e) {
                    taskCompletionSource.m10829b(e);
                }
            }
        });
        return taskCompletionSource.m10830a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int capFileCount(File file, int i, Comparator<File> comparator) {
        return capFileCount(file, ALL_FILES_FILTER, i, comparator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int capFileCount(File file, FilenameFilter filenameFilter, int i, Comparator<File> comparator) {
        File[] listFiles = file.listFiles(filenameFilter);
        if (listFiles == null) {
            return 0;
        }
        return capFileCount(Arrays.asList(listFiles), i, comparator);
    }

    static int capFileCount(List<File> list, int i, Comparator<File> comparator) {
        int size = list.size();
        Collections.sort(list, comparator);
        for (File file : list) {
            if (size <= i) {
                return size;
            }
            recursiveDelete(file);
            size--;
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int capSessionCount(File file, File file2, int i, Comparator<File> comparator) {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        File[] listFiles2 = file2.listFiles(ALL_FILES_FILTER);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        if (listFiles2 == null) {
            listFiles2 = new File[0];
        }
        arrayList.addAll(Arrays.asList(listFiles));
        arrayList.addAll(Arrays.asList(listFiles2));
        return capFileCount(arrayList, i, comparator);
    }

    public static <T> Task<T> race(Task<T> task, Task<T> task2) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        Continuation continuation = (Continuation<T, Void>) new Continuation<T, Void>() { // from class: com.google.firebase.crashlytics.internal.common.Utils.2
            @Override // com.google.android.gms.tasks.Continuation
            public Void then(@NonNull Task<T> task3) throws Exception {
                if (task3.mo10782n()) {
                    TaskCompletionSource.this.m10826e(task3.mo10786j());
                    return null;
                }
                TaskCompletionSource.this.m10827d(task3.mo10787i());
                return null;
            }
        };
        task.mo10790f(continuation);
        task2.mo10790f(continuation);
        return taskCompletionSource.m10830a();
    }

    private static void recursiveDelete(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }
}
