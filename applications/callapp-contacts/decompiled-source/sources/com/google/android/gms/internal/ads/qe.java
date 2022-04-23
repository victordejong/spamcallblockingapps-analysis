package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.nativead.NativeAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qe.class */
public final class qe extends NativeAd.Image {

    /* renamed from: a  reason: collision with root package name */
    private final dr f28325a;

    /* renamed from: b  reason: collision with root package name */
    private final Drawable f28326b;

    /* renamed from: c  reason: collision with root package name */
    private final Uri f28327c;

    /* renamed from: d  reason: collision with root package name */
    private final double f28328d;
    private final int e;
    private final int f;

    /* JADX WARN: Can't wrap try/catch for region: R(20:2|28|3|(16:5|9|32|10|13|30|14|15|18|36|19|22|34|23|26|27)|8|9|32|10|13|30|14|15|18|36|19|22|34|23|26|27) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005e, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007a, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007b, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0098, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0099, code lost:
        com.google.android.gms.internal.ads.za.zzc("", r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public qe(com.google.android.gms.internal.ads.dr r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f28325a = r1
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
            r0.f28326b = r1
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f28325a     // Catch: RemoteException -> 0x003c
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
            r0.f28327c = r1
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r7 = r0
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f28325a     // Catch: RemoteException -> 0x005d
            double r0 = r0.c()     // Catch: RemoteException -> 0x005d
            r9 = r0
            r0 = r9
            r7 = r0
            goto L_0x0064
        L_0x005d:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.za.zzc(r0, r1)
        L_0x0064:
            r0 = r4
            r1 = r7
            r0.f28328d = r1
            r0 = -1
            r11 = r0
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f28325a     // Catch: RemoteException -> 0x007a
            int r0 = r0.d()     // Catch: RemoteException -> 0x007a
            r12 = r0
            goto L_0x0084
        L_0x007a:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.za.zzc(r0, r1)
            r0 = -1
            r12 = r0
        L_0x0084:
            r0 = r4
            r1 = r12
            r0.e = r1
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f28325a     // Catch: RemoteException -> 0x0098
            int r0 = r0.e()     // Catch: RemoteException -> 0x0098
            r12 = r0
            goto L_0x00a3
        L_0x0098:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.za.zzc(r0, r1)
            r0 = r11
            r12 = r0
        L_0x00a3:
            r0 = r4
            r1 = r12
            r0.f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qe.<init>(com.google.android.gms.internal.ads.dr):void");
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Drawable getDrawable() {
        return this.f28326b;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final double getScale() {
        return this.f28328d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Uri getUri() {
        return this.f28327c;
    }
}
