package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdek.class */
public final class zzdek implements zzdfi<zzdel> {
    private final Context context;
    private final ScheduledExecutorService zzfri;
    private final zzdnp zzfwy;
    private final zzdzv zzghl;
    private final zzcxh zzgwe;
    private String zzgzy;
    private final zzcxj zzhco;

    public zzdek(zzdzv zzdzvVar, ScheduledExecutorService scheduledExecutorService, String str, zzcxj zzcxjVar, Context context, zzdnp zzdnpVar, zzcxh zzcxhVar) {
        this.zzghl = zzdzvVar;
        this.zzfri = scheduledExecutorService;
        this.zzgzy = str;
        this.zzhco = zzcxjVar;
        this.context = context;
        this.zzfwy = zzdnpVar;
        this.zzgwe = zzcxhVar;
    }

    public final /* synthetic */ zzdzw zza(String str, List list, Bundle bundle) throws Exception {
        zzbaa zzbaaVar = new zzbaa();
        this.zzgwe.zzgn(str);
        zzapk zzgo = this.zzgwe.zzgo(str);
        Objects.requireNonNull(zzgo);
        zzgo.zza(ObjectWrapper.wrap(this.context), this.zzgzy, bundle, (Bundle) list.get(0), this.zzfwy.zzbpo, new zzcxp(str, zzgo, zzbaaVar));
        return zzbaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdel> zzasy() {
        return ((Boolean) zzwr.zzqr().zzd(zzabp.zzcqz)).booleanValue() ? zzdzk.zza(new zzdyv(this) { // from class: com.google.android.gms.internal.ads.zzden
            private final zzdek zzhcq;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhcq = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdyv
            public final zzdzw zzatm() {
                return this.zzhcq.zzatl();
            }
        }, this.zzghl) : zzdzk.zzag(null);
    }

    public final /* synthetic */ zzdzw zzatl() {
        Map<String, List<Bundle>> zzt = this.zzhco.zzt(this.zzgzy, this.zzfwy.zzhkx);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<Bundle>> entry : zzt.entrySet()) {
            String key = entry.getKey();
            arrayList.add(zzdzf.zzg(zzdzk.zza(new zzdyv(this, key, entry.getValue(), this.zzfwy.zzhkw.zzchu != null ? this.zzfwy.zzhkw.zzchu.getBundle(key) : null) { // from class: com.google.android.gms.internal.ads.zzdem
                private final String zzdjf;
                private final zzdek zzhcq;
                private final List zzhcr;
                private final Bundle zzhcs;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzhcq = this;
                    this.zzdjf = key;
                    this.zzhcr = value;
                    this.zzhcs = bundle;
                }

                @Override // com.google.android.gms.internal.ads.zzdyv
                public final zzdzw zzatm() {
                    return this.zzhcq.zza(this.zzdjf, this.zzhcr, this.zzhcs);
                }
            }, this.zzghl)).zza(((Long) zzwr.zzqr().zzd(zzabp.zzcqy)).longValue(), TimeUnit.MILLISECONDS, this.zzfri).zza(Throwable.class, new zzdvz(key) { // from class: com.google.android.gms.internal.ads.zzdep
                private final String zzdlh;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzdlh = key;
                }

                @Override // com.google.android.gms.internal.ads.zzdvz
                public final Object apply(Object obj) {
                    Throwable th = (Throwable) obj;
                    String valueOf = String.valueOf(this.zzdlh);
                    zzd.zzev(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
                    return null;
                }
            }, this.zzghl));
        }
        return zzdzk.zzk(arrayList).zzb(new Callable(arrayList) { // from class: com.google.android.gms.internal.ads.zzdeo
            private final List zzhct;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhct = arrayList;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzdzw> list = this.zzhct;
                JSONArray jSONArray = new JSONArray();
                for (zzdzw zzdzwVar : list) {
                    if (((JSONObject) zzdzwVar.get()) != null) {
                        jSONArray.put(zzdzwVar.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzdel(jSONArray.toString());
            }
        }, this.zzghl);
    }
}
