package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzcgz;
import com.google.android.gms.internal.ads.zzfrz;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzr.class */
public final class zzr implements zzfrz<zzah> {
    public final /* synthetic */ zzcfk zza;
    public final /* synthetic */ zzv zzb;

    public zzr(zzv zzvVar, zzcfk zzcfkVar) {
        this.zzb = zzvVar;
        this.zza = zzcfkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        String message = th.getMessage();
        zzt.zzg().zzk(th, "SignalGeneratorImpl.generateSignals");
        zzv.zzy(this.zzb, "sgf", "sgf_reason", message);
        try {
            zzcfk zzcfkVar = this.zza;
            String valueOf = String.valueOf(message);
            zzcfkVar.zzb(valueOf.length() != 0 ? "Internal error. ".concat(valueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(zzah zzahVar) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        String str3;
        String str4;
        Context context;
        zzcgz zzcgzVar;
        String str5;
        String str6;
        AtomicInteger atomicInteger;
        zzb zzbVar;
        zzah zzahVar2 = zzahVar;
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfx)).booleanValue()) {
            try {
                this.zza.zzb("QueryInfo generation has been disabled.");
                return;
            } catch (RemoteException e) {
                zzcgt.zzf("QueryInfo generation has been disabled.".concat(e.toString()));
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
                    zzcgt.zzi("The request ID is empty in request JSON.");
                    this.zza.zzb("Internal error: request ID is empty in request JSON.");
                    zzv.zzy(this.zzb, "sgf", "sgf_reason", "rid_missing");
                    return;
                }
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfi)).booleanValue()) {
                    zzbVar = this.zzb.zzp;
                    zzbVar.zzb(optString, zzahVar2.zzb);
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
                            zzs zzc = zzt.zzc();
                            context = this.zzb.zzg;
                            zzcgzVar = this.zzb.zzA;
                            zzvVar.zzB = zzc.zzi(context, zzcgzVar.zza);
                        }
                        str3 = this.zzb.zzx;
                        str4 = this.zzb.zzB;
                        bundle.putString(str3, str4);
                    }
                }
                this.zza.zzc(zzahVar2.zza, zzahVar2.zzb, bundle);
                zzv.zzy(this.zzb, "sgs", "rid", optString);
            } catch (JSONException e2) {
                zzcgt.zzi("Failed to create JSON object from the request string.");
                zzcfk zzcfkVar = this.zza;
                String obj = e2.toString();
                StringBuilder sb = new StringBuilder(obj.length() + 33);
                sb.append("Internal error for request JSON: ");
                sb.append(obj);
                zzcfkVar.zzb(sb.toString());
                zzv.zzy(this.zzb, "sgf", "sgf_reason", "request_invalid");
            }
        } catch (RemoteException e3) {
            zzcgt.zzg("", e3);
        }
    }
}
