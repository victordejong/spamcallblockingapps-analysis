package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayq.class */
public final class zzayq extends zza {
    private final /* synthetic */ zzayo zzecs;

    public zzayq(zzayo zzayoVar) {
        this.zzecs = zzayoVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwe() {
        Context context;
        zzazn zzaznVar;
        Object obj;
        zzabs zzabsVar;
        context = this.zzecs.context;
        zzaznVar = this.zzecs.zzbpn;
        zzabt zzabtVar = new zzabt(context, zzaznVar.zzbrp);
        obj = this.zzecs.lock;
        synchronized (obj) {
            try {
                zzr.zzla();
                zzabsVar = this.zzecs.zzecf;
                zzabu.zza(zzabsVar, zzabtVar);
            } catch (IllegalArgumentException e) {
                zzd.zzd("Cannot config CSI reporter.", e);
            }
        }
    }
}
