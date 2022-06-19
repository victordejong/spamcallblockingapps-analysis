package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwg.class */
public final class zzwg extends zzws<zzaxy> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzane zzciv;

    public zzwg(zzwc zzwcVar, Context context, zzane zzaneVar) {
        this.val$context = context;
        this.zzciv = zzaneVar;
    }

    /* renamed from: zzql */
    public final zzaxy zzqk() {
        try {
            return ((zzayd) zzazj.zza(this.val$context, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", zzwf.zzbyi)).zze(ObjectWrapper.wrap(this.val$context), this.zzciv, 204204000);
        } catch (RemoteException | zzazl | NullPointerException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaxy zza(zzxy zzxyVar) throws RemoteException {
        return zzxyVar.zzb(ObjectWrapper.wrap(this.val$context), this.zzciv, 204204000);
    }

    @Override // com.google.android.gms.internal.ads.zzws
    protected final /* bridge */ /* synthetic */ zzaxy zzqj() {
        return null;
    }
}
