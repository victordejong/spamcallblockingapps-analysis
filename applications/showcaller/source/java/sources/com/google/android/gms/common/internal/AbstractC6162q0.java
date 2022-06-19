package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
/* renamed from: com.google.android.gms.common.internal.q0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/q0.class */
abstract class AbstractC6162q0 extends AbstractC6109b1<Boolean> {

    /* renamed from: d */
    public final int f19593d;

    /* renamed from: e */
    public final Bundle f19594e;

    /* renamed from: f */
    final /* synthetic */ AbstractC6113d f19595f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC6162q0(AbstractC6113d abstractC6113d, int i, Bundle bundle) {
        super(abstractC6113d, Boolean.TRUE);
        this.f19595f = abstractC6113d;
        this.f19593d = i;
        this.f19594e = bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6109b1
    /* renamed from: a */
    public final void mo17000a() {
    }

    @Override // com.google.android.gms.common.internal.AbstractC6109b1
    /* renamed from: b */
    protected final /* bridge */ /* synthetic */ void mo16999b(Boolean bool) {
        ConnectionResult connectionResult;
        PendingIntent pendingIntent = null;
        if (this.f19593d != 0) {
            this.f19595f.m17098h0(1, null);
            Bundle bundle = this.f19594e;
            if (bundle != null) {
                pendingIntent = (PendingIntent) bundle.getParcelable("pendingIntent");
            }
            connectionResult = new ConnectionResult(this.f19593d, pendingIntent);
        } else if (mo16998f()) {
            return;
        } else {
            this.f19595f.m17098h0(1, null);
            connectionResult = new ConnectionResult(8, null);
        }
        mo16997g(connectionResult);
    }

    /* renamed from: f */
    protected abstract boolean mo16998f();

    /* renamed from: g */
    protected abstract void mo16997g(ConnectionResult connectionResult);
}
