package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.tenor.android.core.constant.StringConstant;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p1727n3.p1788g.C26174a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmh.class */
public final class zzdmh extends zzcxg {
    private final Executor zzc;
    private final zzdmm zzd;
    private final zzdmu zze;
    private final zzdnl zzf;
    private final zzdmr zzg;
    private final zzdmx zzh;
    private final zzgku<zzdqm> zzi;
    private final zzgku<zzdqk> zzj;
    private final zzgku<zzdqr> zzk;
    private final zzgku<zzdqi> zzl;
    private final zzgku<zzdqp> zzm;
    private zzdog zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzq;
    private final zzcei zzr;
    private final zzaas zzs;
    private final zzcgz zzt;
    private final Context zzu;
    private final zzdmj zzv;
    private final zzell zzw;
    private final Map<String, Boolean> zzx = new HashMap();
    private final List<zzawe> zzy = new ArrayList();
    private final zzawf zzz;

    public zzdmh(zzcxf zzcxfVar, Executor executor, zzdmm zzdmmVar, zzdmu zzdmuVar, zzdnl zzdnlVar, zzdmr zzdmrVar, zzdmx zzdmxVar, zzgku<zzdqm> zzgkuVar, zzgku<zzdqk> zzgkuVar2, zzgku<zzdqr> zzgkuVar3, zzgku<zzdqi> zzgkuVar4, zzgku<zzdqp> zzgkuVar5, zzcei zzceiVar, zzaas zzaasVar, zzcgz zzcgzVar, Context context, zzdmj zzdmjVar, zzell zzellVar, zzawf zzawfVar) {
        super(zzcxfVar);
        this.zzc = executor;
        this.zzd = zzdmmVar;
        this.zze = zzdmuVar;
        this.zzf = zzdnlVar;
        this.zzg = zzdmrVar;
        this.zzh = zzdmxVar;
        this.zzi = zzgkuVar;
        this.zzj = zzgkuVar2;
        this.zzk = zzgkuVar3;
        this.zzl = zzgkuVar4;
        this.zzm = zzgkuVar5;
        this.zzr = zzceiVar;
        this.zzs = zzaasVar;
        this.zzt = zzcgzVar;
        this.zzu = context;
        this.zzv = zzdmjVar;
        this.zzw = zzellVar;
        this.zzz = zzawfVar;
    }

    public static boolean zzC(View view) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzgS)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
        }
        zzt.zzc();
        long zzA = zzs.zzA(view);
        if (!view.isShown() || !view.getGlobalVisibleRect(new Rect(), null)) {
            return false;
        }
        return zzA >= ((long) ((Integer) zzbet.zzc().zzc(zzbjl.zzgT)).intValue());
    }

    /* renamed from: zzQ */
    public final void zzN(zzdog zzdogVar) {
        Iterator<String> keys;
        View view;
        zzaao zzb;
        synchronized (this) {
            if (this.zzo) {
                return;
            }
            this.zzn = zzdogVar;
            this.zzf.zza(zzdogVar);
            this.zze.zzd(zzdogVar.zzbx(), zzdogVar.zzk(), zzdogVar.zzl(), zzdogVar, zzdogVar);
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbK)).booleanValue() && (zzb = this.zzs.zzb()) != null) {
                zzb.zzn(zzdogVar.zzbx());
            }
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbg)).booleanValue()) {
                zzezz zzezzVar = this.zzb;
                if (zzezzVar.zzah && (keys = zzezzVar.zzag.keys()) != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        WeakReference<View> weakReference = this.zzn.zzj().get(next);
                        this.zzx.put(next, Boolean.FALSE);
                        if (weakReference != null && (view = weakReference.get()) != null) {
                            zzawe zzaweVar = new zzawe(this.zzu, view);
                            this.zzy.add(zzaweVar);
                            zzaweVar.zza(new zzdmg(this, next));
                        }
                    }
                }
            }
            if (zzdogVar.zzh() == null) {
                return;
            }
            zzdogVar.zzh().zza(this.zzr);
        }
    }

    /* renamed from: zzR */
    public final void zzM(zzdog zzdogVar) {
        this.zze.zze(zzdogVar.zzbx(), zzdogVar.zzj());
        if (zzdogVar.zzbt() != null) {
            zzdogVar.zzbt().setClickable(false);
            zzdogVar.zzbt().removeAllViews();
        }
        if (zzdogVar.zzh() != null) {
            zzdogVar.zzh().zzb(this.zzr);
        }
        this.zzn = null;
    }

    public final void zzA() {
        synchronized (this) {
            zzdog zzdogVar = this.zzn;
            if (zzdogVar == null) {
                zzcgt.zzd("Ad should be associated with an ad view before calling recordCustomClickGesture()");
                return;
            }
            this.zzc.execute(new Runnable(this, zzdogVar instanceof zzdnf) { // from class: com.google.android.gms.internal.ads.zzdmf
                private final zzdmh zza;
                private final boolean zzb;

                {
                    this.zza = this;
                    this.zzb = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzL(this.zzb);
                }
            });
        }
    }

    public final boolean zzB() {
        boolean zzk;
        synchronized (this) {
            zzk = this.zze.zzk();
        }
        return zzk;
    }

    public final boolean zzD() {
        return this.zzg.zzc();
    }

    public final String zzE() {
        return this.zzg.zzf();
    }

    public final void zzF(String str, boolean z) {
        String str2;
        zzbzl zzbzlVar;
        zzbzm zzbzmVar;
        if (!this.zzg.zzd() || TextUtils.isEmpty(str)) {
            return;
        }
        zzcml zzT = this.zzd.zzT();
        zzcml zzR = this.zzd.zzR();
        if (zzT == null && zzR == null) {
            return;
        }
        if (zzT != null) {
            str2 = null;
        } else {
            str2 = "javascript";
            zzT = zzR;
        }
        if (!zzt.zzr().zza(this.zzu)) {
            zzcgt.zzi("Failed to initialize omid in InternalNativeAd");
            return;
        }
        zzcgz zzcgzVar = this.zzt;
        int i = zzcgzVar.zzb;
        int i2 = zzcgzVar.zzc;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append(StringConstant.DOT);
        sb.append(i2);
        String sb2 = sb.toString();
        if (zzR != null) {
            zzbzlVar = zzbzl.VIDEO;
            zzbzmVar = zzbzm.DEFINED_BY_JAVASCRIPT;
        } else {
            zzbzlVar = zzbzl.NATIVE_DISPLAY;
            zzbzmVar = this.zzd.zzv() == 3 ? zzbzm.UNSPECIFIED : zzbzm.ONE_PIXEL;
        }
        IObjectWrapper zze = zzt.zzr().zze(sb2, zzT.zzG(), "", "javascript", str2, str, zzbzmVar, zzbzlVar, this.zzb.zzai);
        if (zze == null) {
            zzcgt.zzi("Failed to create omid session in InternalNativeAd");
            return;
        }
        this.zzd.zzp(zze);
        zzT.zzak(zze);
        if (zzR != null) {
            zzt.zzr().zzh(zze, zzR.zzH());
            this.zzq = true;
        }
        if (!z) {
            return;
        }
        zzt.zzr().zzf(zze);
        zzT.zze("onSdkLoaded", new C26174a());
    }

    public final boolean zzG() {
        return this.zzg.zzd();
    }

    public final void zzH(View view) {
        IObjectWrapper zzU = this.zzd.zzU();
        zzcml zzT = this.zzd.zzT();
        if (!this.zzg.zzd() || zzU == null || zzT == null || view == null) {
            return;
        }
        zzt.zzr().zzh(zzU, view);
    }

    public final void zzI(View view) {
        IObjectWrapper zzU = this.zzd.zzU();
        if (!this.zzg.zzd() || zzU == null || view == null) {
            return;
        }
        zzt.zzr().zzi(zzU, view);
    }

    public final zzdmj zzJ() {
        return this.zzv;
    }

    public final void zzK(zzbgw zzbgwVar) {
        synchronized (this) {
            this.zzw.zza(zzbgwVar);
        }
    }

    public final /* synthetic */ void zzL(boolean z) {
        this.zze.zzi(this.zzn.zzbx(), this.zzn.zzj(), this.zzn.zzk(), z);
    }

    public final /* synthetic */ void zzO() {
        this.zze.zzA();
        this.zzd.zzZ();
    }

    public final /* bridge */ /* synthetic */ void zzP() {
        try {
            int zzv = this.zzd.zzv();
            if (zzv == 1) {
                if (this.zzh.zza() == null) {
                    return;
                }
                zzF("Google", true);
                this.zzh.zza().zze(this.zzi.zzb());
            } else if (zzv == 2) {
                if (this.zzh.zzb() == null) {
                    return;
                }
                zzF("Google", true);
                this.zzh.zzb().zze(this.zzj.zzb());
            } else if (zzv == 3) {
                if (this.zzh.zzf(this.zzd.zzQ()) == null) {
                    return;
                }
                if (this.zzd.zzR() != null) {
                    zzF("Google", true);
                }
                this.zzh.zzf(this.zzd.zzQ()).zze(this.zzm.zzb());
            } else if (zzv == 6) {
                if (this.zzh.zzc() == null) {
                    return;
                }
                zzF("Google", true);
                this.zzh.zzc().zze(this.zzk.zzb());
            } else if (zzv != 7) {
                zzcgt.zzf("Wrong native template id!");
            } else if (this.zzh.zze() == null) {
            } else {
                this.zzh.zze().zze(this.zzl.zzb());
            }
        } catch (RemoteException e) {
            zzcgt.zzg("RemoteException when notifyAdLoad is called", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzS() {
        this.zzc.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdma
            private final zzdmh zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzP();
            }
        });
        if (this.zzd.zzv() != 7) {
            Executor executor = this.zzc;
            zzdmu zzdmuVar = this.zze;
            zzdmuVar.getClass();
            executor.execute(zzdmb.zza(zzdmuVar));
        }
        super.zzS();
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzT() {
        synchronized (this) {
            this.zzo = true;
            this.zzc.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzdmc
                private final zzdmh zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzO();
                }
            });
            super.zzT();
        }
    }

    public final void zzc(String str) {
        synchronized (this) {
            this.zze.zzg(str);
        }
    }

    public final void zze() {
        synchronized (this) {
            if (this.zzp) {
                return;
            }
            this.zze.zzq();
        }
    }

    public final void zzf(Bundle bundle) {
        synchronized (this) {
            this.zze.zzh(bundle);
        }
    }

    public final boolean zzg(Bundle bundle) {
        synchronized (this) {
            if (this.zzp) {
                return true;
            }
            boolean zzz = this.zze.zzz(bundle);
            this.zzp = zzz;
            return zzz;
        }
    }

    public final void zzh(Bundle bundle) {
        synchronized (this) {
            this.zze.zzn(bundle);
        }
    }

    public final void zzj(zzdog zzdogVar) {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbe)).booleanValue()) {
                zzs.zza.post(new Runnable(this, zzdogVar) { // from class: com.google.android.gms.internal.ads.zzdmd
                    private final zzdmh zza;
                    private final zzdog zzb;

                    {
                        this.zza = this;
                        this.zzb = zzdogVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzN(this.zzb);
                    }
                });
            } else {
                zzN(zzdogVar);
            }
        }
    }

    public final void zzk(zzdog zzdogVar) {
        synchronized (this) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbe)).booleanValue()) {
                zzs.zza.post(new Runnable(this, zzdogVar) { // from class: com.google.android.gms.internal.ads.zzdme
                    private final zzdmh zza;
                    private final zzdog zzb;

                    {
                        this.zza = this;
                        this.zzb = zzdogVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzM(this.zzb);
                    }
                });
            } else {
                zzM(zzdogVar);
            }
        }
    }

    public final void zzp(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            this.zzf.zzb(this.zzn);
            this.zze.zzf(view, view2, map, map2, z);
            if (this.zzq && this.zzd.zzR() != null) {
                this.zzd.zzR().zze("onSdkAdUserInteractionClick", new C26174a());
            }
        }
    }

    public final void zzq(View view, MotionEvent motionEvent, View view2) {
        synchronized (this) {
            this.zze.zzm(view, motionEvent, view2);
        }
    }

    public final void zzr(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        synchronized (this) {
            if (this.zzp) {
                return;
            }
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbg)).booleanValue() && this.zzb.zzah) {
                Iterator<String> it = this.zzx.keySet().iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (this.zzx.get(it.next()).booleanValue());
                return;
            }
            if (z) {
                this.zzf.zzc(this.zzn);
                this.zze.zzx(view, map, map2);
                this.zzp = true;
                return;
            }
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzcq)).booleanValue() && map != null) {
                for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                    View view2 = entry.getValue().get();
                    if (view2 != null && zzC(view2)) {
                        this.zzf.zzc(this.zzn);
                        this.zze.zzx(view, map, map2);
                        this.zzp = true;
                        return;
                    }
                }
            }
        }
    }

    public final JSONObject zzs(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zzo;
        synchronized (this) {
            zzo = this.zze.zzo(view, map, map2);
        }
        return zzo;
    }

    public final JSONObject zzt(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        JSONObject zzp;
        synchronized (this) {
            zzp = this.zze.zzp(view, map, map2);
        }
        return zzp;
    }

    public final void zzu(View view) {
        synchronized (this) {
            this.zze.zzr(view);
        }
    }

    public final void zzv(zzbob zzbobVar) {
        synchronized (this) {
            this.zze.zzs(zzbobVar);
        }
    }

    public final void zzw() {
        synchronized (this) {
            this.zze.zzt();
        }
    }

    public final void zzx(zzbgm zzbgmVar) {
        synchronized (this) {
            this.zze.zzu(zzbgmVar);
        }
    }

    public final void zzy(zzbgi zzbgiVar) {
        synchronized (this) {
            this.zze.zzv(zzbgiVar);
        }
    }

    public final void zzz() {
        synchronized (this) {
            this.zze.zzj();
        }
    }
}
