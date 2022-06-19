package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
/* renamed from: com.google.android.gms.common.internal.aq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/aq.class */
abstract class AbstractC11991aq extends AbstractC12003bb<Boolean> {

    /* renamed from: a */
    public final int f39494a;

    /* renamed from: b */
    public final Bundle f39495b;

    /* renamed from: c */
    final /* synthetic */ AbstractC12025d f39496c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC11991aq(AbstractC12025d abstractC12025d, int i, Bundle bundle) {
        super(abstractC12025d, Boolean.TRUE);
        this.f39496c = abstractC12025d;
        this.f39494a = i;
        this.f39495b = bundle;
    }

    /* renamed from: a */
    protected abstract void mo19207a(ConnectionResult connectionResult);

    /* renamed from: a */
    protected abstract boolean mo19208a();

    @Override // com.google.android.gms.common.internal.AbstractC12003bb
    /* renamed from: b */
    protected final /* synthetic */ void mo19212b() {
        ConnectionResult connectionResult;
        PendingIntent pendingIntent = null;
        if (this.f39494a != 0) {
            this.f39496c.zzp(1, null);
            Bundle bundle = this.f39495b;
            if (bundle != null) {
                pendingIntent = (PendingIntent) bundle.getParcelable(AbstractC12025d.KEY_PENDING_INTENT);
            }
            connectionResult = new ConnectionResult(this.f39494a, pendingIntent);
        } else if (mo19208a()) {
            return;
        } else {
            this.f39496c.zzp(1, null);
            connectionResult = new ConnectionResult(8, null);
        }
        mo19207a(connectionResult);
    }
}
