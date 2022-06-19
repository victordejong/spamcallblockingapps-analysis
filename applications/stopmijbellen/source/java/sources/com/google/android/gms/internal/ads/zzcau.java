package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.nativead.NativeAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcau.class */
public final class zzcau extends NativeAd.Image {
    private final zzboi zza;
    private final Drawable zzb;
    private final Uri zzc;
    private final double zzd;

    /* JADX WARN: Can't wrap try/catch for region: R(15:2|26|3|(4:(13:5|9|30|10|13|34|14|17|28|18|32|21|22)|32|21|22)|8|9|30|10|13|34|14|17|28|18|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(18:2|26|3|(13:5|9|30|10|13|34|14|17|28|18|32|21|22)|8|9|30|10|13|34|14|17|28|18|32|21|22|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        com.google.android.gms.internal.ads.zzciz.zzh("", r5);
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0058, code lost:
        com.google.android.gms.internal.ads.zzciz.zzh("", r5);
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0073, code lost:
        com.google.android.gms.internal.ads.zzciz.zzh("", r5);
     */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcau(com.google.android.gms.internal.ads.zzboi r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.zza = r1
            r0 = 0
            r6 = r0
            r0 = r5
            com.google.android.gms.dynamic.IObjectWrapper r0 = r0.zzf()     // Catch: android.os.RemoteException -> L21
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L28
            r0 = r5
            java.lang.Object r0 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r0)     // Catch: android.os.RemoteException -> L21
            android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0     // Catch: android.os.RemoteException -> L21
            r5 = r0
            goto L2a
        L21:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzciz.zzh(r0, r1)
        L28:
            r0 = 0
            r5 = r0
        L2a:
            r0 = r4
            r1 = r5
            r0.zzb = r1
            r0 = r4
            com.google.android.gms.internal.ads.zzboi r0 = r0.zza     // Catch: android.os.RemoteException -> L3c
            android.net.Uri r0 = r0.zze()     // Catch: android.os.RemoteException -> L3c
            r5 = r0
            goto L45
        L3c:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzciz.zzh(r0, r1)
            r0 = r6
            r5 = r0
        L45:
            r0 = r4
            r1 = r5
            r0.zzc = r1
            r0 = r4
            com.google.android.gms.internal.ads.zzboi r0 = r0.zza     // Catch: android.os.RemoteException -> L57
            double r0 = r0.zzb()     // Catch: android.os.RemoteException -> L57
            r7 = r0
            goto L60
        L57:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzciz.zzh(r0, r1)
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r7 = r0
        L60:
            r0 = r4
            r1 = r7
            r0.zzd = r1
            r0 = r4
            com.google.android.gms.internal.ads.zzboi r0 = r0.zza     // Catch: android.os.RemoteException -> L72
            int r0 = r0.zzd()     // Catch: android.os.RemoteException -> L72
            goto L79
        L72:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzciz.zzh(r0, r1)
        L79:
            r0 = r4
            com.google.android.gms.internal.ads.zzboi r0 = r0.zza     // Catch: android.os.RemoteException -> L84
            int r0 = r0.zzc()     // Catch: android.os.RemoteException -> L84
            return
        L84:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzciz.zzh(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcau.<init>(com.google.android.gms.internal.ads.zzboi):void");
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Drawable getDrawable() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final double getScale() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Uri getUri() {
        return this.zzc;
    }
}
