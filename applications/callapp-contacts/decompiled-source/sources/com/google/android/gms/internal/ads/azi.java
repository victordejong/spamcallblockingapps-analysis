package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azi.class */
public final class azi extends anp {

    /* renamed from: a  reason: collision with root package name */
    final aom f24030a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f24031b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<adt> f24032c;

    /* renamed from: d  reason: collision with root package name */
    private final axv f24033d;
    private final bap e;
    private final cvm f;
    private final ars g;
    private boolean n = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public azi(ans ansVar, Context context, adt adtVar, axv axvVar, bap bapVar, aom aomVar, cvm cvmVar, ars arsVar) {
        super(ansVar);
        this.f24031b = context;
        this.f24032c = new WeakReference<>(adtVar);
        this.f24033d = axvVar;
        this.e = bapVar;
        this.f24030a = aomVar;
        this.f = cvmVar;
        this.g = arsVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(boolean r5, android.app.Activity r6) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aq.ao
            r7 = r0
            com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.e()
            r1 = r7
            java.lang.Object r0 = r0.a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0059
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkv()
            r0 = r4
            android.content.Context r0 = r0.f24031b
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzat(r0)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.ads.internal.util.zzd.zzez(r0)
            r0 = r4
            com.google.android.gms.internal.ads.ars r0 = r0.g
            r0.a()
            com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aq.ap
            r7 = r0
            com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.e()
            r1 = r7
            java.lang.Object r0 = r0.a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0066
            r0 = r4
            com.google.android.gms.internal.ads.cvm r0 = r0.f
            r1 = r4
            com.google.android.gms.internal.ads.cpk r1 = r1.h
            com.google.android.gms.internal.ads.cpi r1 = r1.f26222b
            com.google.android.gms.internal.ads.coz r1 = r1.f26217b
            java.lang.String r1 = r1.f26197b
            r0.a(r1)
            goto L_0x0066
        L_0x0059:
            r0 = r4
            boolean r0 = r0.n
            if (r0 != 0) goto L_0x0066
            r0 = 1
            r8 = r0
            goto L_0x0069
        L_0x0066:
            r0 = 0
            r8 = r0
        L_0x0069:
            r0 = r8
            if (r0 != 0) goto L_0x0070
            r0 = 0
            return r0
        L_0x0070:
            r0 = r4
            com.google.android.gms.internal.ads.axv r0 = r0.f24033d
            r0.a()
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0082
            r0 = r4
            android.content.Context r0 = r0.f24031b
            r7 = r0
        L_0x0082:
            r0 = r4
            com.google.android.gms.internal.ads.bap r0 = r0.e     // Catch: zzcbq -> 0x009b
            r1 = r5
            r2 = r7
            r0.a(r1, r2)     // Catch: zzcbq -> 0x009b
            r0 = r4
            com.google.android.gms.internal.ads.axv r0 = r0.f24033d     // Catch: zzcbq -> 0x009b
            r0.b()     // Catch: zzcbq -> 0x009b
            r0 = r4
            r1 = 1
            r0.n = r1
            r0 = 1
            return r0
        L_0x009b:
            r6 = move-exception
            r0 = r4
            com.google.android.gms.internal.ads.ars r0 = r0.g
            r1 = r6
            r0.a(r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.azi.a(boolean, android.app.Activity):boolean");
    }

    public final void finalize() throws Throwable {
        try {
            adt adtVar = this.f24032c.get();
            if (((Boolean) ekb.e().a(aq.ek)).booleanValue()) {
                if (!this.n && adtVar != null) {
                    dbs dbsVar = zd.e;
                    adtVar.getClass();
                    dbsVar.execute(azh.a(adtVar));
                }
            } else if (adtVar != null) {
                adtVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }
}
