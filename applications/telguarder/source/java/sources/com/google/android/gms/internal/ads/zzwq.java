package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwq.class */
public final class zzwq extends zzws<zzaey> {
    private final /* synthetic */ zzwc zzciw;
    private final /* synthetic */ View zzcjh;
    private final /* synthetic */ HashMap zzcji;
    private final /* synthetic */ HashMap zzcjj;

    public zzwq(zzwc zzwcVar, View view, HashMap hashMap, HashMap hashMap2) {
        this.zzciw = zzwcVar;
        this.zzcjh = view;
        this.zzcji = hashMap;
        this.zzcjj = hashMap2;
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaey zza(zzxy zzxyVar) throws RemoteException {
        return zzxyVar.zza(ObjectWrapper.wrap(this.zzcjh), ObjectWrapper.wrap(this.zzcji), ObjectWrapper.wrap(this.zzcjj));
    }

    @Override // com.google.android.gms.internal.ads.zzws
    protected final /* synthetic */ zzaey zzqj() {
        zzwc.zza(this.zzcjh.getContext(), "native_ad_view_holder_delegate");
        return new zzaaj();
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaey zzqk() throws RemoteException {
        zzagu zzaguVar;
        zzaguVar = this.zzciw.zzcje;
        return zzaguVar.zzb(this.zzcjh, this.zzcji, this.zzcjj);
    }
}
