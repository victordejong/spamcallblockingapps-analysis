package androidx.room.p050b;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: androidx.room.b.a */
/* loaded from: classes-dex2jar.jar:androidx/room/b/a.class */
public class C1013a {

    /* renamed from: a */
    private static final Map<String, Lock> f3453a = new HashMap();

    /* renamed from: b */
    private final File f3454b;

    /* renamed from: c */
    private final Lock f3455c;

    /* renamed from: d */
    private final boolean f3456d;

    /* renamed from: e */
    private FileChannel f3457e;

    public C1013a(String str, File file, boolean z) {
        this.f3454b = new File(file, str + ".lck");
        this.f3455c = m18351a(this.f3454b.getAbsolutePath());
        this.f3456d = z;
    }

    /* renamed from: a */
    private static Lock m18351a(String str) {
        Lock lock;
        synchronized (f3453a) {
            Lock lock2 = f3453a.get(str);
            lock = lock2;
            if (lock2 == null) {
                lock = new ReentrantLock();
                f3453a.put(str, lock);
            }
        }
        return lock;
    }

    /* renamed from: a */
    public void m18352a() {
        this.f3455c.lock();
        if (this.f3456d) {
            try {
                this.f3457e = new FileOutputStream(this.f3454b).getChannel();
                this.f3457e.lock();
            } catch (IOException e) {
                throw new IllegalStateException("Unable to grab copy lock.", e);
            }
        }
    }

    /* renamed from: b */
    public void m18350b() {
        if (this.f3457e != null) {
            try {
                this.f3457e.close();
            } catch (IOException e) {
            }
        }
        this.f3455c.unlock();
    }
}
