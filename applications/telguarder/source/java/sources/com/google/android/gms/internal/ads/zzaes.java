package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaes.class */
public final class zzaes extends NativeAd.Image {
    private final int height;
    private final Uri uri;
    private final int width;
    private final double zzdfs;
    private final zzaer zzdfx;
    private final Drawable zzdfy;

    /* JADX WARN: Can't wrap try/catch for region: R(20:2|28|3|(16:5|9|32|10|13|30|14|15|18|36|19|22|34|23|26|27)|8|9|32|10|13|30|14|15|18|36|19|22|34|23|26|27) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        com.google.android.gms.internal.ads.zzazk.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005e, code lost:
        com.google.android.gms.internal.ads.zzazk.zzc("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007a, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007b, code lost:
        com.google.android.gms.internal.ads.zzazk.zzc("", r5);
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0098, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0099, code lost:
        com.google.android.gms.internal.ads.zzazk.zzc("", r5);
        r12 = -1;
     */
    /* JADX WARN: Type inference failed for: r0v23, types: [double] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzaes(com.google.android.gms.internal.ads.zzaer r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.zzdfx = r1
            r0 = 0
            r6 = r0
            r0 = r5
            com.google.android.gms.dynamic.IObjectWrapper r0 = r0.zzti()     // Catch: android.os.RemoteException -> L21
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
            com.google.android.gms.internal.ads.zzazk.zzc(r0, r1)
        L28:
            r0 = 0
            r5 = r0
        L2a:
            r0 = r4
            r1 = r5
            r0.zzdfy = r1
            r0 = r4
            com.google.android.gms.internal.ads.zzaer r0 = r0.zzdfx     // Catch: android.os.RemoteException -> L3c
            android.net.Uri r0 = r0.getUri()     // Catch: android.os.RemoteException -> L3c
            r5 = r0
            goto L45
        L3c:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzazk.zzc(r0, r1)
            r0 = r6
            r5 = r0
        L45:
            r0 = r4
            r1 = r5
            r0.uri = r1
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r7 = r0
            r0 = r4
            com.google.android.gms.internal.ads.zzaer r0 = r0.zzdfx     // Catch: android.os.RemoteException -> L5d
            double r0 = r0.getScale()     // Catch: android.os.RemoteException -> L5d
            r9 = r0
            r0 = r9
            r7 = r0
            goto L64
        L5d:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzazk.zzc(r0, r1)
        L64:
            r0 = r4
            r1 = r7
            r0.zzdfs = r1
            r0 = -1
            r11 = r0
            r0 = r4
            com.google.android.gms.internal.ads.zzaer r0 = r0.zzdfx     // Catch: android.os.RemoteException -> L7a
            int r0 = r0.getWidth()     // Catch: android.os.RemoteException -> L7a
            r12 = r0
            goto L84
        L7a:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzazk.zzc(r0, r1)
            r0 = -1
            r12 = r0
        L84:
            r0 = r4
            r1 = r12
            r0.width = r1
            r0 = r4
            com.google.android.gms.internal.ads.zzaer r0 = r0.zzdfx     // Catch: android.os.RemoteException -> L98
            int r0 = r0.getHeight()     // Catch: android.os.RemoteException -> L98
            r12 = r0
            goto La3
        L98:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.zzazk.zzc(r0, r1)
            r0 = r11
            r12 = r0
        La3:
            r0 = r4
            r1 = r12
            r0.height = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaes.<init>(com.google.android.gms.internal.ads.zzaer):void");
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable getDrawable() {
        return this.zzdfy;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getHeight() {
        return this.height;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double getScale() {
        return this.zzdfs;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getWidth() {
        return this.width;
    }
}
