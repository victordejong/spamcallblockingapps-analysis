package it.gmariotti.cardslib.library.p512b;

import android.graphics.Bitmap;
import android.util.LruCache;
/* renamed from: it.gmariotti.cardslib.library.b.a */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/b/a.class */
public final class C18101a {

    /* renamed from: b */
    private static C18101a f63044b;

    /* renamed from: a */
    protected LruCache<String, Bitmap> f63045a;

    protected C18101a() {
    }

    /* renamed from: a */
    public static LruCache<String, Bitmap> m4440a() {
        return m4438b().f63045a;
    }

    /* renamed from: a */
    public static void m4439a(LruCache<String, Bitmap> lruCache) {
        m4438b().f63045a = lruCache;
    }

    /* renamed from: b */
    private static C18101a m4438b() {
        C18101a c18101a = f63044b;
        if (c18101a != null) {
            return c18101a;
        }
        C18101a c18101a2 = new C18101a();
        f63044b = c18101a2;
        return c18101a2;
    }
}
