package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzby;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrz.class */
public final class zzdrz implements zzdqk {
    private final zzbxw zza;
    private final zzdfj zzb;
    private final zzdep zzc;
    private final zzdmb zzd;
    private final Context zze;
    private final zzfdn zzf;
    private final zzcjf zzg;
    private final zzfef zzh;
    private boolean zzi = false;
    private boolean zzj = false;
    private boolean zzk = true;
    private final zzbxs zzl;
    private final zzbxt zzm;

    public zzdrz(zzbxs zzbxsVar, zzbxt zzbxtVar, zzbxw zzbxwVar, zzdfj zzdfjVar, zzdep zzdepVar, zzdmb zzdmbVar, Context context, zzfdn zzfdnVar, zzcjf zzcjfVar, zzfef zzfefVar, byte[] bArr) {
        this.zzl = zzbxsVar;
        this.zzm = zzbxtVar;
        this.zza = zzbxwVar;
        this.zzb = zzdfjVar;
        this.zzc = zzdepVar;
        this.zzd = zzdmbVar;
        this.zze = context;
        this.zzf = zzfdnVar;
        this.zzg = zzcjfVar;
        this.zzh = zzfefVar;
    }

    private final void zza(View view) {
        try {
            zzbxw zzbxwVar = this.zza;
            if (zzbxwVar != null && !zzbxwVar.zzA()) {
                this.zza.zzw(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhm)).booleanValue()) {
                    return;
                }
                this.zzd.zzq();
                return;
            }
            zzbxs zzbxsVar = this.zzl;
            if (zzbxsVar != null && !zzbxsVar.zzx()) {
                this.zzl.zzs(ObjectWrapper.wrap(view));
                this.zzc.onAdClicked();
                if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhm)).booleanValue()) {
                    return;
                }
                this.zzd.zzq();
                return;
            }
            zzbxt zzbxtVar = this.zzm;
            if (zzbxtVar == null || zzbxtVar.zzv()) {
                return;
            }
            this.zzm.zzq(ObjectWrapper.wrap(view));
            this.zzc.onAdClicked();
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhm)).booleanValue()) {
                return;
            }
            this.zzd.zzq();
        } catch (RemoteException e) {
            zzciz.zzk("Failed to call handleClick", e);
        }
    }

    private static final HashMap<String, View> zzb(Map<String, WeakReference<View>> map) {
        HashMap<String, View> hashMap = new HashMap<>();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view = entry.getValue().get();
                if (view != null) {
                    hashMap.put(entry.getKey(), view);
                }
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final boolean zzA(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final JSONObject zzd(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final JSONObject zze(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzg() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzi(zzbij zzbijVar) {
        zzciz.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzj(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzj || !this.zzf.zzI) {
            zza(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzk(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzl(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzn(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzj) {
            zzciz.zzj("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.zzf.zzI) {
            zzciz.zzj("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            zza(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzo() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzp(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.zzi) {
                this.zzi = zzt.zzs().zzn(this.zze, this.zzg.zza, this.zzf.zzD.toString(), this.zzh.zzf);
            }
            if (!this.zzk) {
                return;
            }
            zzbxw zzbxwVar = this.zza;
            if (zzbxwVar != null && !zzbxwVar.zzB()) {
                this.zza.zzx();
                this.zzb.zza();
                return;
            }
            zzbxs zzbxsVar = this.zzl;
            if (zzbxsVar != null && !zzbxsVar.zzy()) {
                this.zzl.zzt();
                this.zzb.zza();
                return;
            }
            zzbxt zzbxtVar = this.zzm;
            if (zzbxtVar == null || zzbxtVar.zzw()) {
                return;
            }
            this.zzm.zzr();
            this.zzb.zza();
        } catch (RemoteException e) {
            zzciz.zzk("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzr(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzs(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzt(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzu() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzv(zzbif zzbifVar) {
        zzciz.zzj("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzw(zzbqc zzbqcVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzx(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Object obj;
        Object obj2;
        IObjectWrapper zzn;
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            JSONObject jSONObject = this.zzf.zzah;
            boolean z = true;
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbh)).booleanValue()) {
                if (jSONObject.length() == 0) {
                    z = true;
                } else {
                    Map<String, WeakReference<View>> hashMap = map == null ? new HashMap<>() : map;
                    Map<String, WeakReference<View>> hashMap2 = map2 == null ? new HashMap<>() : map2;
                    HashMap hashMap3 = new HashMap();
                    hashMap3.putAll(hashMap);
                    hashMap3.putAll(hashMap2);
                    Iterator<String> keys = jSONObject.keys();
                    loop0: while (true) {
                        z = true;
                        if (keys.hasNext()) {
                            String next = keys.next();
                            JSONArray optJSONArray = jSONObject.optJSONArray(next);
                            if (optJSONArray != null) {
                                WeakReference weakReference = (WeakReference) hashMap3.get(next);
                                if (weakReference == null || (obj = weakReference.get()) == null) {
                                    break;
                                }
                                Class<?> cls = obj.getClass();
                                Class<?> cls2 = cls;
                                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbi)).booleanValue()) {
                                    cls2 = cls;
                                    if (next.equals("3010")) {
                                        zzbxw zzbxwVar = this.zza;
                                        if (zzbxwVar != null) {
                                            try {
                                                zzn = zzbxwVar.zzn();
                                            } catch (RemoteException | IllegalArgumentException e) {
                                                obj2 = null;
                                            }
                                        } else {
                                            zzbxs zzbxsVar = this.zzl;
                                            if (zzbxsVar != null) {
                                                zzn = zzbxsVar.zzk();
                                            } else {
                                                zzbxt zzbxtVar = this.zzm;
                                                zzn = zzbxtVar != null ? zzbxtVar.zzj() : null;
                                            }
                                        }
                                        obj2 = null;
                                        if (zzn != null) {
                                            obj2 = ObjectWrapper.unwrap(zzn);
                                        }
                                        if (obj2 == null) {
                                            break;
                                        }
                                        cls2 = obj2.getClass();
                                    }
                                }
                                try {
                                    ArrayList arrayList = new ArrayList();
                                    zzby.zzc(optJSONArray, arrayList);
                                    zzt.zzp();
                                    ClassLoader classLoader = this.zze.getClassLoader();
                                    Iterator it2 = arrayList.iterator();
                                    while (it2.hasNext()) {
                                        if (Class.forName((String) it2.next(), false, classLoader).isAssignableFrom(cls2)) {
                                            break;
                                        }
                                    }
                                    break loop0;
                                } catch (JSONException e2) {
                                }
                            }
                        } else {
                            break;
                        }
                    }
                    z = false;
                }
            }
            this.zzk = z;
            HashMap<String, View> zzb = zzb(map);
            HashMap<String, View> zzb2 = zzb(map2);
            zzbxw zzbxwVar2 = this.zza;
            if (zzbxwVar2 != null) {
                zzbxwVar2.zzy(wrap, ObjectWrapper.wrap(zzb), ObjectWrapper.wrap(zzb2));
                return;
            }
            zzbxs zzbxsVar2 = this.zzl;
            if (zzbxsVar2 != null) {
                zzbxsVar2.zzv(wrap, ObjectWrapper.wrap(zzb), ObjectWrapper.wrap(zzb2));
                this.zzl.zzu(wrap);
                return;
            }
            zzbxt zzbxtVar2 = this.zzm;
            if (zzbxtVar2 == null) {
                return;
            }
            zzbxtVar2.zzt(wrap, ObjectWrapper.wrap(zzb), ObjectWrapper.wrap(zzb2));
            this.zzm.zzs(wrap);
        } catch (RemoteException e3) {
            zzciz.zzk("Failed to call trackView", e3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final void zzy(View view, Map<String, WeakReference<View>> map) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            zzbxw zzbxwVar = this.zza;
            if (zzbxwVar != null) {
                zzbxwVar.zzz(wrap);
                return;
            }
            zzbxs zzbxsVar = this.zzl;
            if (zzbxsVar != null) {
                zzbxsVar.zzw(wrap);
                return;
            }
            zzbxt zzbxtVar = this.zzm;
            if (zzbxtVar == null) {
                return;
            }
            zzbxtVar.zzu(wrap);
        } catch (RemoteException e) {
            zzciz.zzk("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdqk
    public final boolean zzz() {
        return this.zzf.zzI;
    }
}
