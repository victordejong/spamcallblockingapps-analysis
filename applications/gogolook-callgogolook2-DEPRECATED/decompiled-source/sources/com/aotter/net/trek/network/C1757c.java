package com.aotter.net.trek.network;

import android.graphics.Bitmap;
import androidx.collection.LruCache;
/* renamed from: com.aotter.net.trek.network.c */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/c.class */
public final class C1757c extends LruCache<String, Bitmap> {
    public C1757c(int i) {
        super(i);
    }

    /* renamed from: a */
    public int m36332a(String str, Bitmap bitmap) {
        return bitmap != null ? bitmap.getRowBytes() * bitmap.getHeight() : super.sizeOf(str, bitmap);
    }
}
