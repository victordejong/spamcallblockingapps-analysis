package p081h.p119d.p120a.p149y;

import android.util.Log;
import java.util.Queue;
/* renamed from: h.d.a.y.a */
/* loaded from: classes-dex2jar.jar:h/d/a/y/a.class */
public final class C6089a {

    /* renamed from: b */
    public static final C6089a f15140b = new C6089a();

    /* renamed from: a */
    public final Queue<byte[]> f15141a = C6096h.m23864a(0);

    /* renamed from: b */
    public static C6089a m23886b() {
        return f15140b;
    }

    /* renamed from: a */
    public boolean m23887a(byte[] bArr) {
        boolean z = false;
        if (bArr.length != 65536) {
            return false;
        }
        synchronized (this.f15141a) {
            if (this.f15141a.size() < 32) {
                z = true;
                this.f15141a.offer(bArr);
            }
        }
        return z;
    }

    /* renamed from: a */
    public byte[] m23888a() {
        byte[] poll;
        synchronized (this.f15141a) {
            poll = this.f15141a.poll();
        }
        byte[] bArr = poll;
        if (poll == null) {
            bArr = new byte[65536];
            Log.isLoggable("ByteArrayPool", 3);
        }
        return bArr;
    }
}
