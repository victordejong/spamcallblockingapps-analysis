package it.gmariotti.cardslib.library.b;

import android.graphics.Bitmap;
import android.util.LruCache;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/b/a.class */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static a f36383b;

    /* renamed from: a  reason: collision with root package name */
    protected LruCache<String, Bitmap> f36384a;

    protected a() {
    }

    public static LruCache<String, Bitmap> a() {
        return b().f36384a;
    }

    public static void a(LruCache<String, Bitmap> lruCache) {
        b().f36384a = lruCache;
    }

    private static a b() {
        a aVar = f36383b;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        f36383b = aVar2;
        return aVar2;
    }
}
