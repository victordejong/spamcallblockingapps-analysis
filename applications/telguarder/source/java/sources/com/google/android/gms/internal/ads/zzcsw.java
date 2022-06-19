package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcsw.class */
public final class zzcsw implements zzcrj<zzbyy> {
    private final Context context;
    private final zzdmu zzfrb;
    private final Executor zzfsj;
    private final zzbzy zzgtz;

    public zzcsw(Context context, Executor executor, zzbzy zzbzyVar, zzdmu zzdmuVar) {
        this.context = context;
        this.zzgtz = zzbzyVar;
        this.zzfsj = executor;
        this.zzfrb = zzdmuVar;
    }

    private static String zze(zzdmw zzdmwVar) {
        try {
            return zzdmwVar.zzhjj.getString("tab_url");
        } catch (Exception e) {
            return null;
        }
    }

    public final /* synthetic */ zzdzw zza(Uri uri, zzdnl zzdnlVar, zzdmw zzdmwVar, Object obj) throws Exception {
        try {
            CustomTabsIntent build = new CustomTabsIntent.Builder().build();
            build.intent.setData(uri);
            zzd zzdVar = new zzd(build.intent, null);
            zzbaa zzbaaVar = new zzbaa();
            zzbza zza = this.zzgtz.zza(new zzboj(zzdnlVar, zzdmwVar, null), new zzbyz(new zzcag(zzbaaVar) { // from class: com.google.android.gms.internal.ads.zzcsy
                private final zzbaa zzbwd;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzbwd = zzbaaVar;
                }

                @Override // com.google.android.gms.internal.ads.zzcag
                public final void zza(boolean z, Context context) {
                    zzbaa zzbaaVar2 = this.zzbwd;
                    try {
                        zzr.zzkq();
                        zzm.zza(context, (AdOverlayInfoParcel) zzbaaVar2.get(), true);
                    } catch (Exception e) {
                    }
                }
            }));
            zzbaaVar.set(new AdOverlayInfoParcel(zzdVar, null, zza.zzaia(), null, new zzazn(0, 0, false), null));
            this.zzfrb.zzxo();
            return zzdzk.zzag(zza.zzahz());
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.zzd.zzc("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        return (this.context instanceof Activity) && PlatformVersion.isAtLeastIceCreamSandwichMR1() && zzacp.zzj(this.context) && !TextUtils.isEmpty(zze(zzdmwVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<zzbyy> zzb(zzdnl zzdnlVar, zzdmw zzdmwVar) {
        String zze = zze(zzdmwVar);
        return zzdzk.zzb(zzdzk.zzag(null), new zzdyu(this, zze != null ? Uri.parse(zze) : null, zzdnlVar, zzdmwVar) { // from class: com.google.android.gms.internal.ads.zzcsv
            private final zzdnl zzgtc;
            private final zzcsw zzgtw;
            private final Uri zzgtx;
            private final zzdmw zzgty;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgtw = this;
                this.zzgtx = parse;
                this.zzgtc = zzdnlVar;
                this.zzgty = zzdmwVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzgtw.zza(this.zzgtx, this.zzgtc, this.zzgty, obj);
            }
        }, this.zzfsj);
    }
}
