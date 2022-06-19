package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwd.class */
public final class zzwd extends zzws<zzaro> {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ zzwc zzciw;

    public zzwd(zzwc zzwcVar, Activity activity) {
        this.zzciw = zzwcVar;
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaro zza(zzxy zzxyVar) throws RemoteException {
        return zzxyVar.zzb(ObjectWrapper.wrap(this.val$activity));
    }

    @Override // com.google.android.gms.internal.ads.zzws
    protected final /* synthetic */ zzaro zzqj() {
        zzwc.zza(this.val$activity, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaro zzqk() throws RemoteException {
        zzarp zzarpVar;
        zzarpVar = this.zzciw.zzcjd;
        return zzarpVar.zze(this.val$activity);
    }
}
