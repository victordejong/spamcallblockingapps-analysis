package p1727n3.p1751c0.p1754h0;

import java.io.File;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.c0.h0.a */
/* loaded from: classes-dex2jar.jar:n3/c0/h0/a.class */
public class C25652a {

    /* renamed from: e */
    public static final Map<String, Lock> f71857e = new HashMap();

    /* renamed from: a */
    public final File f71858a;

    /* renamed from: b */
    public final Lock f71859b;

    /* renamed from: c */
    public final boolean f71860c;

    /* renamed from: d */
    public FileChannel f71861d;

    public C25652a(String str, File file, boolean z) {
        Lock lock;
        File file2 = new File(file, C22128a.m8543z2(str, ".lck"));
        this.f71858a = file2;
        String absolutePath = file2.getAbsolutePath();
        Map<String, Lock> map = f71857e;
        synchronized (map) {
            Lock lock2 = map.get(absolutePath);
            lock = lock2;
            if (lock2 == null) {
                lock = new ReentrantLock();
                map.put(absolutePath, lock);
            }
        }
        this.f71859b = lock;
        this.f71860c = z;
    }

    /* renamed from: a */
    public void m3092a() {
        FileChannel fileChannel = this.f71861d;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException e) {
            }
        }
        this.f71859b.unlock();
    }
}
