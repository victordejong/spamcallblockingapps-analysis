package io.realm.internal.async;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.FileFilter;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/async/RealmThreadPoolExecutor.class */
public class RealmThreadPoolExecutor extends ThreadPoolExecutor {

    /* renamed from: i */
    private static final int f20210i = m2585a();

    /* renamed from: f */
    private boolean f20211f;

    /* renamed from: g */
    private ReentrantLock f20212g;

    /* renamed from: h */
    private Condition f20213h;

    private RealmThreadPoolExecutor(int i, int i2) {
        super(i, i2, 0L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(100));
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f20212g = reentrantLock;
        this.f20213h = reentrantLock.newCondition();
    }

    @SuppressFBWarnings({"DMI_HARDCODED_ABSOLUTE_FILENAME"})
    /* renamed from: a */
    private static int m2585a() {
        int b = m2584b("/sys/devices/system/cpu/", "cpu[0-9]+");
        int i = b;
        if (b <= 0) {
            i = Runtime.getRuntime().availableProcessors();
        }
        int i2 = 1;
        if (i > 0) {
            i2 = 1 + (i * 2);
        }
        return i2;
    }

    /* renamed from: b */
    private static int m2584b(String str, String str2) {
        int i;
        final Pattern compile = Pattern.compile(str2);
        try {
            File[] listFiles = new File(str).listFiles(new FileFilter() { // from class: io.realm.internal.async.RealmThreadPoolExecutor.1
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return compile.matcher(file.getName()).matches();
                }
            });
            i = listFiles == null ? 0 : listFiles.length;
        } catch (SecurityException e) {
            i = 0;
        }
        return i;
    }

    /* renamed from: c */
    public static RealmThreadPoolExecutor m2583c() {
        int i = f20210i;
        return new RealmThreadPoolExecutor(i, i);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        this.f20212g.lock();
        while (this.f20211f) {
            try {
                try {
                    this.f20213h.await();
                } catch (InterruptedException e) {
                    thread.interrupt();
                }
            } finally {
                this.f20212g.unlock();
            }
        }
    }
}
