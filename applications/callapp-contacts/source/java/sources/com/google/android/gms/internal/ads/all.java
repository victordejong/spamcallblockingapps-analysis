package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/all.class */
public final class all extends anp {

    /* renamed from: a */
    final adt f42357a;

    /* renamed from: b */
    final int f42358b;

    /* renamed from: c */
    private final Context f42359c;

    /* renamed from: d */
    private final akr f42360d;

    /* renamed from: e */
    private final bap f42361e;

    /* renamed from: f */
    private boolean f42362f = false;

    public all(ans ansVar, Context context, adt adtVar, int i, akr akrVar, bap bapVar) {
        super(ansVar);
        this.f42357a = adtVar;
        this.f42359c = context;
        this.f42358b = i;
        this.f42360d = akrVar;
        this.f42361e = bapVar;
    }

    @Override // com.google.android.gms.internal.ads.anp
    /* renamed from: a */
    public final void mo18235a() {
        super.mo18235a();
        adt adtVar = this.f42357a;
        if (adtVar != null) {
            adtVar.destroy();
        }
    }

    /* renamed from: a */
    public final void m18583a(long j, int i) {
        this.f42360d.m18607a(j, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v35, types: [android.content.Context] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18582a(android.app.Activity r6, com.google.android.gms.internal.ads.egi r7, boolean r8) throws android.os.RemoteException {
        /*
            r5 = this;
            r0 = r6
            r9 = r0
            r0 = r6
            if (r0 != 0) goto Ld
            r0 = r5
            android.content.Context r0 = r0.f42359c
            r9 = r0
        Ld:
            com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C12187aq.f42678ao
            r6 = r0
            com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.m14831e()
            r1 = r6
            java.lang.Object r0 = r0.m18571a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L88
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkv()
            r0 = r9
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzat(r0)
            if (r0 == 0) goto L88
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.ads.internal.util.zzd.zzez(r0)
            r0 = r7
            com.google.android.gms.internal.ads.cqj r1 = com.google.android.gms.internal.ads.cqj.APP_NOT_FOREGROUND
            r2 = 0
            r3 = 0
            com.google.android.gms.internal.ads.zzvh r1 = com.google.android.gms.internal.ads.cqh.m17323a(r1, r2, r3)
            r0.mo15069a(r1)
            com.google.android.gms.internal.ads.af<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C12187aq.f42679ap
            r6 = r0
            r0 = r11
            r12 = r0
            com.google.android.gms.internal.ads.am r0 = com.google.android.gms.internal.ads.ekb.m14831e()
            r1 = r6
            java.lang.Object r0 = r0.m18571a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto La2
            com.google.android.gms.internal.ads.cvm r0 = new com.google.android.gms.internal.ads.cvm
            r1 = r0
            r2 = r9
            android.content.Context r2 = r2.getApplicationContext()
            com.google.android.gms.ads.internal.util.zzbl r3 = com.google.android.gms.ads.internal.zzr.zzlj()
            android.os.Looper r3 = r3.zzaai()
            r1.<init>(r2, r3)
            r1 = r5
            com.google.android.gms.internal.ads.cpk r1 = r1.f42486h
            com.google.android.gms.internal.ads.cpi r1 = r1.f46319b
            com.google.android.gms.internal.ads.coz r1 = r1.f46314b
            java.lang.String r1 = r1.f46290b
            r0.m17163a(r1)
            r0 = r11
            r12 = r0
            goto La2
        L88:
            r0 = r5
            boolean r0 = r0.f42362f
            if (r0 == 0) goto L94
            java.lang.String r0 = "App open interstitial ad is already visible."
            com.google.android.gms.ads.internal.util.zzd.zzez(r0)
        L94:
            r0 = r11
            r12 = r0
            r0 = r5
            boolean r0 = r0.f42362f
            if (r0 != 0) goto La2
            r0 = 1
            r12 = r0
        La2:
            r0 = r12
            if (r0 != 0) goto La8
            return
        La8:
            r0 = r5
            com.google.android.gms.internal.ads.bap r0 = r0.f42361e     // Catch: com.google.android.gms.internal.ads.zzcbq -> Lba
            r1 = r8
            r2 = r9
            r0.mo17566a(r1, r2)     // Catch: com.google.android.gms.internal.ads.zzcbq -> Lba
            r0 = r5
            r1 = 1
            r0.f42362f = r1
            return
        Lba:
            r6 = move-exception
            r0 = r7
            r1 = r6
            com.google.android.gms.internal.ads.zzvh r1 = com.google.android.gms.internal.ads.cqh.m17322a(r1)
            r0.mo15069a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.all.m18582a(android.app.Activity, com.google.android.gms.internal.ads.egi, boolean):void");
    }
}
