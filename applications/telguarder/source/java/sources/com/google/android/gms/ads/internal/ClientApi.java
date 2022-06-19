package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzaa;
import com.google.android.gms.ads.internal.overlay.zzab;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.overlay.zzu;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaev;
import com.google.android.gms.internal.ads.zzaey;
import com.google.android.gms.internal.ads.zzane;
import com.google.android.gms.internal.ads.zzarf;
import com.google.android.gms.internal.ads.zzaro;
import com.google.android.gms.internal.ads.zzasd;
import com.google.android.gms.internal.ads.zzaur;
import com.google.android.gms.internal.ads.zzavm;
import com.google.android.gms.internal.ads.zzaxy;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzccx;
import com.google.android.gms.internal.ads.zzccy;
import com.google.android.gms.internal.ads.zzcxu;
import com.google.android.gms.internal.ads.zzdid;
import com.google.android.gms.internal.ads.zzvs;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzxi;
import com.google.android.gms.internal.ads.zzxl;
import com.google.android.gms.internal.ads.zzxx;
import com.google.android.gms.internal.ads.zzyg;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/ClientApi.class */
public class ClientApi extends zzxx {
    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaev zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzccx((FrameLayout) ObjectWrapper.unwrap(iObjectWrapper), (FrameLayout) ObjectWrapper.unwrap(iObjectWrapper2), 204204000);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaey zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzccy((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaur zza(IObjectWrapper iObjectWrapper, zzane zzaneVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return zzbgc.zza(context, zzaneVar, i).zzafq().zzca(context).zzaib().zzaie();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxi zza(IObjectWrapper iObjectWrapper, String str, zzane zzaneVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzcxu(zzbgc.zza(context, zzaneVar, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, String str, int i) {
        return new zzl((Context) ObjectWrapper.unwrap(iObjectWrapper), zzvsVar, str, new zzazn(204204000, i, true, false));
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, String str, zzane zzaneVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return zzbgc.zza(context, zzaneVar, i).zzafi().zzby(context).zzc(zzvsVar).zzfp(str).zzaht().zzahw();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzyg zza(IObjectWrapper iObjectWrapper, int i) {
        return zzbgc.zzh((Context) ObjectWrapper.unwrap(iObjectWrapper), i).zzafg();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaro zzb(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        AdOverlayInfoParcel zzd = AdOverlayInfoParcel.zzd(activity.getIntent());
        if (zzd == null) {
            return new zzu(activity);
        }
        int i = zzd.zzdta;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? new zzu(activity) : new zzaa(activity) : new zzw(activity, zzd) : new zzab(activity) : new zzac(activity) : new zzr(activity);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzavm zzb(IObjectWrapper iObjectWrapper, String str, zzane zzaneVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return zzbgc.zza(context, zzaneVar, i).zzafq().zzca(context).zzfr(str).zzaib().zzaif();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzaxy zzb(IObjectWrapper iObjectWrapper, zzane zzaneVar, int i) {
        return zzbgc.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzaneVar, i).zzafs();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zzb(IObjectWrapper iObjectWrapper, zzvs zzvsVar, String str, zzane zzaneVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return zzbgc.zza(context, zzaneVar, i).zzafn().zzbz(context).zzd(zzvsVar).zzfq(str).zzahy().zzaic();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzarf zzc(IObjectWrapper iObjectWrapper, zzane zzaneVar, int i) {
        return zzbgc.zza((Context) ObjectWrapper.unwrap(iObjectWrapper), zzaneVar, i).zzaft();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzxl zzc(IObjectWrapper iObjectWrapper, zzvs zzvsVar, String str, zzane zzaneVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzdid zzahi = zzbgc.zza(context, zzaneVar, i).zzafl().zzfo(str).zzbx(context).zzahi();
        return i >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcvx)).intValue() ? zzahi.zzahm() : zzahi.zzahl();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzyg zzc(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final zzasd zzd(IObjectWrapper iObjectWrapper) {
        return null;
    }
}
