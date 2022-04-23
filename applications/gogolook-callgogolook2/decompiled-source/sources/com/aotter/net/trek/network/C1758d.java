package com.aotter.net.trek.network;

import android.graphics.Bitmap;
import androidx.collection.LruCache;
import com.aotter.net.volley.toolbox.ImageLoader;
/* renamed from: com.aotter.net.trek.network.d */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/d.class */
public final class C1758d implements ImageLoader.ImageCache {

    /* renamed from: a */
    public final /* synthetic */ LruCache f1569a;

    public C1758d(LruCache lruCache) {
        this.f1569a = lruCache;
    }

    @Override // com.aotter.net.volley.toolbox.ImageLoader.ImageCache
    public Bitmap getBitmap(String str) {
        return (Bitmap) this.f1569a.get(str);
    }

    @Override // com.aotter.net.volley.toolbox.ImageLoader.ImageCache
    public void putBitmap(String str, Bitmap bitmap) {
        this.f1569a.put(str, bitmap);
    }
}
