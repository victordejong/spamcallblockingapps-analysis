package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.AbstractC24974k;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzg.class */
public final class zzg extends AbstractC24974k {

    /* renamed from: g */
    public final /* synthetic */ BaseGmsClient f6054g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(BaseGmsClient baseGmsClient, int i) {
        super(baseGmsClient, i, null);
        this.f6054g = baseGmsClient;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.p1656b.AbstractC24974k
    /* renamed from: d */
    public final void mo4252d(ConnectionResult connectionResult) {
        if (this.f6054g.enableLocalFallback() && BaseGmsClient.zzo(this.f6054g)) {
            BaseGmsClient.zzk(this.f6054g, 16);
            return;
        }
        this.f6054g.zzc.mo4289a(connectionResult);
        this.f6054g.onConnectionFailed(connectionResult);
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.p1656b.AbstractC24974k
    /* renamed from: e */
    public final boolean mo4251e() {
        this.f6054g.zzc.mo4289a(ConnectionResult.f5661e);
        return true;
    }
}
