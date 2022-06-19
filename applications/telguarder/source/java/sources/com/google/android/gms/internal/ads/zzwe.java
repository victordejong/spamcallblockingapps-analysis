package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwe.class */
public final class zzwe extends zzws<zzavm> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzciu;
    private final /* synthetic */ zzane zzciv;
    private final /* synthetic */ zzwc zzciw;

    public zzwe(zzwc zzwcVar, Context context, String str, zzane zzaneVar) {
        this.zzciw = zzwcVar;
        this.val$context = context;
        this.zzciu = str;
        this.zzciv = zzaneVar;
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzavm zza(zzxy zzxyVar) throws RemoteException {
        return zzxyVar.zzb(ObjectWrapper.wrap(this.val$context), this.zzciu, this.zzciv, 204204000);
    }

    @Override // com.google.android.gms.internal.ads.zzws
    protected final /* synthetic */ zzavm zzqj() {
        zzwc.zza(this.val$context, "rewarded");
        return new zzaai();
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzavm zzqk() throws RemoteException {
        return zzawc.zzd(this.val$context, this.zzciu, this.zzciv);
    }
}
