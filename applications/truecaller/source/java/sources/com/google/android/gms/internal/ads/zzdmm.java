package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
import p1727n3.p1788g.C26187h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmm.class */
public final class zzdmm {
    private int zza;
    private zzbhc zzb;
    private zzblz zzc;
    private View zzd;
    private List<?> zze;
    private zzbhu zzg;
    private Bundle zzh;
    private zzcml zzi;
    private zzcml zzj;
    private zzcml zzk;
    private IObjectWrapper zzl;
    private View zzm;
    private View zzn;
    private IObjectWrapper zzo;
    private double zzp;
    private zzbmh zzq;
    private zzbmh zzr;
    private String zzs;
    private float zzv;
    private String zzw;
    private final C26187h<String, zzblr> zzt = new C26187h<>();
    private final C26187h<String, String> zzu = new C26187h<>();
    private List<zzbhu> zzf = Collections.emptyList();

    public static zzdmm zzaa(zzbvv zzbvvVar) {
        try {
            return zzaf(zzah(zzbvvVar.zzn(), zzbvvVar), zzbvvVar.zzo(), (View) zzag(zzbvvVar.zzp()), zzbvvVar.zze(), zzbvvVar.zzf(), zzbvvVar.zzg(), zzbvvVar.zzs(), zzbvvVar.zzi(), (View) zzag(zzbvvVar.zzq()), zzbvvVar.zzr(), zzbvvVar.zzl(), zzbvvVar.zzm(), zzbvvVar.zzk(), zzbvvVar.zzh(), zzbvvVar.zzj(), zzbvvVar.zzz());
        } catch (RemoteException e) {
            zzcgt.zzj("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    public static zzdmm zzab(zzbvs zzbvsVar) {
        try {
            zzdml zzah = zzah(zzbvsVar.zzs(), null);
            zzblz zzt = zzbvsVar.zzt();
            View view = (View) zzag(zzbvsVar.zzr());
            String zze = zzbvsVar.zze();
            List<?> zzf = zzbvsVar.zzf();
            String zzg = zzbvsVar.zzg();
            Bundle zzp = zzbvsVar.zzp();
            String zzi = zzbvsVar.zzi();
            View view2 = (View) zzag(zzbvsVar.zzu());
            IObjectWrapper zzv = zzbvsVar.zzv();
            String zzj = zzbvsVar.zzj();
            zzbmh zzh = zzbvsVar.zzh();
            zzdmm zzdmmVar = new zzdmm();
            zzdmmVar.zza = 1;
            zzdmmVar.zzb = zzah;
            zzdmmVar.zzc = zzt;
            zzdmmVar.zzd = view;
            zzdmmVar.zzq("headline", zze);
            zzdmmVar.zze = zzf;
            zzdmmVar.zzq("body", zzg);
            zzdmmVar.zzh = zzp;
            zzdmmVar.zzq("call_to_action", zzi);
            zzdmmVar.zzm = view2;
            zzdmmVar.zzo = zzv;
            zzdmmVar.zzq("advertiser", zzj);
            zzdmmVar.zzr = zzh;
            return zzdmmVar;
        } catch (RemoteException e) {
            zzcgt.zzj("Failed to get native ad from content ad mapper", e);
            return null;
        }
    }

    public static zzdmm zzac(zzbvr zzbvrVar) {
        try {
            zzdml zzah = zzah(zzbvrVar.zzt(), null);
            zzblz zzv = zzbvrVar.zzv();
            View view = (View) zzag(zzbvrVar.zzu());
            String zze = zzbvrVar.zze();
            List<?> zzf = zzbvrVar.zzf();
            String zzg = zzbvrVar.zzg();
            Bundle zzr = zzbvrVar.zzr();
            String zzi = zzbvrVar.zzi();
            View view2 = (View) zzag(zzbvrVar.zzw());
            IObjectWrapper zzx = zzbvrVar.zzx();
            String zzk = zzbvrVar.zzk();
            String zzl = zzbvrVar.zzl();
            double zzj = zzbvrVar.zzj();
            zzbmh zzh = zzbvrVar.zzh();
            zzdmm zzdmmVar = new zzdmm();
            zzdmmVar.zza = 2;
            zzdmmVar.zzb = zzah;
            zzdmmVar.zzc = zzv;
            zzdmmVar.zzd = view;
            zzdmmVar.zzq("headline", zze);
            zzdmmVar.zze = zzf;
            zzdmmVar.zzq("body", zzg);
            zzdmmVar.zzh = zzr;
            zzdmmVar.zzq("call_to_action", zzi);
            zzdmmVar.zzm = view2;
            zzdmmVar.zzo = zzx;
            zzdmmVar.zzq("store", zzk);
            zzdmmVar.zzq("price", zzl);
            zzdmmVar.zzp = zzj;
            zzdmmVar.zzq = zzh;
            return zzdmmVar;
        } catch (RemoteException e) {
            zzcgt.zzj("Failed to get native ad from app install ad mapper", e);
            return null;
        }
    }

    public static zzdmm zzad(zzbvr zzbvrVar) {
        try {
            return zzaf(zzah(zzbvrVar.zzt(), null), zzbvrVar.zzv(), (View) zzag(zzbvrVar.zzu()), zzbvrVar.zze(), zzbvrVar.zzf(), zzbvrVar.zzg(), zzbvrVar.zzr(), zzbvrVar.zzi(), (View) zzag(zzbvrVar.zzw()), zzbvrVar.zzx(), zzbvrVar.zzk(), zzbvrVar.zzl(), zzbvrVar.zzj(), zzbvrVar.zzh(), null, 0.0f);
        } catch (RemoteException e) {
            zzcgt.zzj("Failed to get native ad assets from app install ad mapper", e);
            return null;
        }
    }

    public static zzdmm zzae(zzbvs zzbvsVar) {
        try {
            return zzaf(zzah(zzbvsVar.zzs(), null), zzbvsVar.zzt(), (View) zzag(zzbvsVar.zzr()), zzbvsVar.zze(), zzbvsVar.zzf(), zzbvsVar.zzg(), zzbvsVar.zzp(), zzbvsVar.zzi(), (View) zzag(zzbvsVar.zzu()), zzbvsVar.zzv(), null, null, -1.0d, zzbvsVar.zzh(), zzbvsVar.zzj(), 0.0f);
        } catch (RemoteException e) {
            zzcgt.zzj("Failed to get native ad assets from content ad mapper", e);
            return null;
        }
    }

    private static zzdmm zzaf(zzbhc zzbhcVar, zzblz zzblzVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d, zzbmh zzbmhVar, String str6, float f) {
        zzdmm zzdmmVar = new zzdmm();
        zzdmmVar.zza = 6;
        zzdmmVar.zzb = zzbhcVar;
        zzdmmVar.zzc = zzblzVar;
        zzdmmVar.zzd = view;
        zzdmmVar.zzq("headline", str);
        zzdmmVar.zze = list;
        zzdmmVar.zzq("body", str2);
        zzdmmVar.zzh = bundle;
        zzdmmVar.zzq("call_to_action", str3);
        zzdmmVar.zzm = view2;
        zzdmmVar.zzo = iObjectWrapper;
        zzdmmVar.zzq("store", str4);
        zzdmmVar.zzq("price", str5);
        zzdmmVar.zzp = d;
        zzdmmVar.zzq = zzbmhVar;
        zzdmmVar.zzq("advertiser", str6);
        zzdmmVar.zzs(f);
        return zzdmmVar;
    }

    private static <T> T zzag(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return (T) ObjectWrapper.m38746B1(iObjectWrapper);
    }

    private static zzdml zzah(zzbhc zzbhcVar, zzbvv zzbvvVar) {
        if (zzbhcVar == null) {
            return null;
        }
        return new zzdml(zzbhcVar, zzbvvVar);
    }

    public final List<?> zzA() {
        List<?> list;
        synchronized (this) {
            list = this.zze;
        }
        return list;
    }

    public final zzbmh zzB() {
        List<?> list = this.zze;
        if (list == null || list.size() == 0) {
            return null;
        }
        Object obj = this.zze.get(0);
        if (!(obj instanceof IBinder)) {
            return null;
        }
        return zzbmg.zzg((IBinder) obj);
    }

    public final List<zzbhu> zzC() {
        List<zzbhu> list;
        synchronized (this) {
            list = this.zzf;
        }
        return list;
    }

    public final zzbhu zzD() {
        zzbhu zzbhuVar;
        synchronized (this) {
            zzbhuVar = this.zzg;
        }
        return zzbhuVar;
    }

    public final String zzE() {
        String zzu;
        synchronized (this) {
            zzu = zzu("body");
        }
        return zzu;
    }

    public final Bundle zzF() {
        Bundle bundle;
        synchronized (this) {
            if (this.zzh == null) {
                this.zzh = new Bundle();
            }
            bundle = this.zzh;
        }
        return bundle;
    }

    public final String zzG() {
        String zzu;
        synchronized (this) {
            zzu = zzu("call_to_action");
        }
        return zzu;
    }

    public final View zzH() {
        View view;
        synchronized (this) {
            view = this.zzm;
        }
        return view;
    }

    public final View zzI() {
        View view;
        synchronized (this) {
            view = this.zzn;
        }
        return view;
    }

    public final IObjectWrapper zzJ() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.zzo;
        }
        return iObjectWrapper;
    }

    public final String zzK() {
        String zzu;
        synchronized (this) {
            zzu = zzu("store");
        }
        return zzu;
    }

    public final String zzL() {
        String zzu;
        synchronized (this) {
            zzu = zzu("price");
        }
        return zzu;
    }

    public final double zzM() {
        double d;
        synchronized (this) {
            d = this.zzp;
        }
        return d;
    }

    public final zzbmh zzN() {
        zzbmh zzbmhVar;
        synchronized (this) {
            zzbmhVar = this.zzq;
        }
        return zzbmhVar;
    }

    public final String zzO() {
        String zzu;
        synchronized (this) {
            zzu = zzu("advertiser");
        }
        return zzu;
    }

    public final zzbmh zzP() {
        zzbmh zzbmhVar;
        synchronized (this) {
            zzbmhVar = this.zzr;
        }
        return zzbmhVar;
    }

    public final String zzQ() {
        String str;
        synchronized (this) {
            str = this.zzs;
        }
        return str;
    }

    public final zzcml zzR() {
        zzcml zzcmlVar;
        synchronized (this) {
            zzcmlVar = this.zzi;
        }
        return zzcmlVar;
    }

    public final zzcml zzS() {
        zzcml zzcmlVar;
        synchronized (this) {
            zzcmlVar = this.zzj;
        }
        return zzcmlVar;
    }

    public final zzcml zzT() {
        zzcml zzcmlVar;
        synchronized (this) {
            zzcmlVar = this.zzk;
        }
        return zzcmlVar;
    }

    public final IObjectWrapper zzU() {
        IObjectWrapper iObjectWrapper;
        synchronized (this) {
            iObjectWrapper = this.zzl;
        }
        return iObjectWrapper;
    }

    public final C26187h<String, zzblr> zzV() {
        C26187h<String, zzblr> c26187h;
        synchronized (this) {
            c26187h = this.zzt;
        }
        return c26187h;
    }

    public final float zzW() {
        float f;
        synchronized (this) {
            f = this.zzv;
        }
        return f;
    }

    public final String zzX() {
        String str;
        synchronized (this) {
            str = this.zzw;
        }
        return str;
    }

    public final C26187h<String, String> zzY() {
        C26187h<String, String> c26187h;
        synchronized (this) {
            c26187h = this.zzu;
        }
        return c26187h;
    }

    public final void zzZ() {
        synchronized (this) {
            zzcml zzcmlVar = this.zzi;
            if (zzcmlVar != null) {
                zzcmlVar.destroy();
                this.zzi = null;
            }
            zzcml zzcmlVar2 = this.zzj;
            if (zzcmlVar2 != null) {
                zzcmlVar2.destroy();
                this.zzj = null;
            }
            zzcml zzcmlVar3 = this.zzk;
            if (zzcmlVar3 != null) {
                zzcmlVar3.destroy();
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

    public final void zza(int i) {
        synchronized (this) {
            this.zza = i;
        }
    }

    public final void zzb(zzbhc zzbhcVar) {
        synchronized (this) {
            this.zzb = zzbhcVar;
        }
    }

    public final void zzc(zzblz zzblzVar) {
        synchronized (this) {
            this.zzc = zzblzVar;
        }
    }

    public final void zzd(List<zzblr> list) {
        synchronized (this) {
            this.zze = list;
        }
    }

    public final void zze(List<zzbhu> list) {
        synchronized (this) {
            this.zzf = list;
        }
    }

    public final void zzf(zzbhu zzbhuVar) {
        synchronized (this) {
            this.zzg = zzbhuVar;
        }
    }

    public final void zzg(View view) {
        synchronized (this) {
            this.zzm = view;
        }
    }

    public final void zzh(View view) {
        synchronized (this) {
            this.zzn = view;
        }
    }

    public final void zzi(double d) {
        synchronized (this) {
            this.zzp = d;
        }
    }

    public final void zzj(zzbmh zzbmhVar) {
        synchronized (this) {
            this.zzq = zzbmhVar;
        }
    }

    public final void zzk(zzbmh zzbmhVar) {
        synchronized (this) {
            this.zzr = zzbmhVar;
        }
    }

    public final void zzl(String str) {
        synchronized (this) {
            this.zzs = str;
        }
    }

    public final void zzm(zzcml zzcmlVar) {
        synchronized (this) {
            this.zzi = zzcmlVar;
        }
    }

    public final void zzn(zzcml zzcmlVar) {
        synchronized (this) {
            this.zzj = zzcmlVar;
        }
    }

    public final void zzo(zzcml zzcmlVar) {
        synchronized (this) {
            this.zzk = zzcmlVar;
        }
    }

    public final void zzp(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            this.zzl = iObjectWrapper;
        }
    }

    public final void zzq(String str, String str2) {
        synchronized (this) {
            if (str2 == null) {
                this.zzu.remove(str);
            } else {
                this.zzu.put(str, str2);
            }
        }
    }

    public final void zzr(String str, zzblr zzblrVar) {
        synchronized (this) {
            if (zzblrVar == null) {
                this.zzt.remove(str);
            } else {
                this.zzt.put(str, zzblrVar);
            }
        }
    }

    public final void zzs(float f) {
        synchronized (this) {
            this.zzv = f;
        }
    }

    public final void zzt(String str) {
        synchronized (this) {
            this.zzw = str;
        }
    }

    public final String zzu(String str) {
        String orDefault;
        synchronized (this) {
            orDefault = this.zzu.getOrDefault(str, null);
        }
        return orDefault;
    }

    public final int zzv() {
        int i;
        synchronized (this) {
            i = this.zza;
        }
        return i;
    }

    public final zzbhc zzw() {
        zzbhc zzbhcVar;
        synchronized (this) {
            zzbhcVar = this.zzb;
        }
        return zzbhcVar;
    }

    public final zzblz zzx() {
        zzblz zzblzVar;
        synchronized (this) {
            zzblzVar = this.zzc;
        }
        return zzblzVar;
    }

    public final View zzy() {
        View view;
        synchronized (this) {
            view = this.zzd;
        }
        return view;
    }

    public final String zzz() {
        String zzu;
        synchronized (this) {
            zzu = zzu("headline");
        }
        return zzu;
    }
}
