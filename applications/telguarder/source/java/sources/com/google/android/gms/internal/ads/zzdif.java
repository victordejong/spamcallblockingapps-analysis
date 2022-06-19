package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbld;
import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbqy;
import com.google.android.gms.internal.ads.zzbwg;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdif.class */
public abstract class zzdif<AppOpenAd extends zzbnt, AppOpenRequestComponent extends zzbld<AppOpenAd>, AppOpenRequestComponentBuilder extends zzbqy<AppOpenRequestComponent>> implements zzczc<AppOpenAd> {
    private final Executor zzfsj;
    private final ViewGroup zzfum;
    private final zzdnr zzgxu;
    protected final zzbgc zzgzs;
    private final Context zzhfk;
    private final zzdil zzhfl;
    private final zzdkn<AppOpenRequestComponent, AppOpenAd> zzhfm;
    @Nullable
    private zzdzw<AppOpenAd> zzhfn;

    public zzdif(Context context, Executor executor, zzbgc zzbgcVar, zzdkn<AppOpenRequestComponent, AppOpenAd> zzdknVar, zzdil zzdilVar, zzdnr zzdnrVar) {
        this.zzhfk = context;
        this.zzfsj = executor;
        this.zzgzs = zzbgcVar;
        this.zzhfm = zzdknVar;
        this.zzhfl = zzdilVar;
        this.zzgxu = zzdnrVar;
        this.zzfum = new FrameLayout(context);
    }

    /* renamed from: zza */
    public final AppOpenRequestComponentBuilder zzb(zzdkm zzdkmVar) {
        synchronized (this) {
            zzdii zzdiiVar = (zzdii) zzdkmVar;
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczt)).booleanValue()) {
                return zza(new zzblu(this.zzfum), new zzbqx.zza().zzcf(this.zzhfk).zza(zzdiiVar.zzfwy).zzalo(), new zzbwg.zza().zzaml());
            }
            zzdil zzb = zzdil.zzb(this.zzhfl);
            zzbwg.zza zzaVar = new zzbwg.zza();
            zzaVar.zza((zzbrr) zzb, this.zzfsj);
            zzaVar.zza((zzbtg) zzb, this.zzfsj);
            zzaVar.zza((zzq) zzb, this.zzfsj);
            zzaVar.zza(zzb);
            return zza(new zzblu(this.zzfum), new zzbqx.zza().zzcf(this.zzhfk).zza(zzdiiVar.zzfwy).zzalo(), zzaVar.zzaml());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean isLoading() {
        zzdzw<AppOpenAd> zzdzwVar = this.zzhfn;
        return zzdzwVar != null && !zzdzwVar.isDone();
    }

    protected abstract AppOpenRequestComponentBuilder zza(zzblu zzbluVar, zzbqx zzbqxVar, zzbwg zzbwgVar);

    public final void zza(zzvx zzvxVar) {
        this.zzgxu.zzb(zzvxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final boolean zza(zzvl zzvlVar, String str, zzczb zzczbVar, zzcze<? super AppOpenAd> zzczeVar) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            if (str == null) {
                zzd.zzev("Ad unit ID should not be null for app open ad.");
                this.zzfsj.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdie
                    private final zzdif zzhfj;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzhfj = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzhfj.zzauf();
                    }
                });
                return false;
            } else if (this.zzhfn != null) {
                return false;
            } else {
                zzdod.zze(this.zzhfk, zzvlVar.zzchq);
                zzdnp zzavh = this.zzgxu.zzgs(str).zzg(zzvs.zzqg()).zzh(zzvlVar).zzavh();
                zzdii zzdiiVar = new zzdii(null);
                zzdiiVar.zzfwy = zzavh;
                zzdzw<AppOpenAd> zza = this.zzhfm.zza(new zzdko(zzdiiVar), new zzdkp(this) { // from class: com.google.android.gms.internal.ads.zzdih
                    private final zzdif zzhfj;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzhfj = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdkp
                    public final zzbqy zzc(zzdkm zzdkmVar) {
                        return this.zzhfj.zzb(zzdkmVar);
                    }
                });
                this.zzhfn = zza;
                zzdzk.zza(zza, new zzdig(this, zzczeVar, zzdiiVar), this.zzfsj);
                return true;
            }
        }
    }

    public final /* synthetic */ void zzauf() {
        this.zzhfl.zzc(zzdok.zza(zzdom.INVALID_AD_UNIT_ID, null, null));
    }
}
