package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;
import java.util.List;
import p1727n3.p1788g.C26174a;
import p1727n3.p1788g.C26187h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqp.class */
public final class zzdqp extends zzbna {
    private final Context zza;
    private final zzdmm zzb;
    private zzdnl zzc;
    private zzdmh zzd;

    public zzdqp(Context context, zzdmm zzdmmVar, zzdnl zzdnlVar, zzdmh zzdmhVar) {
        this.zza = context;
        this.zzb = zzdmmVar;
        this.zzc = zzdnlVar;
        this.zzd = zzdmhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final String zze(String str) {
        return this.zzb.zzY().getOrDefault(str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final zzbmh zzf(String str) {
        return this.zzb.zzV().getOrDefault(str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final List<String> zzg() {
        int i;
        int i2;
        C26187h<String, zzblr> zzV = this.zzb.zzV();
        C26187h<String, String> zzY = this.zzb.zzY();
        String[] strArr = new String[zzV.f73025c + zzY.f73025c];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = 0;
            i2 = i4;
            if (i3 < zzV.f73025c) {
                strArr[i4] = zzV.m2576l(i3);
                i3++;
                i4++;
            }
        }
        while (i < zzY.f73025c) {
            strArr[i2] = zzY.m2576l(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final String zzh() {
        return this.zzb.zzQ();
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void zzi(String str) {
        zzdmh zzdmhVar = this.zzd;
        if (zzdmhVar != null) {
            zzdmhVar.zzc(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void zzj() {
        zzdmh zzdmhVar = this.zzd;
        if (zzdmhVar != null) {
            zzdmhVar.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final zzbhc zzk() {
        return this.zzb.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void zzl() {
        zzdmh zzdmhVar = this.zzd;
        if (zzdmhVar != null) {
            zzdmhVar.zzT();
        }
        this.zzd = null;
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final IObjectWrapper zzm() {
        return new ObjectWrapper(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final boolean zzn(IObjectWrapper iObjectWrapper) {
        zzdnl zzdnlVar;
        Object m38746B1 = ObjectWrapper.m38746B1(iObjectWrapper);
        if ((m38746B1 instanceof ViewGroup) && (zzdnlVar = this.zzc) != null && zzdnlVar.zzd((ViewGroup) m38746B1)) {
            this.zzb.zzR().zzap(new zzdqo(this));
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final boolean zzo() {
        zzdmh zzdmhVar = this.zzd;
        return (zzdmhVar == null || zzdmhVar.zzG()) && this.zzb.zzT() != null && this.zzb.zzR() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final boolean zzp() {
        IObjectWrapper zzU = this.zzb.zzU();
        if (zzU == null) {
            zzcgt.zzi("Trying to start OMID session before creation.");
            return false;
        }
        zzt.zzr().zzf(zzU);
        if (this.zzb.zzT() == null) {
            return true;
        }
        this.zzb.zzT().zze("onSdkLoaded", new C26174a());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void zzq(IObjectWrapper iObjectWrapper) {
        zzdmh zzdmhVar;
        Object m38746B1 = ObjectWrapper.m38746B1(iObjectWrapper);
        if (!(m38746B1 instanceof View) || this.zzb.zzU() == null || (zzdmhVar = this.zzd) == null) {
            return;
        }
        zzdmhVar.zzH((View) m38746B1);
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void zzr() {
        String zzX = this.zzb.zzX();
        if ("Google".equals(zzX)) {
            zzcgt.zzi("Illegal argument specified for omid partner name.");
        } else if (TextUtils.isEmpty(zzX)) {
            zzcgt.zzi("Not starting OMID session. OM partner name has not been configured.");
        } else {
            zzdmh zzdmhVar = this.zzd;
            if (zzdmhVar == null) {
                return;
            }
            zzdmhVar.zzF(zzX, false);
        }
    }
}
