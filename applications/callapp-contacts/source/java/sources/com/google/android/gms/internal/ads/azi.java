package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azi.class */
public final class azi extends anp {

    /* renamed from: a */
    final aom f43344a;

    /* renamed from: b */
    private final Context f43345b;

    /* renamed from: c */
    private final WeakReference<adt> f43346c;

    /* renamed from: d */
    private final axv f43347d;

    /* renamed from: e */
    private final bap f43348e;

    /* renamed from: f */
    private final cvm f43349f;

    /* renamed from: g */
    private final ars f43350g;

    /* renamed from: n */
    private boolean f43351n = false;

    public azi(ans ansVar, Context context, adt adtVar, axv axvVar, bap bapVar, aom aomVar, cvm cvmVar, ars arsVar) {
        super(ansVar);
        this.f43345b = context;
        this.f43346c = new WeakReference<>(adtVar);
        this.f43347d = axvVar;
        this.f43348e = bapVar;
        this.f43344a = aomVar;
        this.f43349f = cvmVar;
        this.f43350g = arsVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /* JADX WARN: Type inference failed for: r0v20, types: [android.content.Context] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m18309a(boolean r5, android.app.Activity r6) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C12187aq.f42678ao
            r7 = r0
            com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.m14831e()
            r1 = r7
            java.lang.Object r0 = r0.m18571a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L59
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkv()
            r0 = r4
            android.content.Context r0 = r0.f43345b
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzat(r0)
            if (r0 == 0) goto L59
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.ads.internal.util.zzd.zzez(r0)
            r0 = r4
            com.google.android.gms.internal.ads.ars r0 = r0.f43350g
            r0.mo17685a()
            com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C12187aq.f42679ap
            r7 = r0
            com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.m14831e()
            r1 = r7
            java.lang.Object r0 = r0.m18571a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L66
            r0 = r4
            com.google.android.gms.internal.ads.cvm r0 = r0.f43349f
            r1 = r4
            com.google.android.gms.internal.ads.cpk r1 = r1.f42486h
            com.google.android.gms.internal.ads.cpi r1 = r1.f46319b
            com.google.android.gms.internal.ads.coz r1 = r1.f46314b
            java.lang.String r1 = r1.f46290b
            r0.m17163a(r1)
            goto L66
        L59:
            r0 = r4
            boolean r0 = r0.f43351n
            if (r0 != 0) goto L66
            r0 = 1
            r8 = r0
            goto L69
        L66:
            r0 = 0
            r8 = r0
        L69:
            r0 = r8
            if (r0 != 0) goto L70
            r0 = 0
            return r0
        L70:
            r0 = r4
            com.google.android.gms.internal.ads.axv r0 = r0.f43347d
            r0.m18331a()
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L82
            r0 = r4
            android.content.Context r0 = r0.f43345b
            r7 = r0
        L82:
            r0 = r4
            com.google.android.gms.internal.ads.bap r0 = r0.f43348e     // Catch: com.google.android.gms.internal.ads.zzcbq -> L9b
            r1 = r5
            r2 = r7
            r0.mo17566a(r1, r2)     // Catch: com.google.android.gms.internal.ads.zzcbq -> L9b
            r0 = r4
            com.google.android.gms.internal.ads.axv r0 = r0.f43347d     // Catch: com.google.android.gms.internal.ads.zzcbq -> L9b
            r0.m18330b()     // Catch: com.google.android.gms.internal.ads.zzcbq -> L9b
            r0 = r4
            r1 = 1
            r0.f43351n = r1
            r0 = 1
            return r0
        L9b:
            r6 = move-exception
            r0 = r4
            com.google.android.gms.internal.ads.ars r0 = r0.f43350g
            r1 = r6
            r0.mo17683a(r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.azi.m18309a(boolean, android.app.Activity):boolean");
    }

    public final void finalize() throws Throwable {
        try {
            adt adtVar = this.f43346c.get();
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42886ek)).booleanValue()) {
                if (!this.f43351n && adtVar != null) {
                    dbs dbsVar = C13091zd.f50122e;
                    adtVar.getClass();
                    dbsVar.execute(azh.m18310a(adtVar));
                }
            } else if (adtVar != null) {
                adtVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}
