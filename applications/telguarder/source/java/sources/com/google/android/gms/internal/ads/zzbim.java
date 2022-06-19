package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbim.class */
public final class zzbim extends zzyf {
    private final Context context;
    private final zzazn zzbpn;
    private final zzaxc zzbqv;
    private final zzcin zzfqj;
    private final zzcro<zzdog, zzctg> zzfqk;
    private final zzcxj zzfql;
    private final zzclq zzfqm;
    private final zzcip zzfqn;
    private boolean zzzl = false;

    public zzbim(Context context, zzazn zzaznVar, zzcin zzcinVar, zzcro<zzdog, zzctg> zzcroVar, zzcxj zzcxjVar, zzclq zzclqVar, zzaxc zzaxcVar, zzcip zzcipVar) {
        this.context = context;
        this.zzbpn = zzaznVar;
        this.zzfqj = zzcinVar;
        this.zzfqk = zzcroVar;
        this.zzfql = zzcxjVar;
        this.zzfqm = zzclqVar;
        this.zzbqv = zzaxcVar;
        this.zzfqn = zzcipVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final String getVersionString() {
        return this.zzbpn.zzbrp;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void initialize() {
        synchronized (this) {
            if (this.zzzl) {
                zzd.zzex("Mobile ads is initialized already.");
                return;
            }
            zzabp.initialize(this.context);
            zzr.zzkv().zzd(this.context, this.zzbpn);
            zzr.zzkx().initialize(this.context);
            this.zzzl = true;
            this.zzfqm.zzarb();
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcra)).booleanValue()) {
                this.zzfql.zzapw();
            }
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzctt)).booleanValue()) {
                this.zzfqn.zzapw();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void setAppMuted(boolean z) {
        synchronized (this) {
            zzr.zzkw().setAppMuted(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void setAppVolume(float f) {
        synchronized (this) {
            zzr.zzkw().setAppVolume(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzaao zzaaoVar) throws RemoteException {
        this.zzbqv.zza(this.context, zzaaoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzajk zzajkVar) throws RemoteException {
        this.zzfqm.zzb(zzajkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzane zzaneVar) throws RemoteException {
        this.zzfqj.zzb(zzaneVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(String str, IObjectWrapper iObjectWrapper) {
        String str2;
        zzabp.initialize(this.context);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzctv)).booleanValue()) {
            zzr.zzkr();
            str2 = zzj.zzay(this.context);
        } else {
            str2 = "";
        }
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcts)).booleanValue() | ((Boolean) zzwr.zzqr().zzd(zzabp.zzcph)).booleanValue();
        Runnable runnable = null;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcph)).booleanValue()) {
            booleanValue = true;
            runnable = new Runnable(this, (Runnable) ObjectWrapper.unwrap(iObjectWrapper)) { // from class: com.google.android.gms.internal.ads.zzbil
                private final zzbim zzfqh;
                private final Runnable zzfqi;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzfqh = this;
                    this.zzfqi = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final zzbim zzbimVar = this.zzfqh;
                    final Runnable runnable3 = this.zzfqi;
                    zzazp.zzeig.execute(new Runnable(zzbimVar, runnable3) { // from class: com.google.android.gms.internal.ads.zzbio
                        private final zzbim zzfqh;
                        private final Runnable zzfqi;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzfqh = zzbimVar;
                            this.zzfqi = runnable3;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzfqh.zzd(this.zzfqi);
                        }
                    });
                }
            };
        }
        if (!booleanValue) {
            return;
        }
        zzr.zzkz().zza(this.context, this.zzbpn, str, runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzb(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzd.zzev("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            zzd.zzev("Context is null. Failed to open debug menu.");
            return;
        }
        zzad zzadVar = new zzad(context);
        zzadVar.setAdUnitId(str);
        zzadVar.zzu(this.zzbpn.zzbrp);
        zzadVar.showDialog();
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzcd(String str) {
        synchronized (this) {
            zzabp.initialize(this.context);
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcts)).booleanValue()) {
                    zzr.zzkz().zza(this.context, this.zzbpn, str, (Runnable) null);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzce(String str) {
        this.zzfql.zzgp(str);
    }

    public final /* synthetic */ void zzd(Runnable runnable) {
        Preconditions.checkMainThread("Adapters must be initialized on the main thread.");
        Map<String, zzand> zzya = zzr.zzkv().zzxs().zzyn().zzya();
        if (zzya == null || zzya.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzd.zzd("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (!this.zzfqj.zzapt()) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (zzand zzandVar : zzya.values()) {
            for (zzana zzanaVar : zzandVar.zzdmo) {
                String str = zzanaVar.zzdmb;
                for (String str2 : zzanaVar.zzdlt) {
                    if (!hashMap.containsKey(str2)) {
                        hashMap.put(str2, new ArrayList());
                    }
                    if (str != null) {
                        ((Collection) hashMap.get(str2)).add(str);
                    }
                }
            }
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            String str3 = (String) entry.getKey();
            try {
                zzcrl<zzdog, zzctg> zzf = this.zzfqk.zzf(str3, jSONObject);
                if (zzf != null) {
                    zzdog zzdogVar = zzf.zzdnl;
                    if (!zzdogVar.isInitialized() && zzdogVar.zzuz()) {
                        zzdogVar.zza(this.context, zzf.zzgsu, (List) entry.getValue());
                        String valueOf = String.valueOf(str3);
                        zzd.zzdy(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                    }
                }
            } catch (zzdnt e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 56);
                sb.append("Failed to initialize rewarded video mediation adapter \"");
                sb.append(str3);
                sb.append("\"");
                zzd.zzd(sb.toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final float zzra() {
        float zzra;
        synchronized (this) {
            zzra = zzr.zzkw().zzra();
        }
        return zzra;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final boolean zzrb() {
        boolean zzrb;
        synchronized (this) {
            zzrb = zzr.zzkw().zzrb();
        }
        return zzrb;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final List<zzajh> zzrc() throws RemoteException {
        return this.zzfqm.zzarc();
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzrd() {
        this.zzfqm.disable();
    }
}
