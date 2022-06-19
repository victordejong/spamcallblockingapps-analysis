package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakh.class */
public final class zzakh {
    private final Context context;
    private final zzvq zzact;
    private final zzxd zzacu;

    public zzakh(Context context, zzxd zzxdVar) {
        this(context, zzxdVar, zzvq.zzcif);
    }

    private zzakh(Context context, zzxd zzxdVar, zzvq zzvqVar) {
        this.context = context;
        this.zzacu = zzxdVar;
        this.zzact = zzvqVar;
    }

    private final void zza(zzzk zzzkVar) {
        try {
            this.zzacu.zzb(zzvq.zza(this.context, zzzkVar));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void loadAd(AdRequest adRequest) {
        zza(adRequest.zzds());
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        zza(publisherAdRequest.zzds());
    }
}
