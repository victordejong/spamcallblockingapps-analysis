package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
/* renamed from: com.google.android.gms.common.internal.bf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bf.class */
public final class C12007bf extends AbstractC11991aq {

    /* renamed from: e */
    final /* synthetic */ AbstractC12025d f39512e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12007bf(AbstractC12025d abstractC12025d, int i, Bundle bundle) {
        super(abstractC12025d, i, null);
        this.f39512e = abstractC12025d;
    }

    @Override // com.google.android.gms.common.internal.AbstractC11991aq
    /* renamed from: a */
    protected final void mo19207a(ConnectionResult connectionResult) {
        if (this.f39512e.enableLocalFallback() && AbstractC12025d.zzg(this.f39512e)) {
            AbstractC12025d.zzc(this.f39512e, 16);
            return;
        }
        this.f39512e.zzc.mo19188a(connectionResult);
        this.f39512e.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.AbstractC11991aq
    /* renamed from: a */
    protected final boolean mo19208a() {
        this.f39512e.zzc.mo19188a(ConnectionResult.RESULT_SUCCESS);
        return true;
    }
}
