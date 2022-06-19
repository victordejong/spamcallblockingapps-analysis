package com.bumptech.glide.load.p083c.p084a;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.AbstractC1766p;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.p077h.C1456i;
import com.bumptech.glide.p077h.C1457j;
/* renamed from: com.bumptech.glide.load.c.a.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/d.class */
public class C1583d implements AbstractC1766p, AbstractC1771t<Bitmap> {

    /* renamed from: a */
    private final Bitmap f4957a;

    /* renamed from: b */
    private final AbstractC1678e f4958b;

    public C1583d(Bitmap bitmap, AbstractC1678e abstractC1678e) {
        this.f4957a = (Bitmap) C1456i.m16988a(bitmap, "Bitmap must not be null");
        this.f4958b = (AbstractC1678e) C1456i.m16988a(abstractC1678e, "BitmapPool must not be null");
    }

    /* renamed from: a */
    public static C1583d m16797a(Bitmap bitmap, AbstractC1678e abstractC1678e) {
        return bitmap == null ? null : new C1583d(bitmap, abstractC1678e);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1766p
    /* renamed from: a */
    public void mo16362a() {
        this.f4957a.prepareToDraw();
    }

    /* renamed from: b */
    public Bitmap mo16347d() {
        return this.f4957a;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: c */
    public Class<Bitmap> mo16348c() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: e */
    public int mo16346e() {
        return C1457j.m16977a(this.f4957a);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: f */
    public void mo16345f() {
        this.f4958b.mo16540a(this.f4957a);
    }
}
