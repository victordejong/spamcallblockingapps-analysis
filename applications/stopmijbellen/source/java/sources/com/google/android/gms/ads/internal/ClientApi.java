package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzab;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzs;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzbhg;
import com.google.android.gms.internal.ads.zzbhk;
import com.google.android.gms.internal.ads.zzbht;
import com.google.android.gms.internal.ads.zzbib;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzbom;
import com.google.android.gms.internal.ads.zzbos;
import com.google.android.gms.internal.ads.zzbso;
import com.google.android.gms.internal.ads.zzbsr;
import com.google.android.gms.internal.ads.zzbxh;
import com.google.android.gms.internal.ads.zzcbg;
import com.google.android.gms.internal.ads.zzcbs;
import com.google.android.gms.internal.ads.zzcej;
import com.google.android.gms.internal.ads.zzcez;
import com.google.android.gms.internal.ads.zzcht;
import com.google.android.gms.internal.ads.zzcjf;
import com.google.android.gms.internal.ads.zzcqm;
import com.google.android.gms.internal.ads.zzdqv;
import com.google.android.gms.internal.ads.zzdqx;
import com.google.android.gms.internal.ads.zzeah;
import com.google.android.gms.internal.ads.zzeob;
import com.google.android.gms.internal.ads.zzeyl;
import com.google.android.gms.internal.ads.zzeym;
import com.google.android.gms.internal.ads.zzezz;
import com.google.android.gms.internal.ads.zzfbs;
import com.google.android.gms.internal.ads.zzfdg;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/ClientApi.class */
public class ClientApi extends zzbht {
    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbhg zzb(IObjectWrapper iObjectWrapper, String str, zzbxh zzbxhVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzeob(zzcqm.zzc(context, zzbxhVar, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbhk zzc(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, String str, zzbxh zzbxhVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzeyl zzu = zzcqm.zzc(context, zzbxhVar, i).zzu();
        zzu.zza(str);
        zzu.zzb(context);
        zzeym zzc = zzu.zzc();
        return i >= ((Integer) zzbgq.zzc().zzb(zzblj.zzdJ)).intValue() ? zzc.zzb() : zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbhk zzd(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, String str, zzbxh zzbxhVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzezz zzv = zzcqm.zzc(context, zzbxhVar, i).zzv();
        zzv.zzc(context);
        zzv.zza(zzbfiVar);
        zzv.zzb(str);
        return zzv.zzd().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbhk zze(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, String str, zzbxh zzbxhVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfbs zzw = zzcqm.zzc(context, zzbxhVar, i).zzw();
        zzw.zzc(context);
        zzw.zza(zzbfiVar);
        zzw.zzb(str);
        return zzw.zzd().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbhk zzf(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, String str, int i) {
        return new zzs((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbfiVar, str, new zzcjf(214106000, i, true, false));
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbib zzg(IObjectWrapper iObjectWrapper, int i) {
        return zzcqm.zzb((Context) ObjectWrapper.unwrap(iObjectWrapper), i).zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbom zzh(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzdqx((FrameLayout) ObjectWrapper.unwrap(iObjectWrapper), (FrameLayout) ObjectWrapper.unwrap(iObjectWrapper2), 214106000);
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbos zzi(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzdqv((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzbsr zzj(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i, zzbso zzbsoVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzeah zzm = zzcqm.zzc(context, zzbxhVar, i).zzm();
        zzm.zzb(context);
        zzm.zza(zzbsoVar);
        return zzm.zzc().zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzcbg zzk(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i) {
        return zzcqm.zzc((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbxhVar, i).zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzcbs zzl(IObjectWrapper iObjectWrapper) {
        zzt zztVar;
        Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        AdOverlayInfoParcel zza = AdOverlayInfoParcel.zza(activity.getIntent());
        if (zza == null) {
            zztVar = new zzt(activity);
        } else {
            int i = zza.zzk;
            zztVar = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? new zzt(activity) : new zzz(activity) : new zzv(activity, zza) : new zzac(activity) : new zzab(activity) : new zzs(activity);
        }
        return zztVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzcej zzm(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfdg zzx = zzcqm.zzc(context, zzbxhVar, i).zzx();
        zzx.zzb(context);
        return zzx.zzc().zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzcez zzn(IObjectWrapper iObjectWrapper, String str, zzbxh zzbxhVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzfdg zzx = zzcqm.zzc(context, zzbxhVar, i).zzx();
        zzx.zzb(context);
        zzx.zza(str);
        return zzx.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbhu
    public final zzcht zzo(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i) {
        return zzcqm.zzc((Context) ObjectWrapper.unwrap(iObjectWrapper), zzbxhVar, i).zzr();
    }
}
