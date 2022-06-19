package androidx.room.p012q;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: androidx.room.q.a */
/* loaded from: classes-dex2jar.jar:androidx/room/q/a.class */
public class C1031a {

    /* renamed from: a */
    private static final Map<String, Lock> f4537a = new HashMap();

    /* renamed from: b */
    private final File f4538b;

    /* renamed from: c */
    private final Lock f4539c;

    /* renamed from: d */
    private final boolean f4540d;

    /* renamed from: e */
    private FileChannel f4541e;

    public C1031a(String str, File file, boolean z) {
        File file2 = new File(file, str + ".lck");
        this.f4538b = file2;
        this.f4539c = m31213a(file2.getAbsolutePath());
        this.f4540d = z;
    }

    /* renamed from: a */
    private static Lock m31213a(String str) {
        Lock lock;
        Map<String, Lock> map = f4537a;
        synchronized (map) {
            Lock lock2 = map.get(str);
            lock = lock2;
            if (lock2 == null) {
                lock = new ReentrantLock();
                map.put(str, lock);
            }
        }
        return lock;
    }

    /* renamed from: b */
    public void m31212b() {
        this.f4539c.lock();
        if (this.f4540d) {
            try {
                FileChannel channel = new FileOutputStream(this.f4538b).getChannel();
                this.f4541e = channel;
                channel.lock();
            } catch (IOException e) {
                throw new IllegalStateException("Unable to grab copy lock.", e);
            }
        }
    }

    /* renamed from: c */
    public void m31211c() {
        FileChannel fileChannel = this.f4541e;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException e) {
            }
        }
        this.f4539c.unlock();
    }
}
