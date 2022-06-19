package p088f1;

import com.google.android.gms.internal.ads.C1676a;
import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: f1.a */
/* loaded from: classes-dex2jar.jar:f1/a.class */
public class C2708a {

    /* renamed from: e */
    public static final Map<String, Lock> f9299e = new HashMap();

    /* renamed from: a */
    public final File f9300a;

    /* renamed from: b */
    public final Lock f9301b;

    /* renamed from: c */
    public final boolean f9302c;

    /* renamed from: d */
    public FileChannel f9303d;

    public C2708a(String str, File file, boolean z) {
        Lock lock;
        File file2 = new File(file, C1676a.m4789h(str, ".lck"));
        this.f9300a = file2;
        String absolutePath = file2.getAbsolutePath();
        Map<String, Lock> map = f9299e;
        synchronized (map) {
            Lock lock2 = (Lock) ((HashMap) map).get(absolutePath);
            lock = lock2;
            if (lock2 == null) {
                lock = new ReentrantLock();
                ((HashMap) map).put(absolutePath, lock);
            }
        }
        this.f9301b = lock;
        this.f9302c = z;
    }

    /* renamed from: a */
    public void m3218a() {
        FileChannel fileChannel = this.f9303d;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException e) {
            }
        }
        this.f9301b.unlock();
    }
}
