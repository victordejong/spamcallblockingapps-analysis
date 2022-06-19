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
public class C1032a {

    /* renamed from: a */
    private static final Map<String, Lock> f3244a = new HashMap();

    /* renamed from: b */
    private final File f3245b;

    /* renamed from: c */
    private final Lock f3246c;

    /* renamed from: d */
    private final boolean f3247d;

    /* renamed from: e */
    private FileChannel f3248e;

    public C1032a(String str, File file, boolean z) {
        this.f3245b = new File(file, str + ".lck");
        this.f3246c = m4499a(this.f3245b.getAbsolutePath());
        this.f3247d = z;
    }

    /* renamed from: a */
    private static Lock m4499a(String str) {
        Lock lock;
        synchronized (f3244a) {
            Lock lock2 = f3244a.get(str);
            lock = lock2;
            if (lock2 == null) {
                lock = new ReentrantLock();
                f3244a.put(str, lock);
            }
        }
        return lock;
    }

    /* renamed from: a */
    public void m4500a() {
        this.f3246c.lock();
        if (this.f3247d) {
            try {
                this.f3248e = new FileOutputStream(this.f3245b).getChannel();
                this.f3248e.lock();
            } catch (IOException e) {
                throw new IllegalStateException("Unable to grab copy lock.", e);
            }
        }
    }

    /* renamed from: b */
    public void m4498b() {
        FileChannel fileChannel = this.f3248e;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException e) {
            }
        }
        this.f3246c.unlock();
    }
}
