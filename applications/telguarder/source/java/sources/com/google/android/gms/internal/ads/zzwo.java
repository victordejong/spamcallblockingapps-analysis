package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwo.class */
public final class zzwo extends zzws<zzyg> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzwc zzciw;

    public zzwo(zzwc zzwcVar, Context context) {
        this.zzciw = zzwcVar;
        this.val$context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzyg zza(zzxy zzxyVar) throws RemoteException {
        return zzxyVar.zza(ObjectWrapper.wrap(this.val$context), 204204000);
    }

    @Override // com.google.android.gms.internal.ads.zzws
    protected final /* synthetic */ zzyg zzqj() {
        zzwc.zza(this.val$context, "mobile_ads_settings");
        return new zzaae();
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzyg zzqk() throws RemoteException {
        zzzz zzzzVar;
        zzzzVar = this.zzciw.zzciz;
        return zzzzVar.zzh(this.val$context);
    }
}
