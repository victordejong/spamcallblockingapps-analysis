package androidx.room.p081b;

import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: androidx.room.b.a */
/* loaded from: classes-dex2jar.jar:androidx/room/b/a.class */
public final class C2719a {

    /* renamed from: e */
    private static final Map<String, Lock> f10336e = new HashMap();

    /* renamed from: a */
    public final File f10337a;

    /* renamed from: b */
    public final Lock f10338b;

    /* renamed from: c */
    public final boolean f10339c;

    /* renamed from: d */
    public FileChannel f10340d;

    public C2719a(String str, File file, boolean z) {
        File file2 = new File(file, str + ".lck");
        this.f10337a = file2;
        this.f10338b = m40001a(file2.getAbsolutePath());
        this.f10339c = z;
    }

    /* renamed from: a */
    private static Lock m40001a(String str) {
        Lock lock;
        Map<String, Lock> map = f10336e;
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

    /* renamed from: a */
    public final void m40003a() {
        FileChannel fileChannel = this.f10340d;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException e) {
            }
        }
        this.f10338b.unlock();
    }
}
