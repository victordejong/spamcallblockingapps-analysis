package p131c.p161d.p282e.p289l.p290d.p293h;

import android.os.Looper;
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
/* renamed from: c.d.e.l.d.h.h0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/h0.class */
public final class C5229h0 {

    /* renamed from: a */
    public static final FilenameFilter f17921a = new C5230a();

    /* renamed from: b */
    public static final ExecutorService f17922b = C5281s.m24067a("awaitEvenIfOnMainThread task continuation executor");

    /* renamed from: c.d.e.l.d.h.h0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/h0$a.class */
    public class C5230a implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return true;
        }
    }

    /* renamed from: c.d.e.l.d.h.h0$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/h0$b.class */
    public class C5231b implements Continuation<T, Void> {

        /* renamed from: a */
        public final /* synthetic */ TaskCompletionSource f17923a;

        public C5231b(TaskCompletionSource taskCompletionSource) {
            this.f17923a = taskCompletionSource;
        }

        @Override // com.google.android.gms.tasks.Continuation
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Void mo8621a(Task<T> task) throws Exception {
            if (task.mo8601e()) {
                this.f17923a.m8596b((TaskCompletionSource) task.mo8606b());
                return null;
            }
            this.f17923a.m8597b(task.mo8617a());
            return null;
        }
    }

    /* renamed from: c.d.e.l.d.h.h0$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/h0$c.class */
    public class RunnableC5232c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Callable f17924a;

        /* renamed from: b */
        public final /* synthetic */ TaskCompletionSource f17925b;

        /* renamed from: c.d.e.l.d.h.h0$c$a */
        /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/h0$c$a.class */
        public class C5233a implements Continuation<T, Void> {
            public C5233a() {
            }

            @Override // com.google.android.gms.tasks.Continuation
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public Void mo8621a(Task<T> task) throws Exception {
                if (task.mo8601e()) {
                    RunnableC5232c.this.f17925b.m8598a((TaskCompletionSource) task.mo8606b());
                    return null;
                }
                RunnableC5232c.this.f17925b.m8599a(task.mo8617a());
                return null;
            }
        }

        public RunnableC5232c(Callable callable, TaskCompletionSource taskCompletionSource) {
            this.f17924a = callable;
            this.f17925b = taskCompletionSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((Task) this.f17924a.call()).mo8616a(new C5233a());
            } catch (Exception e) {
                this.f17925b.m8599a(e);
            }
        }
    }

    /* renamed from: a */
    public static int m24228a(File file, int i, Comparator<File> comparator) {
        return m24226a(file, f17921a, i, comparator);
    }

    /* renamed from: a */
    public static int m24227a(File file, File file2, int i, Comparator<File> comparator) {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        File[] listFiles2 = file2.listFiles(f17921a);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        if (listFiles2 == null) {
            listFiles2 = new File[0];
        }
        arrayList.addAll(Arrays.asList(listFiles));
        arrayList.addAll(Arrays.asList(listFiles2));
        return m24225a(arrayList, i, comparator);
    }

    /* renamed from: a */
    public static int m24226a(File file, FilenameFilter filenameFilter, int i, Comparator<File> comparator) {
        File[] listFiles = file.listFiles(filenameFilter);
        if (listFiles == null) {
            return 0;
        }
        return m24225a(Arrays.asList(listFiles), i, comparator);
    }

    /* renamed from: a */
    public static int m24225a(List<File> list, int i, Comparator<File> comparator) {
        int size = list.size();
        Collections.sort(list, comparator);
        for (File file : list) {
            if (size <= i) {
                return size;
            }
            m24229a(file);
            size--;
        }
        return size;
    }

    /* renamed from: a */
    public static <T> Task<T> m24230a(Task<T> task, Task<T> task2) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        C5231b bVar = new C5231b(taskCompletionSource);
        task.mo8616a(bVar);
        task2.mo8616a(bVar);
        return taskCompletionSource.m8600a();
    }

    /* renamed from: a */
    public static <T> Task<T> m24223a(Executor executor, Callable<Task<T>> callable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        executor.execute(new RunnableC5232c(callable, taskCompletionSource));
        return taskCompletionSource.m8600a();
    }

    /* renamed from: a */
    public static <T> T m24231a(Task<T> task) throws InterruptedException, TimeoutException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        task.mo8611a(f17922b, C5223g0.m24241a(countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (task.mo8601e()) {
            return task.mo8606b();
        }
        if (task.mo8603c()) {
            throw new CancellationException("Task is already canceled");
        } else if (task.mo8602d()) {
            throw new IllegalStateException(task.mo8617a());
        } else {
            throw new TimeoutException();
        }
    }

    /* renamed from: a */
    public static void m24229a(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                m24229a(file2);
            }
        }
        file.delete();
    }
}
