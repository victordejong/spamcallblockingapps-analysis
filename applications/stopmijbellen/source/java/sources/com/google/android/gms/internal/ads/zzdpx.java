package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpx.class */
public final class zzdpx extends zzdav {
    private final Executor zzc;
    private final zzdqc zzd;
    private final zzdqk zze;
    private final zzdrb zzf;
    private final zzdqh zzg;
    private final zzdqn zzh;
    private final zzgpl<zzduc> zzi;
    private final zzgpl<zzdua> zzj;
    private final zzgpl<zzduh> zzk;
    private final zzgpl<zzdty> zzl;
    private final zzgpl<zzduf> zzm;
    private zzdrw zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private final zzcgq zzr;
    private final zzalt zzs;
    private final zzcjf zzt;
    private final Context zzu;
    private final zzdpz zzv;
    private final zzepa zzw;
    private final Map<String, Boolean> zzx = new HashMap();
    private final List<zzayb> zzy = new ArrayList();
    private final zzayc zzz;

    public zzdpx(zzdau zzdauVar, Executor executor, zzdqc zzdqcVar, zzdqk zzdqkVar, zzdrb zzdrbVar, zzdqh zzdqhVar, zzdqn zzdqnVar, zzgpl<zzduc> zzgplVar, zzgpl<zzdua> zzgplVar2, zzgpl<zzduh> zzgplVar3, zzgpl<zzdty> zzgplVar4, zzgpl<zzduf> zzgplVar5, zzcgq zzcgqVar, zzalt zzaltVar, zzcjf zzcjfVar, Context context, zzdpz zzdpzVar, zzepa zzepaVar, zzayc zzaycVar) {
        super(zzdauVar);
        this.zzc = executor;
        this.zzd = zzdqcVar;
        this.zze = zzdqkVar;
        this.zzf = zzdrbVar;
        this.zzg = zzdqhVar;
        this.zzh = zzdqnVar;
        this.zzi = zzgplVar;
        this.zzj = zzgplVar2;
        this.zzk = zzgplVar3;
        this.zzl = zzgplVar4;
        this.zzm = zzgplVar5;
        this.zzr = zzcgqVar;
        this.zzs = zzaltVar;
        this.zzt = zzcjfVar;
        this.zzu = context;
        this.zzv = zzdpzVar;
        this.zzw = zzepaVar;
        this.zzz = zzaycVar;
    }

    public static boolean zzP(View view) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhd)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
        }
        zzt.zzp();
        long zzA = com.google.android.gms.ads.internal.util.zzt.zzA(view);
        if (!view.isShown() || !view.getGlobalVisibleRect(new Rect(), null)) {
            return false;
        }
        return zzA >= ((long) ((Integer) zzbgq.zzc().zzb(zzblj.zzhe)).intValue());
    }

    /* renamed from: zzR */
    public final void zzt(zzdrw zzdrwVar) {
        Iterator<String> keys;
        View view;
        zzalp zzc;
        synchronized (this) {
            if (this.zzo) {
                return;
            }
            this.zzn = zzdrwVar;
            this.zzf.zze(zzdrwVar);
            this.zze.zzx(zzdrwVar.zzf(), zzdrwVar.zzm(), zzdrwVar.zzn(), zzdrwVar, zzdrwVar);
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbQ)).booleanValue() && (zzc = this.zzs.zzc()) != null) {
                zzc.zzn(zzdrwVar.zzf());
            }
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbm)).booleanValue()) {
                zzfdn zzfdnVar = this.zzb;
                if (zzfdnVar.zzai && (keys = zzfdnVar.zzah.keys()) != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        WeakReference<View> weakReference = this.zzn.zzl().get(next);
                        this.zzx.put(next, Boolean.FALSE);
                        if (weakReference != null && (view = weakReference.get()) != null) {
                            zzayb zzaybVar = new zzayb(this.zzu, view);
                            this.zzy.add(zzaybVar);
                            zzaybVar.zzc(new zzdpw(this, next));
                        }
                    }
                }
            }
            if (zzdrwVar.zzi() == null) {
                return;
            }
            zzdrwVar.zzi().zzc(this.zzr);
        }
    }

    /* renamed from: zzS */
    public final void zzu(zzdrw zzdrwVar) {
        this.zze.zzy(zzdrwVar.zzf(), zzdrwVar.zzl());
        if (zzdrwVar.zzh() != null) {
            zzdrwVar.zzh().setClickable(false);
            zzdrwVar.zzh().removeAllViews();
        }
        if (zzdrwVar.zzi() != null) {
            zzdrwVar.zzi().zze(this.zzr);
        }
        this.zzn = null;
    }

    public static /* synthetic */ void zzh(zzdpx zzdpxVar) {
        try {
            int zzc = zzdpxVar.zzd.zzc();
            if (zzc == 1) {
                if (zzdpxVar.zzh.zzb() == null) {
                    return;
                }
                zzdpxVar.zzq("Google", true);
                zzdpxVar.zzh.zzb().zze(zzdpxVar.zzi.zzb());
            } else if (zzc == 2) {
                if (zzdpxVar.zzh.zza() == null) {
                    return;
                }
                zzdpxVar.zzq("Google", true);
                zzdpxVar.zzh.zza().zze(zzdpxVar.zzj.zzb());
            } else if (zzc == 3) {
                if (zzdpxVar.zzh.zzd(zzdpxVar.zzd.zzy()) == null) {
                    return;
                }
                if (zzdpxVar.zzd.zzr() != null) {
                    zzdpxVar.zzq("Google", true);
                }
                zzdpxVar.zzh.zzd(zzdpxVar.zzd.zzy()).zze(zzdpxVar.zzm.zzb());
            } else if (zzc == 6) {
                if (zzdpxVar.zzh.zzf() == null) {
                    return;
                }
                zzdpxVar.zzq("Google", true);
                zzdpxVar.zzh.zzf().zze(zzdpxVar.zzk.zzb());
            } else if (zzc != 7) {
                zzciz.zzg("Wrong native template id!");
            } else if (zzdpxVar.zzh.zzg() == null) {
            } else {
                zzdpxVar.zzh.zzg().zzg(zzdpxVar.zzl.zzb());
            }
        } catch (RemoteException e) {
            zzciz.zzh("RemoteException when notifyAdLoad is called", e);
        }
    }

    public final void zzA() {
        synchronized (this) {
            zzdrw zzdrwVar = this.zzn;
            if (zzdrwVar == null) {
                zzciz.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
                return;
            }
            final boolean z = zzdrwVar instanceof zzdqv;
            this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpu
                @Override // java.lang.Runnable
                public final void run() {
                    zzdpx.this.zzs(z);
                }
            });
        }
    }

    public final void zzB() {
        synchronized (this) {
            if (this.zzp) {
                return;
            }
            this.zze.zzq();
        }
    }

    public final void zzC(View view) {
        IObjectWrapper zzu = this.zzd.zzu();
        zzcop zzq = this.zzd.zzq();
        if (!this.zzg.zzc() || zzu == null || zzq == null || view == null) {
            return;
        }
        zzt.zzh().zzg(zzu, view);
    }

    public final void zzD(View view, MotionEvent motionEvent, View view2) {
        synchronized (this) {
            this.zze.zzr(view, motionEvent, view2);
        }
    }

    public final void zzE(Bundle bundle) {
        synchronized (this) {
            this.zze.zzs(bundle);
        }
    }

    public final void zzF(View view) {
        synchronized (this) {
            this.zze.zzt(view);
        }
    }

    public final void zzG() {
        synchronized (this) {
            this.zze.zzu();
        }
    }

    public final void zzH(zzbif zzbifVar) {
        synchronized (this) {
            this.zze.zzv(zzbifVar);
        }
    }

    public final void zzI(zzbit zzbitVar) {
        synchronized (this) {
            this.zzw.zza(zzbitVar);
        }
    }

    public final void zzJ(zzbqc zzbqcVar) {
        synchronized (this) {
            this.zze.zzw(zzbqcVar);
        }
    }

    public final void zzK(final zzdrw zzdrwVar) {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbk)).booleanValue()) {
                com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdps
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdpx.this.zzt(zzdrwVar);
                    }
                });
            } else {
                zzt(zzdrwVar);
            }
        }
    }

    public final void zzL(final zzdrw zzdrwVar) {
        synchronized (this) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbk)).booleanValue()) {
                com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpt
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdpx.this.zzu(zzdrwVar);
                    }
                });
            } else {
                zzu(zzdrwVar);
            }
        }
    }

    public final boolean zzM() {
        return this.zzg.zzd();
    }

    public final boolean zzN() {
        boolean zzz;
        synchronized (this) {
            zzz = this.zze.zzz();
        }
        return zzz;
    }

    public final boolean zzO() {
        return this.zzg.zzc();
    }

    public final boolean zzQ(Bundle bundle) {
        synchronized (this) {
            if (this.zzp) {
                return true;
            }
            boolean zzA = this.zze.zzA(bundle);
            this.zzp = zzA;
            return zzA;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdav
    public final void zzT() {
        synchronized (this) {
            this.zzo = true;
            this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpq
                @Override // java.lang.Runnable
                public final void run() {
                    zzdpx.this.zzr();
                }
            });
            super.zzT();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdav
    public final void zzU() {
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpr
            @Override // java.lang.Runnable
            public final void run() {
                zzdpx.zzh(zzdpx.this);
            }
        });
        if (this.zzd.zzc() != 7) {
            Executor executor = this.zzc;
            final zzdqk zzdqkVar = this.zze;
            Objects.requireNonNull(zzdqkVar);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdpv
                @Override // java.lang.Runnable
                public final void run() {
                    zzdqk.this.zzo();
                }
            });
        }
        super.zzU();
    }

    public final zzdpz zza() {
        return this.zzv;
    }

    public final String zzd() {
        return this.zzg.zza();
    }

    public final JSONObject zzf(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zzd;
        synchronized (this) {
            zzd = this.zze.zzd(view, map, map2);
        }
        return zzd;
    }

    public final JSONObject zzg(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zze;
        synchronized (this) {
            zze = this.zze.zze(view, map, map2);
        }
        return zze;
    }

    public final void zzi(View view) {
        IObjectWrapper zzu = this.zzd.zzu();
        if (!this.zzg.zzc() || zzu == null || view == null) {
            return;
        }
        zzt.zzh().zzd(zzu, view);
    }

    public final void zzk() {
        synchronized (this) {
            this.zze.zzg();
        }
    }

    public final void zzq(String str, boolean z) {
        String str2;
        zzcbn zzcbnVar;
        zzcbo zzcboVar;
        if (!this.zzg.zzc() || TextUtils.isEmpty(str)) {
            return;
        }
        zzcop zzq = this.zzd.zzq();
        zzcop zzr = this.zzd.zzr();
        if (zzq == null && zzr == null) {
            return;
        }
        if (zzq != null) {
            str2 = null;
        } else {
            str2 = "javascript";
            zzq = zzr;
        }
        if (!zzt.zzh().zzi(this.zzu)) {
            zzciz.zzj("Failed to initialize omid in InternalNativeAd");
            return;
        }
        zzcjf zzcjfVar = this.zzt;
        int i = zzcjfVar.zzb;
        int i2 = zzcjfVar.zzc;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        String sb2 = sb.toString();
        if (zzr != null) {
            zzcbnVar = zzcbn.VIDEO;
            zzcboVar = zzcbo.DEFINED_BY_JAVASCRIPT;
        } else {
            zzcbnVar = zzcbn.NATIVE_DISPLAY;
            zzcboVar = this.zzd.zzc() == 3 ? zzcbo.UNSPECIFIED : zzcbo.ONE_PIXEL;
        }
        IObjectWrapper zzb = zzt.zzh().zzb(sb2, zzq.zzI(), "", "javascript", str2, str, zzcboVar, zzcbnVar, this.zzb.zzaj);
        if (zzb == null) {
            zzciz.zzj("Failed to create omid session in InternalNativeAd");
            return;
        }
        this.zzd.zzaa(zzb);
        zzq.zzar(zzb);
        if (zzr != null) {
            zzt.zzh().zzg(zzb, zzr.zzH());
            this.zzq = true;
        }
        if (!z) {
            return;
        }
        zzt.zzh().zzh(zzb);
        zzq.zzd("onSdkLoaded", new C4251a());
    }

    public final /* synthetic */ void zzr() {
        this.zze.zzh();
        this.zzd.zzG();
    }

    public final /* synthetic */ void zzs(boolean z) {
        this.zze.zzn(this.zzn.zzf(), this.zzn.zzl(), this.zzn.zzm(), z);
    }

    public final void zzv(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            if (this.zzp) {
                return;
            }
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbm)).booleanValue() && this.zzb.zzai) {
                Iterator<String> it2 = this.zzx.keySet().iterator();
                do {
                    if (it2.hasNext()) {
                    }
                } while (this.zzx.get(it2.next()).booleanValue());
                return;
            }
            if (z) {
                this.zzf.zzd(this.zzn);
                this.zze.zzp(view, map, map2);
                this.zzp = true;
                return;
            }
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcx)).booleanValue() && map != null) {
                for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                    View view2 = entry.getValue().get();
                    if (view2 != null && zzP(view2)) {
                        this.zzf.zzd(this.zzn);
                        this.zze.zzp(view, map, map2);
                        this.zzp = true;
                        return;
                    }
                }
            }
        }
    }

    public final void zzw(zzbij zzbijVar) {
        synchronized (this) {
            this.zze.zzi(zzbijVar);
        }
    }

    public final void zzx(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            this.zzf.zzc(this.zzn);
            this.zze.zzj(view, view2, map, map2, z);
            if (this.zzq && this.zzd.zzr() != null) {
                this.zzd.zzr().zzd("onSdkAdUserInteractionClick", new C4251a());
            }
        }
    }

    public final void zzy(String str) {
        synchronized (this) {
            this.zze.zzk(str);
        }
    }

    public final void zzz(Bundle bundle) {
        synchronized (this) {
            this.zze.zzl(bundle);
        }
    }
}
