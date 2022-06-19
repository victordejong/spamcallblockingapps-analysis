package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.util.LruCache;
/* renamed from: e.h.a.c.q0.y */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/y.class */
public class C22808y extends LruCache<String, byte[]> {
    public C22808y(int i) {
        super(i);
    }

    @Override // android.util.LruCache
    public int sizeOf(String str, byte[] bArr) {
        return bArr.length / 1024;
    }
}
