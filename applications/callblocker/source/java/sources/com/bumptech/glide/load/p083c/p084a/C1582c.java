package com.bumptech.glide.load.p083c.p084a;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC1783j;
import com.bumptech.glide.load.C1778g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1578c;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
/* renamed from: com.bumptech.glide.load.c.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/c.class */
public class C1582c implements AbstractC1783j<Bitmap> {

    /* renamed from: a */
    public static final C1778g<Integer> f4954a = C1778g.m16329a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: b */
    public static final C1778g<Bitmap.CompressFormat> f4955b = C1778g.m16330a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    /* renamed from: c */
    private final AbstractC1673b f4956c;

    @Deprecated
    public C1582c() {
        this.f4956c = null;
    }

    public C1582c(AbstractC1673b abstractC1673b) {
        this.f4956c = abstractC1673b;
    }

    /* renamed from: a */
    private Bitmap.CompressFormat m16799a(Bitmap bitmap, C1781h c1781h) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) c1781h.m16324a(f4955b);
        return compressFormat != null ? compressFormat : bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    @Override // com.bumptech.glide.load.AbstractC1783j
    /* renamed from: a */
    public EnumC1578c mo16317a(C1781h c1781h) {
        return EnumC1578c.TRANSFORMED;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00ac A[Catch: all -> 0x0144, TryCatch #2 {all -> 0x0144, blocks: (B:3:0x002b, B:4:0x003f, B:21:0x009b, B:23:0x00a3, B:25:0x00ac, B:26:0x00fe, B:39:0x0125, B:47:0x013e, B:49:0x0143), top: B:63:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo16612a(com.bumptech.glide.load.engine.AbstractC1771t<android.graphics.Bitmap> r6, java.io.File r7, com.bumptech.glide.load.C1781h r8) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.p083c.p084a.C1582c.mo16612a(com.bumptech.glide.load.engine.t, java.io.File, com.bumptech.glide.load.h):boolean");
    }
}
