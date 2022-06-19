package com.bumptech.glide.load.p083c.p084a;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.p077h.C1457j;
/* renamed from: com.bumptech.glide.load.c.a.w */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/w.class */
public final class C1619w implements AbstractC1782i<Bitmap, Bitmap> {

    /* renamed from: com.bumptech.glide.load.c.a.w$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/w$a.class */
    public static final class C1620a implements AbstractC1771t<Bitmap> {

        /* renamed from: a */
        private final Bitmap f5019a;

        C1620a(Bitmap bitmap) {
            this.f5019a = bitmap;
        }

        /* renamed from: a */
        public Bitmap mo16347d() {
            return this.f5019a;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1771t
        /* renamed from: c */
        public Class<Bitmap> mo16348c() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1771t
        /* renamed from: e */
        public int mo16346e() {
            return C1457j.m16977a(this.f5019a);
        }

        @Override // com.bumptech.glide.load.engine.AbstractC1771t
        /* renamed from: f */
        public void mo16345f() {
        }
    }

    /* renamed from: a */
    public AbstractC1771t<Bitmap> mo16319a(Bitmap bitmap, int i, int i2, C1781h c1781h) {
        return new C1620a(bitmap);
    }

    /* renamed from: a */
    public boolean mo16318a(Bitmap bitmap, C1781h c1781h) {
        return true;
    }
}
