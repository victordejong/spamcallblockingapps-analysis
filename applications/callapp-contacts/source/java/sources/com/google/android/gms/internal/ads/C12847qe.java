package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.nativead.NativeAd;
/* renamed from: com.google.android.gms.internal.ads.qe */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qe.class */
public final class C12847qe extends NativeAd.Image {

    /* renamed from: a */
    private final AbstractC12394dr f49728a;

    /* renamed from: b */
    private final Drawable f49729b;

    /* renamed from: c */
    private final Uri f49730c;

    /* renamed from: d */
    private final double f49731d;

    /* renamed from: e */
    private final int f49732e;

    /* renamed from: f */
    private final int f49733f;

    /* JADX WARN: Can't wrap try/catch for region: R(20:2|28|3|(16:5|9|32|10|13|30|14|15|18|36|19|22|34|23|26|27)|8|9|32|10|13|30|14|15|18|36|19|22|34|23|26|27) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005e, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007a, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007b, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0098, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0099, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r12 = -1;
     */
    /* JADX WARN: Type inference failed for: r0v23, types: [double] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C12847qe(com.google.android.gms.internal.ads.AbstractC12394dr r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f49728a = r1
            r0 = 0
            r6 = r0
            r0 = r5
            com.google.android.gms.dynamic.b r0 = r0.mo15752a()     // Catch: android.os.RemoteException -> L21
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L28
            r0 = r5
            java.lang.Object r0 = com.google.android.gms.dynamic.BinderC12129d.m18980a(r0)     // Catch: android.os.RemoteException -> L21
            android.graphics.drawable.Drawable r0 = (android.graphics.drawable.Drawable) r0     // Catch: android.os.RemoteException -> L21
            r5 = r0
            goto L2a
        L21:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.C13088za.zzc(r0, r1)
        L28:
            r0 = 0
            r5 = r0
        L2a:
            r0 = r4
            r1 = r5
            r0.f49729b = r1
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f49728a     // Catch: android.os.RemoteException -> L3c
            android.net.Uri r0 = r0.mo15751b()     // Catch: android.os.RemoteException -> L3c
            r5 = r0
            goto L45
        L3c:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.C13088za.zzc(r0, r1)
            r0 = r6
            r5 = r0
        L45:
            r0 = r4
            r1 = r5
            r0.f49730c = r1
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r7 = r0
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f49728a     // Catch: android.os.RemoteException -> L5d
            double r0 = r0.mo15750c()     // Catch: android.os.RemoteException -> L5d
            r9 = r0
            r0 = r9
            r7 = r0
            goto L64
        L5d:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.C13088za.zzc(r0, r1)
        L64:
            r0 = r4
            r1 = r7
            r0.f49731d = r1
            r0 = -1
            r11 = r0
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f49728a     // Catch: android.os.RemoteException -> L7a
            int r0 = r0.mo15749d()     // Catch: android.os.RemoteException -> L7a
            r12 = r0
            goto L84
        L7a:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.C13088za.zzc(r0, r1)
            r0 = -1
            r12 = r0
        L84:
            r0 = r4
            r1 = r12
            r0.f49732e = r1
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f49728a     // Catch: android.os.RemoteException -> L98
            int r0 = r0.mo15748e()     // Catch: android.os.RemoteException -> L98
            r12 = r0
            goto La3
        L98:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.C13088za.zzc(r0, r1)
            r0 = r11
            r12 = r0
        La3:
            r0 = r4
            r1 = r12
            r0.f49733f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12847qe.<init>(com.google.android.gms.internal.ads.dr):void");
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Drawable getDrawable() {
        return this.f49729b;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final double getScale() {
        return this.f49731d;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final Uri getUri() {
        return this.f49730c;
    }
}
