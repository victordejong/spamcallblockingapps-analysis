package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzblq.class */
public final class zzblq extends zzbnt {
    private final Context context;
    private final zzbeb zzdjd;
    private final int zzfto;
    private final zzbkv zzfud;
    private final zzcag zzfui;
    private boolean zzfuj = false;

    public zzblq(zzbnw zzbnwVar, Context context, zzbeb zzbebVar, int i, zzbkv zzbkvVar, zzcag zzcagVar) {
        super(zzbnwVar);
        this.zzdjd = zzbebVar;
        this.context = context;
        this.zzfto = i;
        this.zzfud = zzbkvVar;
        this.zzfui = zzcagVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    public final void destroy() {
        super.destroy();
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar != null) {
            zzbebVar.destroy();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v35, types: [android.content.Context] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(android.app.Activity r6, com.google.android.gms.internal.ads.zzsv r7, boolean r8) throws android.os.RemoteException {
        /*
            r5 = this;
            r0 = r6
            r9 = r0
            r0 = r6
            if (r0 != 0) goto Ld
            r0 = r5
            android.content.Context r0 = r0.context
            r9 = r0
        Ld:
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzcov
            r6 = r0
            com.google.android.gms.internal.ads.zzabl r0 = com.google.android.gms.internal.ads.zzwr.zzqr()
            r1 = r6
            java.lang.Object r0 = r0.zzd(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L88
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkr()
            r0 = r9
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzaq(r0)
            if (r0 == 0) goto L88
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.ads.internal.util.zzd.zzex(r0)
            r0 = r7
            com.google.android.gms.internal.ads.zzdom r1 = com.google.android.gms.internal.ads.zzdom.APP_NOT_FOREGROUND
            r2 = 0
            r3 = 0
            com.google.android.gms.internal.ads.zzvg r1 = com.google.android.gms.internal.ads.zzdok.zza(r1, r2, r3)
            r0.zzb(r1)
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzcow
            r6 = r0
            r0 = r11
            r12 = r0
            com.google.android.gms.internal.ads.zzabl r0 = com.google.android.gms.internal.ads.zzwr.zzqr()
            r1 = r6
            java.lang.Object r0 = r0.zzd(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto La2
            com.google.android.gms.internal.ads.zzdtm r0 = new com.google.android.gms.internal.ads.zzdtm
            r1 = r0
            r2 = r9
            android.content.Context r2 = r2.getApplicationContext()
            com.google.android.gms.ads.internal.util.zzbl r3 = com.google.android.gms.ads.internal.zzr.zzlf()
            android.os.Looper r3 = r3.zzzp()
            r1.<init>(r2, r3)
            r1 = r5
            com.google.android.gms.internal.ads.zzdnl r1 = r1.zzfrd
            com.google.android.gms.internal.ads.zzdnj r1 = r1.zzhks
            com.google.android.gms.internal.ads.zzdnb r1 = r1.zzess
            java.lang.String r1 = r1.zzbvs
            r0.zzhf(r1)
            r0 = r11
            r12 = r0
            goto La2
        L88:
            r0 = r5
            boolean r0 = r0.zzfuj
            if (r0 == 0) goto L94
            java.lang.String r0 = "App open interstitial ad is already visible."
            com.google.android.gms.ads.internal.util.zzd.zzex(r0)
        L94:
            r0 = r11
            r12 = r0
            r0 = r5
            boolean r0 = r0.zzfuj
            if (r0 != 0) goto La2
            r0 = 1
            r12 = r0
        La2:
            r0 = r12
            if (r0 != 0) goto La8
            return
        La8:
            r0 = r5
            com.google.android.gms.internal.ads.zzcag r0 = r0.zzfui     // Catch: com.google.android.gms.internal.ads.zzcaf -> Lba
            r1 = r8
            r2 = r9
            r0.zza(r1, r2)     // Catch: com.google.android.gms.internal.ads.zzcaf -> Lba
            r0 = r5
            r1 = 1
            r0.zzfuj = r1
            return
        Lba:
            r6 = move-exception
            r0 = r7
            r1 = r6
            com.google.android.gms.internal.ads.zzvg r1 = com.google.android.gms.internal.ads.zzdok.zzh(r1)
            r0.zzb(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzblq.zza(android.app.Activity, com.google.android.gms.internal.ads.zzsv, boolean):void");
    }

    public final void zza(zzsh zzshVar) {
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar != null) {
            zzbebVar.zza(zzshVar);
        }
    }

    public final int zzajh() {
        return this.zzfto;
    }

    public final void zzb(long j, int i) {
        this.zzfud.zzb(j, i);
    }
}
