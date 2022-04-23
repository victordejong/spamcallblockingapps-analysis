package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzboh.class */
public final class zzboh extends zzbqo {

    /* renamed from: h */
    public final zzbgj f25275h;

    /* renamed from: i */
    public final int f25276i;

    /* renamed from: j */
    public final zzbnn f25277j;

    /* renamed from: k */
    public final zzccm f25278k;

    /* renamed from: l */
    public boolean f25279l = false;

    public zzboh(zzbqn zzbqnVar, zzbgj zzbgjVar, int i, boolean z, boolean z2, zzbnn zzbnnVar, zzccm zzccmVar) {
        super(zzbqnVar);
        this.f25275h = zzbgjVar;
        this.f25276i = i;
        this.f25277j = zzbnnVar;
        this.f25278k = zzccmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqo
    /* renamed from: a */
    public final void mo14764a() {
        super.mo14764a();
        zzbgj zzbgjVar = this.f25275h;
        if (zzbgjVar != null) {
            zzbgjVar.destroy();
        }
    }

    /* renamed from: a */
    public final void m15239a(long j) {
        this.f25277j.m15274a(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x008b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m15238a(android.app.Activity r6, com.google.android.gms.internal.ads.zzsq r7) throws android.os.RemoteException {
        /*
            r5 = this;
            com.google.android.gms.internal.ads.zzaaq<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabb.f23809f0
            r8 = r0
            com.google.android.gms.internal.ads.zzaax r0 = com.google.android.gms.internal.ads.zzwm.m11166e()
            r1 = r8
            java.lang.Object r0 = r0.m16921a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x006a
            com.google.android.gms.internal.ads.zzayu r0 = com.google.android.gms.ads.internal.zzp.m17969c()
            r0 = r6
            boolean r0 = com.google.android.gms.internal.ads.zzayu.m16088g(r0)
            if (r0 == 0) goto L_0x006a
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.internal.ads.zzbbq.m15852d(r0)
            r0 = r7
            com.google.android.gms.internal.ads.zzdpg r1 = com.google.android.gms.internal.ads.zzdpg.APP_NOT_FOREGROUND
            r2 = 0
            r3 = 0
            com.google.android.gms.internal.ads.zzva r1 = com.google.android.gms.internal.ads.zzdpe.m13339a(r1, r2, r3)
            r0.mo11463f(r1)
            com.google.android.gms.internal.ads.zzaaq<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabb.f23815g0
            r8 = r0
            com.google.android.gms.internal.ads.zzaax r0 = com.google.android.gms.internal.ads.zzwm.m11166e()
            r1 = r8
            java.lang.Object r0 = r0.m16921a(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0083
            com.google.android.gms.internal.ads.zzdtn r0 = new com.google.android.gms.internal.ads.zzdtn
            r1 = r0
            r2 = r6
            android.content.Context r2 = r2.getApplicationContext()
            com.google.android.gms.internal.ads.zzbas r3 = com.google.android.gms.ads.internal.zzp.m17955q()
            android.os.Looper r3 = r3.m15947b()
            r1.<init>(r2, r3)
            r1 = r5
            com.google.android.gms.internal.ads.zzdog r1 = r1.f25380a
            com.google.android.gms.internal.ads.zzdoe r1 = r1.f27634b
            com.google.android.gms.internal.ads.zzdnw r1 = r1.f27630b
            java.lang.String r1 = r1.f27612b
            r0.m13199a(r1)
            goto L_0x0083
        L_0x006a:
            r0 = r5
            boolean r0 = r0.f25279l
            if (r0 == 0) goto L_0x0076
            java.lang.String r0 = "App open interstitial ad is already visible."
            com.google.android.gms.internal.ads.zzbbq.m15852d(r0)
        L_0x0076:
            r0 = r5
            boolean r0 = r0.f25279l
            if (r0 != 0) goto L_0x0083
            r0 = 1
            r9 = r0
            goto L_0x0086
        L_0x0083:
            r0 = 0
            r9 = r0
        L_0x0086:
            r0 = r9
            if (r0 != 0) goto L_0x008c
            return
        L_0x008c:
            r0 = r5
            com.google.android.gms.internal.ads.zzccm r0 = r0.f25278k     // Catch: zzccl -> 0x009d
            r1 = 0
            r2 = r6
            r0.mo14809a(r1, r2)     // Catch: zzccl -> 0x009d
            r0 = r5
            r1 = 1
            r0.f25279l = r1
            return
        L_0x009d:
            r6 = move-exception
            r0 = r7
            r1 = r6
            com.google.android.gms.internal.ads.zzva r1 = com.google.android.gms.internal.ads.zzdpe.m13338a(r1)
            r0.mo11463f(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzboh.m15238a(android.app.Activity, com.google.android.gms.internal.ads.zzsq):void");
    }

    /* renamed from: a */
    public final void m15237a(zzsc zzscVar) {
        zzbgj zzbgjVar = this.f25275h;
        if (zzbgjVar != null) {
            zzbgjVar.mo15583a(zzscVar);
        }
    }

    /* renamed from: g */
    public final int m15236g() {
        return this.f25276i;
    }
}
