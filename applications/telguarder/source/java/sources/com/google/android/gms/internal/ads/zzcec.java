package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcec.class */
public final class zzcec implements zzccl {
    private final Context context;
    private final zzazn zzbpn;
    private final zzdmw zzesr;
    private final zzdnp zzfwy;
    private final zzbsd zzgci;
    private final zzbrl zzgcj;
    private final zzanr zzghc;
    private final zzans zzghd;
    private final zzanx zzghe;
    private boolean zzgcn = false;
    private boolean zzgcq = false;
    private boolean zzghf = true;

    public zzcec(zzanr zzanrVar, zzans zzansVar, zzanx zzanxVar, zzbsd zzbsdVar, zzbrl zzbrlVar, Context context, zzdmw zzdmwVar, zzazn zzaznVar, zzdnp zzdnpVar) {
        this.zzghc = zzanrVar;
        this.zzghd = zzansVar;
        this.zzghe = zzanxVar;
        this.zzgci = zzbsdVar;
        this.zzgcj = zzbrlVar;
        this.context = context;
        this.zzesr = zzdmwVar;
        this.zzbpn = zzaznVar;
        this.zzfwy = zzdnpVar;
    }

    private final void zzad(View view) {
        try {
            zzanx zzanxVar = this.zzghe;
            if (zzanxVar != null && !zzanxVar.getOverrideClickHandling()) {
                this.zzghe.zzu(ObjectWrapper.wrap(view));
                this.zzgcj.onAdClicked();
                return;
            }
            zzanr zzanrVar = this.zzghc;
            if (zzanrVar != null && !zzanrVar.getOverrideClickHandling()) {
                this.zzghc.zzu(ObjectWrapper.wrap(view));
                this.zzgcj.onAdClicked();
                return;
            }
            zzans zzansVar = this.zzghd;
            if (zzansVar == null || zzansVar.getOverrideClickHandling()) {
                return;
            }
            this.zzghd.zzu(ObjectWrapper.wrap(view));
            this.zzgcj.onAdClicked();
        } catch (RemoteException e) {
            zzd.zzd("Failed to call handleClick", e);
        }
    }

    private final Object zzapg() {
        IObjectWrapper zzvh;
        zzanx zzanxVar = this.zzghe;
        if (zzanxVar != null) {
            try {
                zzvh = zzanxVar.zzvh();
            } catch (RemoteException e) {
                return null;
            }
        } else {
            zzanr zzanrVar = this.zzghc;
            if (zzanrVar != null) {
                try {
                    zzvh = zzanrVar.zzvh();
                } catch (RemoteException e2) {
                    return null;
                }
            } else {
                zzans zzansVar = this.zzghd;
                if (zzansVar != null) {
                    try {
                        zzvh = zzansVar.zzvh();
                    } catch (RemoteException e3) {
                        return null;
                    }
                } else {
                    zzvh = null;
                }
            }
        }
        if (zzvh != null) {
            try {
                return ObjectWrapper.unwrap(zzvh);
            } catch (IllegalArgumentException e4) {
                return null;
            }
        }
        return null;
    }

    private static HashMap<String, View> zzb(Map<String, WeakReference<View>> map) {
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

    private final boolean zzb(Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        Object obj;
        JSONObject jSONObject = this.zzesr.zzhka;
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcrf)).booleanValue() || jSONObject.length() == 0) {
            return true;
        }
        HashMap hashMap = map;
        if (map == null) {
            hashMap = new HashMap();
        }
        HashMap hashMap2 = map2;
        if (map2 == null) {
            hashMap2 = new HashMap();
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.putAll(hashMap);
        hashMap3.putAll(hashMap2);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray optJSONArray = jSONObject.optJSONArray(next);
            if (optJSONArray != null) {
                WeakReference weakReference = (WeakReference) hashMap3.get(next);
                if (weakReference == null || (obj = weakReference.get()) == null) {
                    return false;
                }
                Class<?> cls = obj.getClass();
                Class<?> cls2 = cls;
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrg)).booleanValue()) {
                    cls2 = cls;
                    if (next.equals("3010")) {
                        Object zzapg = zzapg();
                        if (zzapg == null) {
                            return false;
                        }
                        cls2 = zzapg.getClass();
                    }
                }
                try {
                    ArrayList arrayList = new ArrayList();
                    zzbh.zza(optJSONArray, arrayList);
                    zzr.zzkr();
                    if (!zzj.zza(this.context.getClassLoader(), cls2, arrayList)) {
                        return false;
                    }
                } catch (JSONException e) {
                }
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void cancelUnconfirmedClick() {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void destroy() {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final boolean isCustomClickGestureEnabled() {
        return this.zzesr.zzdne;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void setClickConfirmingView(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final JSONObject zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, MotionEvent motionEvent, View view2) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzgcq || !this.zzesr.zzdne) {
            zzad(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, Map<String, WeakReference<View>> map) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            zzanx zzanxVar = this.zzghe;
            if (zzanxVar != null) {
                zzanxVar.zzw(wrap);
                return;
            }
            zzanr zzanrVar = this.zzghc;
            if (zzanrVar != null) {
                zzanrVar.zzw(wrap);
                return;
            }
            zzans zzansVar = this.zzghd;
            if (zzansVar == null) {
                return;
            }
            zzansVar.zzw(wrap);
        } catch (RemoteException e) {
            zzd.zzd("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        try {
            IObjectWrapper wrap = ObjectWrapper.wrap(view);
            this.zzghf = zzb(map, map2);
            HashMap<String, View> zzb = zzb(map);
            HashMap<String, View> zzb2 = zzb(map2);
            zzanx zzanxVar = this.zzghe;
            if (zzanxVar != null) {
                zzanxVar.zzc(wrap, ObjectWrapper.wrap(zzb), ObjectWrapper.wrap(zzb2));
                return;
            }
            zzanr zzanrVar = this.zzghc;
            if (zzanrVar != null) {
                zzanrVar.zzc(wrap, ObjectWrapper.wrap(zzb), ObjectWrapper.wrap(zzb2));
                this.zzghc.zzv(wrap);
                return;
            }
            zzans zzansVar = this.zzghd;
            if (zzansVar == null) {
                return;
            }
            zzansVar.zzc(wrap, ObjectWrapper.wrap(zzb), ObjectWrapper.wrap(zzb2));
            this.zzghd.zzv(wrap);
        } catch (RemoteException e) {
            zzd.zzd("Failed to call trackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzgcq) {
            zzd.zzex("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.zzesr.zzdne) {
            zzd.zzex("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            zzad(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(zzagm zzagmVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(zzyj zzyjVar) {
        zzd.zzex("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zza(zzyn zzynVar) {
        zzd.zzex("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzanj() {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzank() {
        zzd.zzex("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzanl() {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzb(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        try {
            if (!this.zzgcn && this.zzesr.zzhjl != null) {
                this.zzgcn |= zzr.zzlb().zzb(this.context, this.zzbpn.zzbrp, this.zzesr.zzhjl.toString(), this.zzfwy.zzhkx);
            }
            if (!this.zzghf) {
                return;
            }
            zzanx zzanxVar = this.zzghe;
            if (zzanxVar != null && !zzanxVar.getOverrideImpressionRecording()) {
                this.zzghe.recordImpression();
                this.zzgci.onAdImpression();
                return;
            }
            zzanr zzanrVar = this.zzghc;
            if (zzanrVar != null && !zzanrVar.getOverrideImpressionRecording()) {
                this.zzghc.recordImpression();
                this.zzgci.onAdImpression();
                return;
            }
            zzans zzansVar = this.zzghd;
            if (zzansVar == null || zzansVar.getOverrideImpressionRecording()) {
                return;
            }
            this.zzghd.recordImpression();
            this.zzgci.onAdImpression();
        } catch (RemoteException e) {
            zzd.zzd("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzf(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzfw(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zzg(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final boolean zzh(Bundle bundle) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzccl
    public final void zztx() {
        this.zzgcq = true;
    }
}
