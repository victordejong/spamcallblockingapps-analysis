package p193e.p1485h.p1486a.p1493c.p1511z0;

import android.graphics.Bitmap;
import android.util.LruCache;
/* renamed from: e.h.a.c.z0.b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/z0/b.class */
public class C22898b extends LruCache<String, Bitmap> {
    public C22898b(int i) {
        super(i);
    }

    @Override // android.util.LruCache
    public int sizeOf(String str, Bitmap bitmap) {
        return bitmap.getByteCount() / 1024;
    }
}
