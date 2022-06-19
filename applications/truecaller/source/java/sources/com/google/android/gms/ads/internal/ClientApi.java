package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzaa;
import com.google.android.gms.ads.internal.overlay.zzab;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.overlay.zzs;
import com.google.android.gms.ads.internal.overlay.zzu;
import com.google.android.gms.ads.internal.overlay.zzy;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbdl;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbfj;
import com.google.android.gms.internal.ads.zzbfn;
import com.google.android.gms.internal.ads.zzbfw;
import com.google.android.gms.internal.ads.zzbge;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzbml;
import com.google.android.gms.internal.ads.zzbmr;
import com.google.android.gms.internal.ads.zzbqm;
import com.google.android.gms.internal.ads.zzbqp;
import com.google.android.gms.internal.ads.zzbvg;
import com.google.android.gms.internal.ads.zzbze;
import com.google.android.gms.internal.ads.zzbzq;
import com.google.android.gms.internal.ads.zzccc;
import com.google.android.gms.internal.ads.zzccs;
import com.google.android.gms.internal.ads.zzcfn;
import com.google.android.gms.internal.ads.zzcgz;
import com.google.android.gms.internal.ads.zzcoj;
import com.google.android.gms.internal.ads.zzdnf;
import com.google.android.gms.internal.ads.zzdnh;
import com.google.android.gms.internal.ads.zzdwq;
import com.google.android.gms.internal.ads.zzekl;
import com.google.android.gms.internal.ads.zzeux;
import com.google.android.gms.internal.ads.zzeuy;
import com.google.android.gms.internal.ads.zzewl;
import com.google.android.gms.internal.ads.zzeye;
import com.google.android.gms.internal.ads.zzezs;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/ClientApi.class */
public class ClientApi extends zzbfw {
    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbfn zzb(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, String str, zzbvg zzbvgVar, int i) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        zzewl zzl = zzcoj.zza(context, zzbvgVar, i).zzl();
        zzl.zzd(context);
        zzl.zzb(zzbdlVar);
        zzl.zzc(str);
        return zzl.zza().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbfn zzc(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, String str, zzbvg zzbvgVar, int i) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        zzeye zzq = zzcoj.zza(context, zzbvgVar, i).zzq();
        zzq.zzd(context);
        zzq.zzb(zzbdlVar);
        zzq.zzc(str);
        return zzq.zza().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbfj zzd(IObjectWrapper iObjectWrapper, String str, zzbvg zzbvgVar, int i) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        return new zzekl(zzcoj.zza(context, zzbvgVar, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbml zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzdnh((FrameLayout) ObjectWrapper.m38746B1(iObjectWrapper), (FrameLayout) ObjectWrapper.m38746B1(iObjectWrapper2), 213806000);
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzccc zzf(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        zzezs zzt = zzcoj.zza(context, zzbvgVar, i).zzt();
        zzt.zzc(context);
        return zzt.zza().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbzq zzg(IObjectWrapper iObjectWrapper) {
        zzs zzsVar;
        Activity activity = (Activity) ObjectWrapper.m38746B1(iObjectWrapper);
        AdOverlayInfoParcel zza = AdOverlayInfoParcel.zza(activity.getIntent());
        if (zza == null) {
            zzsVar = new zzs(activity);
        } else {
            int i = zza.zzk;
            zzsVar = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? new zzs(activity) : new zzy(activity) : new zzu(activity, zza) : new zzab(activity) : new zzaa(activity) : new zzr(activity);
        }
        return zzsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbge zzh(IObjectWrapper iObjectWrapper, int i) {
        return zzcoj.zzb((Context) ObjectWrapper.m38746B1(iObjectWrapper), i).zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbfn zzi(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, String str, int i) {
        return new zzs((Context) ObjectWrapper.m38746B1(iObjectWrapper), zzbdlVar, str, new zzcgz(213806000, i, true, false));
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbmr zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzdnf((View) ObjectWrapper.m38746B1(iObjectWrapper), (HashMap) ObjectWrapper.m38746B1(iObjectWrapper2), (HashMap) ObjectWrapper.m38746B1(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzccs zzk(IObjectWrapper iObjectWrapper, String str, zzbvg zzbvgVar, int i) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        zzezs zzt = zzcoj.zza(context, zzbvgVar, i).zzt();
        zzt.zzc(context);
        zzt.zzb(str);
        return zzt.zza().zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbfn zzl(IObjectWrapper iObjectWrapper, zzbdl zzbdlVar, String str, zzbvg zzbvgVar, int i) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        zzeux zzo = zzcoj.zza(context, zzbvgVar, i).zzo();
        zzo.zzb(str);
        zzo.zzc(context);
        zzeuy zza = zzo.zza();
        return i >= ((Integer) zzbet.zzc().zzc(zzbjl.zzdC)).intValue() ? zza.zzb() : zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzcfn zzm(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i) {
        return zzcoj.zza((Context) ObjectWrapper.m38746B1(iObjectWrapper), zzbvgVar, i).zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbze zzn(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i) {
        return zzcoj.zza((Context) ObjectWrapper.m38746B1(iObjectWrapper), zzbvgVar, i).zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbfx
    public final zzbqp zzo(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i, zzbqm zzbqmVar) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        zzdwq zzC = zzcoj.zza(context, zzbvgVar, i).zzC();
        zzC.zzc(context);
        zzC.zzb(zzbqmVar);
        return zzC.zza().zzc();
    }
}
