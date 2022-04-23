package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/all.class */
public final class all extends anp {

    /* renamed from: a  reason: collision with root package name */
    final adt f23529a;

    /* renamed from: b  reason: collision with root package name */
    final int f23530b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f23531c;

    /* renamed from: d  reason: collision with root package name */
    private final akr f23532d;
    private final bap e;
    private boolean f = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public all(ans ansVar, Context context, adt adtVar, int i, akr akrVar, bap bapVar) {
        super(ansVar);
        this.f23529a = adtVar;
        this.f23531c = context;
        this.f23530b = i;
        this.f23532d = akrVar;
        this.e = bapVar;
    }

    @Override // com.google.android.gms.internal.ads.anp
    public final void a() {
        super.a();
        adt adtVar = this.f23529a;
        if (adtVar != null) {
            adtVar.destroy();
        }
    }

    public final void a(long j, int i) {
        this.f23532d.a(j, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.app.Activity r6, com.google.android.gms.internal.ads.egi r7, boolean r8) throws android.os.RemoteException {
        /*
            r5 = this;
            r0 = r6
            r9 = r0
            r0 = r6
            if (r0 != 0) goto L_0x000d
            r0 = r5
            android.content.Context r0 = r0.f23531c
            r9 = r0
        L_0x000d:
            com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aq.ao
            r6 = r0
            com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.e()
            r1 = r6
            java.lang.Object r0 = r0.a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0088
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkv()
            r0 = r9
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzat(r0)
            if (r0 == 0) goto L_0x0088
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.ads.internal.util.zzd.zzez(r0)
            r0 = r7
            com.google.android.gms.internal.ads.cqj r1 = com.google.android.gms.internal.ads.cqj.APP_NOT_FOREGROUND
            r2 = 0
            r3 = 0
            com.google.android.gms.internal.ads.zzvh r1 = com.google.android.gms.internal.ads.cqh.a(r1, r2, r3)
            r0.a(r1)
            com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aq.ap
            r6 = r0
            r0 = r11
            r12 = r0
            com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.e()
            r1 = r6
            java.lang.Object r0 = r0.a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x00a2
            com.google.android.gms.internal.ads.cvm r0 = new com.google.android.gms.internal.ads.cvm
            r1 = r0
            r2 = r9
            android.content.Context r2 = r2.getApplicationContext()
            com.google.android.gms.ads.internal.util.zzbl r3 = com.google.android.gms.ads.internal.zzr.zzlj()
            android.os.Looper r3 = r3.zzaai()
            r1.<init>(r2, r3)
            r1 = r5
            com.google.android.gms.internal.ads.cpk r1 = r1.h
            com.google.android.gms.internal.ads.cpi r1 = r1.f26222b
            com.google.android.gms.internal.ads.coz r1 = r1.f26217b
            java.lang.String r1 = r1.f26197b
            r0.a(r1)
            r0 = r11
            r12 = r0
            goto L_0x00a2
        L_0x0088:
            r0 = r5
            boolean r0 = r0.f
            if (r0 == 0) goto L_0x0094
            java.lang.String r0 = "App open interstitial ad is already visible."
            com.google.android.gms.ads.internal.util.zzd.zzez(r0)
        L_0x0094:
            r0 = r11
            r12 = r0
            r0 = r5
            boolean r0 = r0.f
            if (r0 != 0) goto L_0x00a2
            r0 = 1
            r12 = r0
        L_0x00a2:
            r0 = r12
            if (r0 != 0) goto L_0x00a8
            return
        L_0x00a8:
            r0 = r5
            com.google.android.gms.internal.ads.bap r0 = r0.e     // Catch: zzcbq -> 0x00ba
            r1 = r8
            r2 = r9
            r0.a(r1, r2)     // Catch: zzcbq -> 0x00ba
            r0 = r5
            r1 = 1
            r0.f = r1
            return
        L_0x00ba:
            r6 = move-exception
            r0 = r7
            r1 = r6
            com.google.android.gms.internal.ads.zzvh r1 = com.google.android.gms.internal.ads.cqh.a(r1)
            r0.a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.all.a(android.app.Activity, com.google.android.gms.internal.ads.egi, boolean):void");
    }
}
