package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyy.class */
public final class zzbyy extends zzbnt {
    private final Context context;
    private final zzcag zzfui;
    private boolean zzfuj = false;
    private final WeakReference<zzbeb> zzgbe;
    private final zzbxo zzgbf;
    private final zzboq zzgbg;
    private final zzdtm zzgbh;
    private final zzbrt zzgbi;

    public zzbyy(zzbnw zzbnwVar, Context context, @Nullable zzbeb zzbebVar, zzbxo zzbxoVar, zzcag zzcagVar, zzboq zzboqVar, zzdtm zzdtmVar, zzbrt zzbrtVar) {
        super(zzbnwVar);
        this.context = context;
        this.zzgbe = new WeakReference<>(zzbebVar);
        this.zzgbf = zzbxoVar;
        this.zzfui = zzcagVar;
        this.zzgbg = zzboqVar;
        this.zzgbh = zzdtmVar;
        this.zzgbi = zzbrtVar;
    }

    public final void finalize() throws Throwable {
        try {
            zzbeb zzbebVar = this.zzgbe.get();
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyw)).booleanValue()) {
                if (!this.zzfuj && zzbebVar != null) {
                    zzdzv zzdzvVar = zzazp.zzeig;
                    zzbebVar.getClass();
                    zzdzvVar.execute(zzbyx.zze(zzbebVar));
                }
            } else if (zzbebVar != null) {
                zzbebVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean isClosed() {
        return this.zzgbg.isClosed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /* JADX WARN: Type inference failed for: r0v20, types: [android.content.Context] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzb(boolean r5, @javax.annotation.Nullable android.app.Activity r6) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzcov
            r7 = r0
            com.google.android.gms.internal.ads.zzabl r0 = com.google.android.gms.internal.ads.zzwr.zzqr()
            r1 = r7
            java.lang.Object r0 = r0.zzd(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L59
            com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkr()
            r0 = r4
            android.content.Context r0 = r0.context
            boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzaq(r0)
            if (r0 == 0) goto L59
            java.lang.String r0 = "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"
            com.google.android.gms.ads.internal.util.zzd.zzex(r0)
            r0 = r4
            com.google.android.gms.internal.ads.zzbrt r0 = r0.zzgbi
            r0.zzalp()
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzcow
            r7 = r0
            com.google.android.gms.internal.ads.zzabl r0 = com.google.android.gms.internal.ads.zzwr.zzqr()
            r1 = r7
            java.lang.Object r0 = r0.zzd(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L66
            r0 = r4
            com.google.android.gms.internal.ads.zzdtm r0 = r0.zzgbh
            r1 = r4
            com.google.android.gms.internal.ads.zzdnl r1 = r1.zzfrd
            com.google.android.gms.internal.ads.zzdnj r1 = r1.zzhks
            com.google.android.gms.internal.ads.zzdnb r1 = r1.zzess
            java.lang.String r1 = r1.zzbvs
            r0.zzhf(r1)
            goto L66
        L59:
            r0 = r4
            boolean r0 = r0.zzfuj
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
            com.google.android.gms.internal.ads.zzbxo r0 = r0.zzgbf
            r0.zzalf()
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L82
            r0 = r4
            android.content.Context r0 = r0.context
            r7 = r0
        L82:
            r0 = r4
            com.google.android.gms.internal.ads.zzcag r0 = r0.zzfui     // Catch: com.google.android.gms.internal.ads.zzcaf -> L9b
            r1 = r5
            r2 = r7
            r0.zza(r1, r2)     // Catch: com.google.android.gms.internal.ads.zzcaf -> L9b
            r0 = r4
            com.google.android.gms.internal.ads.zzbxo r0 = r0.zzgbf     // Catch: com.google.android.gms.internal.ads.zzcaf -> L9b
            r0.zzald()     // Catch: com.google.android.gms.internal.ads.zzcaf -> L9b
            r0 = r4
            r1 = 1
            r0.zzfuj = r1
            r0 = 1
            return r0
        L9b:
            r6 = move-exception
            r0 = r4
            com.google.android.gms.internal.ads.zzbrt r0 = r0.zzgbi
            r1 = r6
            r0.zza(r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbyy.zzb(boolean, android.app.Activity):boolean");
    }
}
