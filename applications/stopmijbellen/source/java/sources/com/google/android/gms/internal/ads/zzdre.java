package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdre.class */
public final class zzdre implements View.OnClickListener {
    public String zza;
    public Long zzb;
    public WeakReference<View> zzc;
    private final zzduy zzd;
    private final Clock zze;
    private zzbqc zzf;
    private zzbrt<Object> zzg;

    public zzdre(zzduy zzduyVar, Clock clock) {
        this.zzd = zzduyVar;
        this.zze = clock;
    }

    private final void zzd() {
        View view;
        this.zza = null;
        this.zzb = null;
        WeakReference<View> weakReference = this.zzc;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.zzc = null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.zzc;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.zza != null && this.zzb != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(FacebookAdapter.KEY_ID, this.zza);
            hashMap.put("time_interval", String.valueOf(this.zze.currentTimeMillis() - this.zzb.longValue()));
            hashMap.put("messageType", "onePointFiveClick");
            this.zzd.zzg("sendMessageToNativeJs", hashMap);
        }
        zzd();
    }

    public final zzbqc zza() {
        return this.zzf;
    }

    public final void zzb() {
        if (this.zzf == null || this.zzb == null) {
            return;
        }
        zzd();
        try {
            this.zzf.zze();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void zzc(final zzbqc zzbqcVar) {
        this.zzf = zzbqcVar;
        zzbrt<Object> zzbrtVar = this.zzg;
        if (zzbrtVar != null) {
            this.zzd.zzk("/unconfirmedClick", zzbrtVar);
        }
        zzbrt<Object> zzbrtVar2 = new zzbrt() { // from class: com.google.android.gms.internal.ads.zzdrd
            @Override // com.google.android.gms.internal.ads.zzbrt
            public final void zza(Object obj, Map map) {
                zzdre zzdreVar = zzdre.this;
                zzbqc zzbqcVar2 = zzbqcVar;
                try {
                    zzdreVar.zzb = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException e) {
                    zzciz.zzg("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzdreVar.zza = (String) map.get(FacebookAdapter.KEY_ID);
                String str = (String) map.get("asset_id");
                if (zzbqcVar2 == null) {
                    zzciz.zze("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    zzbqcVar2.zzf(str);
                } catch (RemoteException e2) {
                    zzciz.zzl("#007 Could not call remote method.", e2);
                }
            }
        };
        this.zzg = zzbrtVar2;
        this.zzd.zzi("/unconfirmedClick", zzbrtVar2);
    }
}
