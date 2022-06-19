package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
/* renamed from: com.google.android.gms.internal.ads.dw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dw.class */
public final class C12430dw extends NativeAd.Image {

    /* renamed from: a */
    private final AbstractC12394dr f47761a;

    /* renamed from: b */
    private final Drawable f47762b;

    /* renamed from: c */
    private final Uri f47763c;

    /* renamed from: d */
    private final double f47764d;

    /* renamed from: e */
    private final int f47765e;

    /* renamed from: f */
    private final int f47766f;

    /* JADX WARN: Can't wrap try/catch for region: R(19:2|27|3|(15:5|9|29|10|13|35|14|17|33|18|21|31|22|25|26)|8|9|29|10|13|35|14|17|33|18|21|31|22|25|26) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005a, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007c, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0099, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009a, code lost:
        com.google.android.gms.internal.ads.C13088za.zzc("", r5);
        r12 = -1;
     */
    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C12430dw(com.google.android.gms.internal.ads.AbstractC12394dr r5) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r5
            r0.f47761a = r1
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
            r0.f47762b = r1
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f47761a     // Catch: android.os.RemoteException -> L3c
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
            r0.f47763c = r1
            r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r7 = r0
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f47761a     // Catch: android.os.RemoteException -> L5a
            double r0 = r0.mo15750c()     // Catch: android.os.RemoteException -> L5a
            r9 = r0
            goto L64
        L5a:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.C13088za.zzc(r0, r1)
            r0 = r7
            r9 = r0
        L64:
            r0 = r4
            r1 = r9
            r0.f47764d = r1
            r0 = -1
            r11 = r0
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f47761a     // Catch: android.os.RemoteException -> L7b
            int r0 = r0.mo15749d()     // Catch: android.os.RemoteException -> L7b
            r12 = r0
            goto L85
        L7b:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.C13088za.zzc(r0, r1)
            r0 = -1
            r12 = r0
        L85:
            r0 = r4
            r1 = r12
            r0.f47765e = r1
            r0 = r4
            com.google.android.gms.internal.ads.dr r0 = r0.f47761a     // Catch: android.os.RemoteException -> L99
            int r0 = r0.mo15748e()     // Catch: android.os.RemoteException -> L99
            r12 = r0
            goto La4
        L99:
            r5 = move-exception
            java.lang.String r0 = ""
            r1 = r5
            com.google.android.gms.internal.ads.C13088za.zzc(r0, r1)
            r0 = r11
            r12 = r0
        La4:
            r0 = r4
            r1 = r12
            r0.f47766f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12430dw.<init>(com.google.android.gms.internal.ads.dr):void");
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable getDrawable() {
        return this.f47762b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getHeight() {
        return this.f47766f;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double getScale() {
        return this.f47764d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri getUri() {
        return this.f47763c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int getWidth() {
        return this.f47765e;
    }
}
