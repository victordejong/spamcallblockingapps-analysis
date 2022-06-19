package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6113d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v30.class */
public final class v30 implements AbstractC6113d.AbstractC6115b {

    /* renamed from: a */
    final /* synthetic */ vi0 f31063a;

    public v30(w30 w30Var, vi0 vi0Var) {
        this.f31063a = vi0Var;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6115b
    /* renamed from: D0 */
    public final void mo6338D0(ConnectionResult connectionResult) {
        this.f31063a.m10014f(new RuntimeException("Connection failed."));
    }
}
