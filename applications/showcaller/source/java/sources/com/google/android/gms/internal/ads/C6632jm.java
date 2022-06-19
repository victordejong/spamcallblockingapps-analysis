package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6113d;
/* renamed from: com.google.android.gms.internal.ads.jm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jm.class */
public final class C6632jm implements AbstractC6113d.AbstractC6115b {

    /* renamed from: a */
    final /* synthetic */ vi0 f24923a;

    /* renamed from: b */
    final /* synthetic */ C6669km f24924b;

    public C6632jm(C6669km c6669km, vi0 vi0Var) {
        this.f24924b = c6669km;
        this.f24923a = vi0Var;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6115b
    /* renamed from: D0 */
    public final void mo6338D0(ConnectionResult connectionResult) {
        Object obj;
        obj = this.f24924b.f25255d;
        synchronized (obj) {
            this.f24923a.m10014f(new RuntimeException("Connection failed."));
        }
    }
}
