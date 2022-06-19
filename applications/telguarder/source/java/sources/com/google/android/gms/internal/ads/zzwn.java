package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwn.class */
public final class zzwn extends zzws<zzaev> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzwc zzciw;
    private final /* synthetic */ FrameLayout zzcjf;
    private final /* synthetic */ FrameLayout zzcjg;

    public zzwn(zzwc zzwcVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.zzciw = zzwcVar;
        this.zzcjf = frameLayout;
        this.zzcjg = frameLayout2;
        this.val$context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaev zza(zzxy zzxyVar) throws RemoteException {
        return zzxyVar.zza(ObjectWrapper.wrap(this.zzcjf), ObjectWrapper.wrap(this.zzcjg));
    }

    @Override // com.google.android.gms.internal.ads.zzws
    protected final /* synthetic */ zzaev zzqj() {
        zzwc.zza(this.val$context, "native_ad_view_delegate");
        return new zzaag();
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaev zzqk() throws RemoteException {
        zzagv zzagvVar;
        zzagvVar = this.zzciw.zzcja;
        return zzagvVar.zzb(this.val$context, this.zzcjf, this.zzcjg);
    }
}
