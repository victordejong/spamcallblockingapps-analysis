package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzchq;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjf;
import com.google.android.gms.internal.ads.zzfwm;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzr.class */
final class zzr implements zzfwm<zzah> {
    public final /* synthetic */ zzchq zza;
    public final /* synthetic */ zzv zzb;

    public zzr(zzv zzvVar, zzchq zzchqVar) {
        this.zzb = zzvVar;
        this.zza = zzchqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        String message = th.getMessage();
        zzt.zzo().zzs(th, "SignalGeneratorImpl.generateSignals");
        zzv.zzy(this.zzb, "sgf", "sgf_reason", message);
        try {
            zzchq zzchqVar = this.zza;
            String valueOf = String.valueOf(message);
            zzchqVar.zzb(valueOf.length() != 0 ? "Internal error. ".concat(valueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(zzah zzahVar) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        String str3;
        String str4;
        Context context;
        zzcjf zzcjfVar;
        String str5;
        String str6;
        AtomicInteger atomicInteger;
        zzb zzbVar;
        zzah zzahVar2 = zzahVar;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfE)).booleanValue()) {
            try {
                this.zza.zzb("QueryInfo generation has been disabled.");
                return;
            } catch (RemoteException e) {
                zzciz.zzg("QueryInfo generation has been disabled.".concat(e.toString()));
                return;
            }
        }
        try {
            if (zzahVar2 == null) {
                this.zza.zzc(null, null, null);
                zzv.zzy(this.zzb, "sgs", "rid", "-1");
                return;
            }
            try {
                String optString = new JSONObject(zzahVar2.zzb).optString("request_id", "");
                if (TextUtils.isEmpty(optString)) {
                    zzciz.zzj("The request ID is empty in request JSON.");
                    this.zza.zzb("Internal error: request ID is empty in request JSON.");
                    zzv.zzy(this.zzb, "sgf", "sgf_reason", "rid_missing");
                    return;
                }
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfp)).booleanValue()) {
                    zzbVar = this.zzb.zzp;
                    zzbVar.zzc(optString, zzahVar2.zzb);
                }
                Bundle bundle = zzahVar2.zzc;
                z = this.zzb.zzw;
                if (z && bundle != null) {
                    str5 = this.zzb.zzy;
                    if (bundle.getInt(str5, -1) == -1) {
                        str6 = this.zzb.zzy;
                        atomicInteger = this.zzb.zzz;
                        bundle.putInt(str6, atomicInteger.get());
                    }
                }
                z2 = this.zzb.zzv;
                if (z2 && bundle != null) {
                    str = this.zzb.zzx;
                    if (TextUtils.isEmpty(bundle.getString(str))) {
                        str2 = this.zzb.zzB;
                        if (TextUtils.isEmpty(str2)) {
                            zzv zzvVar = this.zzb;
                            com.google.android.gms.ads.internal.util.zzt zzp = zzt.zzp();
                            context = this.zzb.zzg;
                            zzcjfVar = this.zzb.zzA;
                            zzvVar.zzB = zzp.zzd(context, zzcjfVar.zza);
                        }
                        str3 = this.zzb.zzx;
                        str4 = this.zzb.zzB;
                        bundle.putString(str3, str4);
                    }
                }
                this.zza.zzc(zzahVar2.zza, zzahVar2.zzb, bundle);
                zzv.zzy(this.zzb, "sgs", "rid", optString);
            } catch (JSONException e2) {
                zzciz.zzj("Failed to create JSON object from the request string.");
                zzchq zzchqVar = this.zza;
                String obj = e2.toString();
                StringBuilder sb = new StringBuilder(obj.length() + 33);
                sb.append("Internal error for request JSON: ");
                sb.append(obj);
                zzchqVar.zzb(sb.toString());
                zzv.zzy(this.zzb, "sgf", "sgf_reason", "request_invalid");
            }
        } catch (RemoteException e3) {
            zzciz.zzh("", e3);
        }
    }
}
