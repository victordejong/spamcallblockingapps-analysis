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
import p226s.C4251a;
import p226s.C4263g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduf.class */
public final class zzduf extends zzbpb {
    private final Context zza;
    private final zzdqc zzb;
    private zzdrb zzc;
    private zzdpx zzd;

    public zzduf(Context context, zzdqc zzdqcVar, zzdrb zzdrbVar, zzdpx zzdpxVar) {
        this.zza = context;
        this.zzb = zzdqcVar;
        this.zzc = zzdrbVar;
        this.zzd = zzdpxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final zzbiz zze() {
        return this.zzb.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final zzboi zzf(String str) {
        return this.zzb.zzh().getOrDefault(str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final IObjectWrapper zzg() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final String zzh() {
        return this.zzb.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final String zzi(String str) {
        return this.zzb.zzi().getOrDefault(str, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final List<String> zzj() {
        int i;
        int i2;
        C4263g<String, zzbnu> zzh = this.zzb.zzh();
        C4263g<String, String> zzi = this.zzb.zzi();
        String[] strArr = new String[zzh.f13365c + zzi.f13365c];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = 0;
            i2 = i4;
            if (i3 < zzh.f13365c) {
                strArr[i4] = zzh.m1195h(i3);
                i3++;
                i4++;
            }
        }
        while (i < zzi.f13365c) {
            strArr[i2] = zzi.m1195h(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzk() {
        zzdpx zzdpxVar = this.zzd;
        if (zzdpxVar != null) {
            zzdpxVar.zzT();
        }
        this.zzd = null;
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzl() {
        String zzA = this.zzb.zzA();
        if ("Google".equals(zzA)) {
            zzciz.zzj("Illegal argument specified for omid partner name.");
        } else if (TextUtils.isEmpty(zzA)) {
            zzciz.zzj("Not starting OMID session. OM partner name has not been configured.");
        } else {
            zzdpx zzdpxVar = this.zzd;
            if (zzdpxVar == null) {
                return;
            }
            zzdpxVar.zzq(zzA, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzm(String str) {
        zzdpx zzdpxVar = this.zzd;
        if (zzdpxVar != null) {
            zzdpxVar.zzy(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzn() {
        zzdpx zzdpxVar = this.zzd;
        if (zzdpxVar != null) {
            zzdpxVar.zzB();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzo(IObjectWrapper iObjectWrapper) {
        zzdpx zzdpxVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof View) || this.zzb.zzu() == null || (zzdpxVar = this.zzd) == null) {
            return;
        }
        zzdpxVar.zzC((View) unwrap);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean zzp() {
        zzdpx zzdpxVar = this.zzd;
        return (zzdpxVar == null || zzdpxVar.zzO()) && this.zzb.zzq() != null && this.zzb.zzr() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean zzq(IObjectWrapper iObjectWrapper) {
        zzdrb zzdrbVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof ViewGroup) && (zzdrbVar = this.zzc) != null && zzdrbVar.zzf((ViewGroup) unwrap)) {
            this.zzb.zzr().zzaq(new zzdue(this));
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean zzr() {
        IObjectWrapper zzu = this.zzb.zzu();
        if (zzu == null) {
            zzciz.zzj("Trying to start OMID session before creation.");
            return false;
        }
        zzt.zzh().zzh(zzu);
        if (this.zzb.zzq() == null) {
            return true;
        }
        this.zzb.zzq().zzd("onSdkLoaded", new C4251a());
        return true;
    }
}
