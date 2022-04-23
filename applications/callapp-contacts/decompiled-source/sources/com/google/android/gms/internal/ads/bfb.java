package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfb.class */
public final class bfb implements cxu<emg, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ double f24310a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ boolean f24311b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ bey f24312c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bfb(bey beyVar, double d2, boolean z) {
        this.f24312c = beyVar;
        this.f24310a = d2;
        this.f24311b = z;
    }

    @Override // com.google.android.gms.internal.ads.cxu
    public final /* synthetic */ Bitmap a(emg emgVar) {
        bey beyVar = this.f24312c;
        byte[] bArr = emgVar.f27949b;
        double d2 = this.f24310a;
        boolean z = this.f24311b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d2 * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) ekb.e().a(aq.dJ)).booleanValue()) {
            options.inJustDecodeBounds = true;
            beyVar.a(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) ekb.e().a(aq.dK)).intValue())) / 2);
            }
        }
        return beyVar.a(bArr, options);
    }
}
