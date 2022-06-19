package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdoj.class */
public final class zzdoj implements zzdmu {
    private final zzbvv zza;
    private final zzdbu zzb;
    private final zzdba zzc;
    private final zzdim zzd;
    private final Context zze;
    private final zzezz zzf;
    private final zzcgz zzg;
    private final zzfar zzh;
    private boolean zzi = false;
    private boolean zzj = false;
    private boolean zzk = true;
    private final zzbvr zzl;
    private final zzbvs zzm;

    public zzdoj(zzbvr zzbvrVar, zzbvs zzbvsVar, zzbvv zzbvvVar, zzdbu zzdbuVar, zzdba zzdbaVar, zzdim zzdimVar, Context context, zzezz zzezzVar, zzcgz zzcgzVar, zzfar zzfarVar, byte[] bArr) {
        this.zzl = zzbvrVar;
        this.zzm = zzbvsVar;
        this.zza = zzbvvVar;
        this.zzb = zzdbuVar;
        this.zzc = zzdbaVar;
        this.zzd = zzdimVar;
        this.zze = context;
        this.zzf = zzezzVar;
        this.zzg = zzcgzVar;
        this.zzh = zzfarVar;
    }

    private final void zza(View view) {
        try {
            zzbvv zzbvvVar = this.zza;
            if (zzbvvVar != null && !zzbvvVar.zzu()) {
                this.zza.zzw(new ObjectWrapper(view));
                this.zzc.onAdClicked();
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzhb)).booleanValue()) {
                    return;
                }
                this.zzd.zzb();
                return;
            }
            zzbvr zzbvrVar = this.zzl;
            if (zzbvrVar != null && !zzbvrVar.zzq()) {
                this.zzl.zzn(new ObjectWrapper(view));
                this.zzc.onAdClicked();
                if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzhb)).booleanValue()) {
                    return;
                }
                this.zzd.zzb();
                return;
            }
            zzbvs zzbvsVar = this.zzm;
            if (zzbvsVar == null || zzbvsVar.zzo()) {
                return;
            }
            this.zzm.zzl(new ObjectWrapper(view));
            this.zzc.onAdClicked();
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzhb)).booleanValue()) {
                return;
            }
            this.zzd.zzb();
        } catch (RemoteException e) {
            zzcgt.zzj("Failed to call handleClick", e);
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

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzA() {
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzd(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Object obj;
        Object obj2;
        IObjectWrapper zzq;
        try {
            ObjectWrapper objectWrapper = new ObjectWrapper(view);
            JSONObject jSONObject = this.zzf.zzag;
            boolean z = true;
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbb)).booleanValue()) {
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
                                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbc)).booleanValue()) {
                                    cls2 = cls;
                                    if (next.equals("3010")) {
                                        zzbvv zzbvvVar = this.zza;
                                        if (zzbvvVar != null) {
                                            try {
                                                zzq = zzbvvVar.zzq();
                                            } catch (RemoteException | IllegalArgumentException e) {
                                                obj2 = null;
                                            }
                                        } else {
                                            zzbvr zzbvrVar = this.zzl;
                                            if (zzbvrVar != null) {
                                                zzq = zzbvrVar.zzw();
                                            } else {
                                                zzbvs zzbvsVar = this.zzm;
                                                zzq = zzbvsVar != null ? zzbvsVar.zzu() : null;
                                            }
                                        }
                                        obj2 = null;
                                        if (zzq != null) {
                                            obj2 = ObjectWrapper.m38746B1(zzq);
                                        }
                                        if (obj2 == null) {
                                            break;
                                        }
                                        cls2 = obj2.getClass();
                                    }
                                }
                                try {
                                    ArrayList arrayList = new ArrayList();
                                    zzbx.zza(optJSONArray, arrayList);
                                    zzt.zzc();
                                    ClassLoader classLoader = this.zze.getClassLoader();
                                    Iterator it = arrayList.iterator();
                                    while (it.hasNext()) {
                                        if (Class.forName((String) it.next(), false, classLoader).isAssignableFrom(cls2)) {
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
            zzbvv zzbvvVar2 = this.zza;
            if (zzbvvVar2 != null) {
                zzbvvVar2.zzx(objectWrapper, new ObjectWrapper(zzb), new ObjectWrapper(zzb2));
                return;
            }
            zzbvr zzbvrVar2 = this.zzl;
            if (zzbvrVar2 != null) {
                zzbvrVar2.zzy(objectWrapper, new ObjectWrapper(zzb), new ObjectWrapper(zzb2));
                this.zzl.zzo(objectWrapper);
                return;
            }
            zzbvs zzbvsVar2 = this.zzm;
            if (zzbvsVar2 == null) {
                return;
            }
            zzbvsVar2.zzw(objectWrapper, new ObjectWrapper(zzb), new ObjectWrapper(zzb2));
            this.zzm.zzm(objectWrapper);
        } catch (RemoteException e3) {
            zzcgt.zzj("Failed to call trackView", e3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zze(View view, Map<String, WeakReference<View>> map) {
        try {
            ObjectWrapper objectWrapper = new ObjectWrapper(view);
            zzbvv zzbvvVar = this.zza;
            if (zzbvvVar != null) {
                zzbvvVar.zzy(objectWrapper);
                return;
            }
            zzbvr zzbvrVar = this.zzl;
            if (zzbvrVar != null) {
                zzbvrVar.zzs(objectWrapper);
                return;
            }
            zzbvs zzbvsVar = this.zzm;
            if (zzbvsVar == null) {
                return;
            }
            zzbvsVar.zzq(objectWrapper);
        } catch (RemoteException e) {
            zzcgt.zzj("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzf(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzj || !this.zzf.zzH) {
            zza(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzg(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzh(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzi(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzj) {
            zzcgt.zzi("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.zzf.zzH) {
            zzcgt.zzi("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            zza(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzj() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final boolean zzk() {
        return this.zzf.zzH;
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzm(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzn(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final JSONObject zzo(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final JSONObject zzp(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzr(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzs(zzbob zzbobVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzt() {
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzu(zzbgm zzbgmVar) {
        zzcgt.zzi("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzv(zzbgi zzbgiVar) {
        zzcgt.zzi("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzw() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzx(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.zzi) {
                this.zzi = zzt.zzm().zzg(this.zze, this.zzg.zza, this.zzf.zzC.toString(), this.zzh.zzf);
            }
            if (!this.zzk) {
                return;
            }
            zzbvv zzbvvVar = this.zza;
            if (zzbvvVar != null && !zzbvvVar.zzt()) {
                this.zza.zzv();
                this.zzb.zza();
                return;
            }
            zzbvr zzbvrVar = this.zzl;
            if (zzbvrVar != null && !zzbvrVar.zzp()) {
                this.zzl.zzm();
                this.zzb.zza();
                return;
            }
            zzbvs zzbvsVar = this.zzm;
            if (zzbvsVar == null || zzbvsVar.zzn()) {
                return;
            }
            this.zzm.zzk();
            this.zzb.zza();
        } catch (RemoteException e) {
            zzcgt.zzj("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final void zzy() {
    }

    @Override // com.google.android.gms.internal.ads.zzdmu
    public final boolean zzz(Bundle bundle) {
        return false;
    }
}
