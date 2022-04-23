package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dw.class */
public final class dw extends NativeAd.Image {

    /* renamed from: a  reason: collision with root package name */
    private final dr f27286a;

    /* renamed from: b  reason: collision with root package name */
    private final Drawable f27287b;

    /* renamed from: c  reason: collision with root package name */
    private final Uri f27288c;

    /* renamed from: d  reason: collision with root package name */
    private final double f27289d;
    private final int e;
    private final int f;

    /* JADX WARN: Can't wrap try/catch for region: R(19:2|27|3|(15:5|9|29|10|13|35|14|17|33|18|21|31|22|25|26)|8|9|29|10|13|35|14|17|33|18|21|31|22|25|26) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005a, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007c, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0099, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009a, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public dw(com.google.android.gms.internal.ads.dr r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f27286a = r1
            r0 = 0
            r6 = r0
            r0 = r5
            com.google.android.gms.dynamic.b r0 = r0.a()     // Catch: RemoteException -> 0x0021
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0028
            r0 = r5
            java.lang.Object r0 = com.google.android.gms.dynamic.d.a(r0)     // Catch: RemoteException -> 0x0021
            android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0     // Catch: RemoteException -> 0x0021
            r5 = r0
            goto L_0x002a
        L_0x0021:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.za.zzc(r0, r1)
        L_0x0028:
            r0 = 0
            r5 = r0
        L_0x002a:
            r0 = r4
            r1 = r5
            r0.f27287b = r1
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f27286a     // Catch: RemoteException -> 0x003c
            android.net.Uri r0 = r0.b()     // Catch: RemoteException -> 0x003c
            r5 = r0
            goto L_0x0045
        L_0x003c:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.za.zzc(r0, r1)
            r0 = r6
            r5 = r0
        L_0x0045:
            r0 = r4
            r1 = r5
            r0.f27288c = r1
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r7 = r0
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f27286a     // Catch: RemoteException -> 0x005a
            double r0 = r0.c()     // Catch: RemoteException -> 0x005a
            r9 = r0
            goto L_0x0064
        L_0x005a:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.za.zzc(r0, r1)
            r0 = r7
            r9 = r0
        L_0x0064:
            r0 = r4
            r1 = r9
            r0.f27289d = r1
            r0 = -1
            r11 = r0
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f27286a     // Catch: RemoteException -> 0x007b
            int r0 = r0.d()     // Catch: RemoteException -> 0x007b
            r12 = r0
            goto L_0x0085
        L_0x007b:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.za.zzc(r0, r1)
            r0 = -1
            r12 = r0
        L_0x0085:
            r0 = r4
            r1 = r12
            r0.e = r1
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f27286a     // Catch: RemoteException -> 0x0099
            int r0 = r0.e()     // Catch: RemoteException -> 0x0099
            r12 = r0
            goto L_0x00a4
        L_0x0099:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.za.zzc(r0, r1)
            r0 = r11
            r12 = r0
        L_0x00a4:
            r0 = r4
            r1 = r12
            r0.f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dw.<init>(com.google.android.gms.internal.ads.dr):void");
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable getDrawable() {
        return this.f27287b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getHeight() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double getScale() {
        return this.f27289d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri getUri() {
        return this.f27288c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getWidth() {
        return this.e;
    }
}
