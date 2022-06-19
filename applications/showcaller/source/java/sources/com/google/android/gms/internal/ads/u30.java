package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.AbstractC6113d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u30.class */
public final class u30 implements AbstractC6113d.AbstractC6114a {

    /* renamed from: a */
    final /* synthetic */ vi0 f30486a;

    /* renamed from: b */
    final /* synthetic */ w30 f30487b;

    public u30(w30 w30Var, vi0 vi0Var) {
        this.f30487b = w30Var;
        this.f30486a = vi0Var;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: J0 */
    public final void mo6337J0(Bundle bundle) {
        k30 k30Var;
        try {
            vi0 vi0Var = this.f30486a;
            k30Var = this.f30487b.f31441a;
            vi0Var.m10016c(k30Var.m13985i0());
        } catch (DeadObjectException e) {
            this.f30486a.m10014f(e);
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: c0 */
    public final void mo6333c0(int i) {
        vi0 vi0Var = this.f30486a;
        StringBuilder sb = new StringBuilder(34);
        sb.append("onConnectionSuspended: ");
        sb.append(i);
        vi0Var.m10014f(new RuntimeException(sb.toString()));
    }
}
