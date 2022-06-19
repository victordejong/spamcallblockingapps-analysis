package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwi.class */
public final class zzwi extends zzws<zzarf> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzane zzciv;

    public zzwi(zzwc zzwcVar, Context context, zzane zzaneVar) {
        this.val$context = context;
        this.zzciv = zzaneVar;
    }

    /* renamed from: zzqm */
    public final zzarf zzqk() {
        try {
            return ((zzarg) zzazj.zza(this.val$context, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", zzwh.zzbyi)).zzc(ObjectWrapper.wrap(this.val$context), this.zzciv, 204204000);
        } catch (RemoteException | zzazl | NullPointerException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzarf zza(zzxy zzxyVar) throws RemoteException {
        return zzxyVar.zzc(ObjectWrapper.wrap(this.val$context), this.zzciv, 204204000);
    }

    @Override // com.google.android.gms.internal.ads.zzws
    protected final /* bridge */ /* synthetic */ zzarf zzqj() {
        return null;
    }
}
