package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakg.class */
public final class zzakg {
    private final Context context;
    private final zzxi zzacs;

    private zzakg(Context context, zzxi zzxiVar) {
        this.context = context;
        this.zzacs = zzxiVar;
    }

    public zzakg(Context context, String str) {
        this((Context) Preconditions.checkNotNull(context, "context cannot be null"), zzwr.zzqo().zzb(context, str, new zzanf()));
    }

    public final zzakg zza(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        try {
            this.zzacs.zza(new zzake(instreamAdLoadCallback));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        return this;
    }

    public final zzakg zza(zzakf zzakfVar) {
        try {
            this.zzacs.zza(new zzajt(zzakfVar));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        return this;
    }

    public final zzakh zzui() {
        try {
            return new zzakh(this.context, this.zzacs.zzqz());
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }
}
