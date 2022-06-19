package p193e.p1485h.p1486a.p1493c.p1511z0;

import android.graphics.Bitmap;
import android.util.LruCache;
/* renamed from: e.h.a.c.z0.c */
/* loaded from: classes-dex2jar.jar:e/h/a/c/z0/c.class */
public class C22899c {

    /* renamed from: a */
    public static final int f63562a;

    /* renamed from: b */
    public static final int f63563b;

    /* renamed from: c */
    public static LruCache<String, Bitmap> f63564c;

    static {
        int maxMemory = ((int) Runtime.getRuntime().maxMemory()) / 1024;
        f63562a = maxMemory;
        f63563b = Math.max(maxMemory / 32, 20480);
    }

    /* renamed from: a */
    public static int m7634a() {
        int size;
        synchronized (C22899c.class) {
            try {
                LruCache<String, Bitmap> lruCache = f63564c;
                size = lruCache == null ? 0 : f63563b - lruCache.size();
            } catch (Throwable th) {
                throw th;
            }
        }
        return size;
    }
}
