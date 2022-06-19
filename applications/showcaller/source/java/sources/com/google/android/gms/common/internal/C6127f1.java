package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
/* renamed from: com.google.android.gms.common.internal.f1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/f1.class */
public final class C6127f1 extends AbstractC6162q0 {

    /* renamed from: g */
    final /* synthetic */ AbstractC6113d f19554g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6127f1(AbstractC6113d abstractC6113d, int i, Bundle bundle) {
        super(abstractC6113d, i, null);
        this.f19554g = abstractC6113d;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6162q0
    /* renamed from: f */
    protected final boolean mo16998f() {
        this.f19554g.f19518r.mo17087a(ConnectionResult.f19147d);
        return true;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6162q0
    /* renamed from: g */
    protected final void mo16997g(ConnectionResult connectionResult) {
        if (this.f19554g.m17091t() && AbstractC6113d.m17114Y(this.f19554g)) {
            AbstractC6113d.m17118U(this.f19554g, 16);
            return;
        }
        this.f19554g.f19518r.mo17087a(connectionResult);
        this.f19554g.m17127K(connectionResult);
    }
}
