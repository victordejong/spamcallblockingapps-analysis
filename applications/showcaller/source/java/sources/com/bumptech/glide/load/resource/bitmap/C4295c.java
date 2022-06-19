package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.AbstractC4147g;
import com.bumptech.glide.load.C4000d;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
/* renamed from: com.bumptech.glide.load.resource.bitmap.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/c.class */
public class C4295c implements AbstractC4147g<Bitmap> {

    /* renamed from: a */
    public static final C4000d<Integer> f13244a = C4000d.m23510f("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: b */
    public static final C4000d<Bitmap.CompressFormat> f13245b = C4000d.m23511e("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    /* renamed from: c */
    private final AbstractC4091b f13246c;

    public C4295c(AbstractC4091b abstractC4091b) {
        this.f13246c = abstractC4091b;
    }

    /* renamed from: d */
    private Bitmap.CompressFormat m22947d(Bitmap bitmap, C4032e c4032e) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) c4032e.m23457c(f13245b);
        return compressFormat != null ? compressFormat : bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    @Override // com.bumptech.glide.load.AbstractC4147g
    /* renamed from: b */
    public EncodeStrategy mo22949b(C4032e c4032e) {
        return EncodeStrategy.TRANSFORMED;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:56|3|4|(5:52|5|6|7|8)|(8:58|9|(2:11|12)|13|14|15|16|17)|54|18|34|(1:36)|37|38|39) */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e3 A[Catch: all -> 0x015b, TryCatch #4 {all -> 0x015b, blocks: (B:3:0x002b, B:18:0x009b, B:34:0x00da, B:36:0x00e3, B:37:0x0149, B:42:0x0154, B:44:0x015a), top: B:56:0x002b }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo22950a(com.bumptech.glide.load.engine.AbstractC4083s<android.graphics.Bitmap> r6, java.io.File r7, com.bumptech.glide.load.C4032e r8) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.C4295c.mo22950a(com.bumptech.glide.load.engine.s, java.io.File, com.bumptech.glide.load.e):boolean");
    }
}
