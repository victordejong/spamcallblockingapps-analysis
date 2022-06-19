package com.callerid.block.p039g;

import android.graphics.Bitmap;
import android.util.LruCache;
/* renamed from: com.callerid.block.g.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/g/a.class */
public class C0960a {

    /* renamed from: d */
    private static C0960a f4383d;

    /* renamed from: a */
    private final int f4384a;

    /* renamed from: b */
    private final int f4385b;

    /* renamed from: c */
    private LruCache<String, Bitmap> f4386c;

    private C0960a() {
        int maxMemory = (int) (Runtime.getRuntime().maxMemory() / 1024);
        this.f4384a = maxMemory;
        int i = maxMemory / 8;
        this.f4385b = i;
        this.f4386c = new LruCache<>(i);
    }

    /* renamed from: b */
    public static C0960a m10450b() {
        if (f4383d == null) {
            f4383d = new C0960a();
        }
        return f4383d;
    }

    /* renamed from: a */
    public Bitmap m10451a(String str) {
        return this.f4386c.get(str);
    }

    /* renamed from: c */
    public void m10449c(String str, Bitmap bitmap) {
        this.f4386c.put(str, bitmap);
    }
}
