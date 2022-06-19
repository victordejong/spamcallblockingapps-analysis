package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdg.class */
public final class zzcdg implements View.OnClickListener {
    private final Clock zzbqg;
    private final zzcgk zzgge;
    private zzagm zzggf;
    private zzaif<Object> zzggg;
    public String zzggh;
    public Long zzggi;
    public WeakReference<View> zzggj;

    public zzcdg(zzcgk zzcgkVar, Clock clock) {
        this.zzgge = zzcgkVar;
        this.zzbqg = clock;
    }

    private final void zzape() {
        View view;
        this.zzggh = null;
        this.zzggi = null;
        WeakReference<View> weakReference = this.zzggj;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.zzggj = null;
    }

    public final void cancelUnconfirmedClick() {
        if (this.zzggf == null || this.zzggi == null) {
            return;
        }
        zzape();
        try {
            this.zzggf.onUnconfirmedClickCancelled();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.zzggj;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.zzggh != null && this.zzggi != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("id", this.zzggh);
            hashMap.put("time_interval", String.valueOf(this.zzbqg.currentTimeMillis() - this.zzggi.longValue()));
            hashMap.put("messageType", "onePointFiveClick");
            this.zzgge.zza("sendMessageToNativeJs", hashMap);
        }
        zzape();
    }

    public final void zza(zzagm zzagmVar) {
        this.zzggf = zzagmVar;
        zzaif<Object> zzaifVar = this.zzggg;
        if (zzaifVar != null) {
            this.zzgge.zzb("/unconfirmedClick", zzaifVar);
        }
        zzaif<Object> zzcdfVar = new zzcdf<>(this, zzagmVar);
        this.zzggg = zzcdfVar;
        this.zzgge.zza("/unconfirmedClick", zzcdfVar);
    }

    public final zzagm zzapd() {
        return this.zzggf;
    }
}
