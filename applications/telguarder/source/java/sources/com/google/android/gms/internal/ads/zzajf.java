package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajf.class */
public final class zzajf implements BaseGmsClient.BaseConnectionCallbacks {
    private final /* synthetic */ zzbaa zzbwb;
    private final /* synthetic */ zzajb zzdis;

    public zzajf(zzajb zzajbVar, zzbaa zzbaaVar) {
        this.zzdis = zzajbVar;
        this.zzbwb = zzbaaVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzaiq zzaiqVar;
        try {
            zzbaa zzbaaVar = this.zzbwb;
            zzaiqVar = this.zzdis.zzdir;
            zzbaaVar.set(zzaiqVar.zzub());
        } catch (DeadObjectException e) {
            this.zzbwb.setException(e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zzbaa zzbaaVar = this.zzbwb;
        StringBuilder sb = new StringBuilder(34);
        sb.append("onConnectionSuspended: ");
        sb.append(i);
        zzbaaVar.setException(new RuntimeException(sb.toString()));
    }
}
