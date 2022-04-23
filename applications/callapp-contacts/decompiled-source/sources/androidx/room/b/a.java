package androidx.room.b;

import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes-dex2jar.jar:androidx/room/b/a.class */
public final class a {
    private static final Map<String, Lock> e = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    public final File f5515a;

    /* renamed from: b  reason: collision with root package name */
    public final Lock f5516b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f5517c;

    /* renamed from: d  reason: collision with root package name */
    public FileChannel f5518d;

    public a(String str, File file, boolean z) {
        File file2 = new File(file, str + ".lck");
        this.f5515a = file2;
        this.f5516b = a(file2.getAbsolutePath());
        this.f5517c = z;
    }

    private static Lock a(String str) {
        Lock lock;
        Map<String, Lock> map = e;
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

    public final void a() {
        FileChannel fileChannel = this.f5518d;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException e2) {
            }
        }
        this.f5516b.unlock();
    }
}
