package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfb.class */
public final class bfb implements cxu<emg, Bitmap> {

    /* renamed from: a */
    private final /* synthetic */ double f43772a;

    /* renamed from: b */
    private final /* synthetic */ boolean f43773b;

    /* renamed from: c */
    private final /* synthetic */ bey f43774c;

    public bfb(bey beyVar, double d, boolean z) {
        this.f43774c = beyVar;
        this.f43772a = d;
        this.f43773b = z;
    }

    @Override // com.google.android.gms.internal.ads.cxu
    /* renamed from: a */
    public final /* synthetic */ Bitmap mo14064a(emg emgVar) {
        bey beyVar = this.f43774c;
        byte[] bArr = emgVar.f49172b;
        double d = this.f43772a;
        boolean z = this.f43773b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42806dJ)).booleanValue()) {
            options.inJustDecodeBounds = true;
            beyVar.m17891a(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) ekb.m14831e().m18571a(C12187aq.f42807dK)).intValue())) / 2);
            }
        }
        return beyVar.m17891a(bArr, options);
    }
}
