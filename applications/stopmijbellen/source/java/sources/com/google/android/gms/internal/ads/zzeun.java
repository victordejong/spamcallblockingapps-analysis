package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeun.class */
public final class zzeun implements zzevn<zzeuo> {
    public final String zza;
    private final zzfxb zzb;
    private final ScheduledExecutorService zzc;
    private final zzenu zzd;
    private final Context zze;
    private final zzfef zzf;
    private final zzenq zzg;
    private final zzdww zzh;

    public zzeun(zzfxb zzfxbVar, ScheduledExecutorService scheduledExecutorService, String str, zzenu zzenuVar, Context context, zzfef zzfefVar, zzenq zzenqVar, zzdww zzdwwVar) {
        this.zzb = zzfxbVar;
        this.zzc = scheduledExecutorService;
        this.zza = str;
        this.zzd = zzenuVar;
        this.zze = context;
        this.zzf = zzfefVar;
        this.zzg = zzenqVar;
        this.zzh = zzdwwVar;
    }

    public static /* synthetic */ zzfxa zza(zzeun zzeunVar) {
        Map<String, List<Bundle>> zza = zzeunVar.zzd.zza(zzeunVar.zza, ((Boolean) zzbgq.zzc().zzb(zzblj.zzhp)).booleanValue() ? zzeunVar.zzf.zzf.toLowerCase(Locale.ROOT) : zzeunVar.zzf.zzf);
        final ArrayList arrayList = new ArrayList();
        Iterator<E> it2 = ((zzfsw) zza).entrySet().iterator();
        while (true) {
            Bundle bundle = null;
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it2.next();
            final String str = (String) entry.getKey();
            final List list = (List) entry.getValue();
            Bundle bundle2 = zzeunVar.zzf.zzd.zzm;
            if (bundle2 != null) {
                bundle = bundle2.getBundle(str);
            }
            final Bundle bundle3 = bundle;
            arrayList.add(zzfwq.zzf((zzfwh) zzfwq.zzo(zzfwh.zzw(zzfwq.zzl(new zzfvw() { // from class: com.google.android.gms.internal.ads.zzeul
                @Override // com.google.android.gms.internal.ads.zzfvw
                public final zzfxa zza() {
                    return zzeun.this.zzc(str, list, bundle3);
                }
            }, zzeunVar.zzb)), ((Long) zzbgq.zzc().zzb(zzblj.zzbd)).longValue(), TimeUnit.MILLISECONDS, zzeunVar.zzc), Throwable.class, new zzfpv() { // from class: com.google.android.gms.internal.ads.zzeuh
                @Override // com.google.android.gms.internal.ads.zzfpv
                public final Object apply(Object obj) {
                    Throwable th = (Throwable) obj;
                    String valueOf = String.valueOf(str);
                    zzciz.zzg(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
                    return null;
                }
            }, zzeunVar.zzb));
        }
        for (Map.Entry entry2 : ((zzfsw) zzeunVar.zzd.zzb()).entrySet()) {
            final zzeny zzenyVar = (zzeny) entry2.getValue();
            final String str2 = zzenyVar.zza;
            Bundle bundle4 = zzeunVar.zzf.zzd.zzm;
            final Bundle bundle5 = bundle4 != null ? bundle4.getBundle(str2) : null;
            arrayList.add(zzfwq.zzf((zzfwh) zzfwq.zzo(zzfwh.zzw(zzfwq.zzl(new zzfvw() { // from class: com.google.android.gms.internal.ads.zzeuk
                @Override // com.google.android.gms.internal.ads.zzfvw
                public final zzfxa zza() {
                    return zzeun.this.zzd(str2, zzenyVar, bundle5);
                }
            }, zzeunVar.zzb)), ((Long) zzbgq.zzc().zzb(zzblj.zzbd)).longValue(), TimeUnit.MILLISECONDS, zzeunVar.zzc), Throwable.class, new zzfpv() { // from class: com.google.android.gms.internal.ads.zzeui
                @Override // com.google.android.gms.internal.ads.zzfpv
                public final Object apply(Object obj) {
                    Throwable th = (Throwable) obj;
                    String valueOf = String.valueOf(str2);
                    zzciz.zzg(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
                    return null;
                }
            }, zzeunVar.zzb));
        }
        return zzfwq.zzc(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeum
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<zzfxa> list2 = arrayList;
                JSONArray jSONArray = new JSONArray();
                for (zzfxa zzfxaVar : list2) {
                    if (((JSONObject) zzfxaVar.get()) != null) {
                        jSONArray.put(zzfxaVar.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzeuo(jSONArray.toString());
            }
        }, zzeunVar.zzb);
    }

    private final zzfxa<JSONObject> zze(String str, List<Bundle> list, Bundle bundle, boolean z, boolean z2) throws RemoteException {
        zzbzo zzbzoVar;
        zzcjr zzcjrVar = new zzcjr();
        if (z2) {
            this.zzg.zzb(str);
            zzbzoVar = this.zzg.zza(str);
        } else {
            try {
                zzbzoVar = this.zzh.zza(str);
            } catch (RemoteException e) {
                zzciz.zzh("Couldn't create RTB adapter : ", e);
                zzbzoVar = null;
            }
        }
        Objects.requireNonNull(zzbzoVar);
        zzenx zzenxVar = new zzenx(str, zzbzoVar, zzcjrVar);
        if (z) {
            zzbzoVar.zzh(ObjectWrapper.wrap(this.zze), this.zza, bundle, list.get(0), this.zzf.zze, zzenxVar);
        } else {
            zzenxVar.zzb();
        }
        return zzcjrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzeuo> zzb() {
        return zzfwq.zzl(new zzfvw() { // from class: com.google.android.gms.internal.ads.zzeuj
            @Override // com.google.android.gms.internal.ads.zzfvw
            public final zzfxa zza() {
                return zzeun.zza(zzeun.this);
            }
        }, this.zzb);
    }

    public final /* synthetic */ zzfxa zzc(String str, List list, Bundle bundle) throws Exception {
        return zze(str, list, bundle, true, true);
    }

    public final /* synthetic */ zzfxa zzd(String str, zzeny zzenyVar, Bundle bundle) throws Exception {
        return zze(str, Collections.singletonList(zzenyVar.zzd), bundle, zzenyVar.zzb, zzenyVar.zzc);
    }
}
