package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
import p226s.C4263g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqc.class */
public final class zzdqc {
    private int zza;
    private zzbiz zzb;
    private zzboa zzc;
    private View zzd;
    private List<?> zze;
    private zzbjs zzg;
    private Bundle zzh;
    private zzcop zzi;
    private zzcop zzj;
    private zzcop zzk;
    private IObjectWrapper zzl;
    private View zzm;
    private View zzn;
    private IObjectWrapper zzo;
    private double zzp;
    private zzboi zzq;
    private zzboi zzr;
    private String zzs;
    private float zzv;
    private String zzw;
    private final C4263g<String, zzbnu> zzt = new C4263g<>();
    private final C4263g<String, String> zzu = new C4263g<>();
    private List<zzbjs> zzf = Collections.emptyList();

    public static zzdqc zzab(zzbxs zzbxsVar) {
        try {
            zzdqb zzaf = zzaf(zzbxsVar.zzg(), null);
            zzboa zzh = zzbxsVar.zzh();
            View view = (View) zzah(zzbxsVar.zzj());
            String zzo = zzbxsVar.zzo();
            List<?> zzr = zzbxsVar.zzr();
            String zzm = zzbxsVar.zzm();
            Bundle zzf = zzbxsVar.zzf();
            String zzn = zzbxsVar.zzn();
            View view2 = (View) zzah(zzbxsVar.zzk());
            IObjectWrapper zzl = zzbxsVar.zzl();
            String zzq = zzbxsVar.zzq();
            String zzp = zzbxsVar.zzp();
            double zze = zzbxsVar.zze();
            zzboi zzi = zzbxsVar.zzi();
            zzdqc zzdqcVar = new zzdqc();
            zzdqcVar.zza = 2;
            zzdqcVar.zzb = zzaf;
            zzdqcVar.zzc = zzh;
            zzdqcVar.zzd = view;
            zzdqcVar.zzU("headline", zzo);
            zzdqcVar.zze = zzr;
            zzdqcVar.zzU("body", zzm);
            zzdqcVar.zzh = zzf;
            zzdqcVar.zzU("call_to_action", zzn);
            zzdqcVar.zzm = view2;
            zzdqcVar.zzo = zzl;
            zzdqcVar.zzU("store", zzq);
            zzdqcVar.zzU("price", zzp);
            zzdqcVar.zzp = zze;
            zzdqcVar.zzq = zzi;
            return zzdqcVar;
        } catch (RemoteException e) {
            zzciz.zzk("Failed to get native ad from app install ad mapper", e);
            return null;
        }
    }

    public static zzdqc zzac(zzbxt zzbxtVar) {
        try {
            zzdqb zzaf = zzaf(zzbxtVar.zzf(), null);
            zzboa zzg = zzbxtVar.zzg();
            View view = (View) zzah(zzbxtVar.zzi());
            String zzo = zzbxtVar.zzo();
            List<?> zzp = zzbxtVar.zzp();
            String zzm = zzbxtVar.zzm();
            Bundle zze = zzbxtVar.zze();
            String zzn = zzbxtVar.zzn();
            View view2 = (View) zzah(zzbxtVar.zzj());
            IObjectWrapper zzk = zzbxtVar.zzk();
            String zzl = zzbxtVar.zzl();
            zzboi zzh = zzbxtVar.zzh();
            zzdqc zzdqcVar = new zzdqc();
            zzdqcVar.zza = 1;
            zzdqcVar.zzb = zzaf;
            zzdqcVar.zzc = zzg;
            zzdqcVar.zzd = view;
            zzdqcVar.zzU("headline", zzo);
            zzdqcVar.zze = zzp;
            zzdqcVar.zzU("body", zzm);
            zzdqcVar.zzh = zze;
            zzdqcVar.zzU("call_to_action", zzn);
            zzdqcVar.zzm = view2;
            zzdqcVar.zzo = zzk;
            zzdqcVar.zzU("advertiser", zzl);
            zzdqcVar.zzr = zzh;
            return zzdqcVar;
        } catch (RemoteException e) {
            zzciz.zzk("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    public static zzdqc zzad(zzbxs zzbxsVar) {
        try {
            return zzag(zzaf(zzbxsVar.zzg(), null), zzbxsVar.zzh(), (View) zzah(zzbxsVar.zzj()), zzbxsVar.zzo(), zzbxsVar.zzr(), zzbxsVar.zzm(), zzbxsVar.zzf(), zzbxsVar.zzn(), (View) zzah(zzbxsVar.zzk()), zzbxsVar.zzl(), zzbxsVar.zzq(), zzbxsVar.zzp(), zzbxsVar.zze(), zzbxsVar.zzi(), null, 0.0f);
        } catch (RemoteException e) {
            zzciz.zzk("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    public static zzdqc zzae(zzbxt zzbxtVar) {
        try {
            return zzag(zzaf(zzbxtVar.zzf(), null), zzbxtVar.zzg(), (View) zzah(zzbxtVar.zzi()), zzbxtVar.zzo(), zzbxtVar.zzp(), zzbxtVar.zzm(), zzbxtVar.zze(), zzbxtVar.zzn(), (View) zzah(zzbxtVar.zzj()), zzbxtVar.zzk(), null, null, -1.0d, zzbxtVar.zzh(), zzbxtVar.zzl(), 0.0f);
        } catch (RemoteException e) {
            zzciz.zzk("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    private static zzdqb zzaf(zzbiz zzbizVar, zzbxw zzbxwVar) {
        if (zzbizVar == null) {
            return null;
        }
        return new zzdqb(zzbizVar, zzbxwVar);
    }

    private static zzdqc zzag(zzbiz zzbizVar, zzboa zzboaVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d, zzboi zzboiVar, String str6, float f) {
        zzdqc zzdqcVar = new zzdqc();
        zzdqcVar.zza = 6;
        zzdqcVar.zzb = zzbizVar;
        zzdqcVar.zzc = zzboaVar;
        zzdqcVar.zzd = view;
        zzdqcVar.zzU("headline", str);
        zzdqcVar.zze = list;
        zzdqcVar.zzU("body", str2);
        zzdqcVar.zzh = bundle;
        zzdqcVar.zzU("call_to_action", str3);
        zzdqcVar.zzm = view2;
        zzdqcVar.zzo = iObjectWrapper;
        zzdqcVar.zzU("store", str4);
        zzdqcVar.zzU("price", str5);
        zzdqcVar.zzp = d;
        zzdqcVar.zzq = zzboiVar;
        zzdqcVar.zzU("advertiser", str6);
        zzdqcVar.zzP(f);
        return zzdqcVar;
    }

    private static <T> T zzah(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return (T) ObjectWrapper.unwrap(iObjectWrapper);
    }

    public static zzdqc zzs(zzbxw zzbxwVar) {
        try {
            return zzag(zzaf(zzbxwVar.zzj(), zzbxwVar), zzbxwVar.zzk(), (View) zzah(zzbxwVar.zzm()), zzbxwVar.zzs(), zzbxwVar.zzv(), zzbxwVar.zzq(), zzbxwVar.zzi(), zzbxwVar.zzr(), (View) zzah(zzbxwVar.zzn()), zzbxwVar.zzo(), zzbxwVar.zzu(), zzbxwVar.zzt(), zzbxwVar.zze(), zzbxwVar.zzl(), zzbxwVar.zzp(), zzbxwVar.zzf());
        } catch (RemoteException e) {
            zzciz.zzk("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    public final String zzA() {
        String str;
        synchronized (this) {
            str = this.zzw;
        }
        return str;
    }

    public final String zzB() {
        String zzD;
        synchronized (this) {
            zzD = zzD("price");
        }
        return zzD;
    }

    public final String zzC() {
        String zzD;
        synchronized (this) {
            zzD = zzD("store");
        }
        return zzD;
    }

    public final String zzD(String str) {
        String orDefault;
        synchronized (this) {
            orDefault = this.zzu.getOrDefault(str, null);
        }
        return orDefault;
    }

    public final List<?> zzE() {
        List<?> list;
        synchronized (this) {
            list = this.zze;
        }
        return list;
    }

    public final List<zzbjs> zzF() {
        List<zzbjs> list;
        synchronized (this) {
            list = this.zzf;
        }
        return list;
    }

    public final void zzG() {
        synchronized (this) {
            zzcop zzcopVar = this.zzi;
            if (zzcopVar != null) {
                zzcopVar.destroy();
                this.zzi = null;
            }
            zzcop zzcopVar2 = this.zzj;
            if (zzcopVar2 != null) {
                zzcopVar2.destroy();
                this.zzj = null;
            }
            zzcop zzcopVar3 = this.zzk;
            if (zzcopVar3 != null) {
                zzcopVar3.destroy();
                this.zzk = null;
            }
            this.zzl = null;
            this.zzt.clear();
            this.zzu.clear();
            this.zzb = null;
            this.zzc = null;
            this.zzd = null;
            this.zze = null;
            this.zzh = null;
            this.zzm = null;
            this.zzn = null;
            this.zzo = null;
            this.zzq = null;
            this.zzr = null;
            this.zzs = null;
        }
    }

    public final void zzH(zzboa zzboaVar) {
        synchronized (this) {
            this.zzc = zzboaVar;
        }
    }

    public final void zzI(String str) {
        synchronized (this) {
            this.zzs = str;
        }
    }

    public final void zzJ(zzbjs zzbjsVar) {
        synchronized (this) {
            this.zzg = zzbjsVar;
        }
    }

    public final void zzK(zzboi zzboiVar) {
        synchronized (this) {
            this.zzq = zzboiVar;
        }
    }

    public final void zzL(String str, zzbnu zzbnuVar) {
        synchronized (this) {
            if (zzbnuVar == null) {
                this.zzt.remove(str);
            } else {
                this.zzt.put(str, zzbnuVar);
            }
        }
    }

    public final void zzM(zzcop zzcopVar) {
        synchronized (this) {
            this.zzj = zzcopVar;
        }
    }

    public final void zzN(List<zzbnu> list) {
        synchronized (this) {
            this.zze = list;
        }
    }

    public final void zzO(zzboi zzboiVar) {
        synchronized (this) {
            this.zzr = zzboiVar;
        }
    }

    public final void zzP(float f) {
        synchronized (this) {
            this.zzv = f;
        }
    }

    public final void zzQ(List<zzbjs> list) {
        synchronized (this) {
            this.zzf = list;
        }
    }

    public final void zzR(zzcop zzcopVar) {
        synchronized (this) {
            this.zzk = zzcopVar;
        }
    }

    public final void zzS(String str) {
        synchronized (this) {
            this.zzw = str;
        }
    }

    public final void zzT(double d) {
        synchronized (this) {
            this.zzp = d;
        }
    }

    public final void zzU(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                this.zzu.remove(str);
            } else {
                this.zzu.put(str, str2);
            }
        }
    }

    public final void zzV(int i) {
        synchronized (this) {
            this.zza = i;
        }
    }

    public final void zzW(zzbiz zzbizVar) {
        synchronized (this) {
            this.zzb = zzbizVar;
        }
    }

    public final void zzX(View view) {
        synchronized (this) {
            this.zzm = view;
        }
    }

    public final void zzY(zzcop zzcopVar) {
        synchronized (this) {
            this.zzi = zzcopVar;
        }
    }

    public final void zzZ(View view) {
        synchronized (this) {
            this.zzn = view;
        }
    }

    public final double zza() {
        double d;
        synchronized (this) {
            d = this.zzp;
        }
        return d;
    }

    public final void zzaa(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.zzl = iObjectWrapper;
        }
    }

    public final float zzb() {
        float f;
        synchronized (this) {
            f = this.zzv;
        }
        return f;
    }

    public final int zzc() {
        int i;
        synchronized (this) {
            i = this.zza;
        }
        return i;
    }

    public final Bundle zzd() {
        Bundle bundle;
        synchronized (this) {
            if (this.zzh == null) {
                this.zzh = new Bundle();
            }
            bundle = this.zzh;
        }
        return bundle;
    }

    public final View zze() {
        View view;
        synchronized (this) {
            view = this.zzd;
        }
        return view;
    }

    public final View zzf() {
        View view;
        synchronized (this) {
            view = this.zzm;
        }
        return view;
    }

    public final View zzg() {
        View view;
        synchronized (this) {
            view = this.zzn;
        }
        return view;
    }

    public final C4263g<String, zzbnu> zzh() {
        C4263g<String, zzbnu> c4263g;
        synchronized (this) {
            c4263g = this.zzt;
        }
        return c4263g;
    }

    public final C4263g<String, String> zzi() {
        C4263g<String, String> c4263g;
        synchronized (this) {
            c4263g = this.zzu;
        }
        return c4263g;
    }

    public final zzbiz zzj() {
        zzbiz zzbizVar;
        synchronized (this) {
            zzbizVar = this.zzb;
        }
        return zzbizVar;
    }

    public final zzbjs zzk() {
        zzbjs zzbjsVar;
        synchronized (this) {
            zzbjsVar = this.zzg;
        }
        return zzbjsVar;
    }

    public final zzboa zzl() {
        zzboa zzboaVar;
        synchronized (this) {
            zzboaVar = this.zzc;
        }
        return zzboaVar;
    }

    public final zzboi zzm() {
        List<?> list = this.zze;
        if (list == null || list.size() == 0) {
            return null;
        }
        Object obj = this.zze.get(0);
        if (!(obj instanceof IBinder)) {
            return null;
        }
        return zzboh.zzg((IBinder) obj);
    }

    public final zzboi zzn() {
        zzboi zzboiVar;
        synchronized (this) {
            zzboiVar = this.zzq;
        }
        return zzboiVar;
    }

    public final zzboi zzo() {
        zzboi zzboiVar;
        synchronized (this) {
            zzboiVar = this.zzr;
        }
        return zzboiVar;
    }

    public final zzcop zzp() {
        zzcop zzcopVar;
        synchronized (this) {
            zzcopVar = this.zzj;
        }
        return zzcopVar;
    }

    public final zzcop zzq() {
        zzcop zzcopVar;
        synchronized (this) {
            zzcopVar = this.zzk;
        }
        return zzcopVar;
    }

    public final zzcop zzr() {
        zzcop zzcopVar;
        synchronized (this) {
            zzcopVar = this.zzi;
        }
        return zzcopVar;
    }

    public final IObjectWrapper zzt() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.zzo;
        }
        return iObjectWrapper;
    }

    public final IObjectWrapper zzu() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.zzl;
        }
        return iObjectWrapper;
    }

    public final String zzv() {
        String zzD;
        synchronized (this) {
            zzD = zzD("advertiser");
        }
        return zzD;
    }

    public final String zzw() {
        String zzD;
        synchronized (this) {
            zzD = zzD("body");
        }
        return zzD;
    }

    public final String zzx() {
        String zzD;
        synchronized (this) {
            zzD = zzD("call_to_action");
        }
        return zzD;
    }

    public final String zzy() {
        String str;
        synchronized (this) {
            str = this.zzs;
        }
        return str;
    }

    public final String zzz() {
        String zzD;
        synchronized (this) {
            zzD = zzD("headline");
        }
        return zzD;
    }
}
