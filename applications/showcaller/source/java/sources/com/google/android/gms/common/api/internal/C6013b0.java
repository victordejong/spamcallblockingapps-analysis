package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.AbstractC6113d;
/* renamed from: com.google.android.gms.common.api.internal.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/b0.class */
public final class C6013b0 implements AbstractC6113d.AbstractC6118e {

    /* renamed from: a */
    final /* synthetic */ C6017c0 f19223a;

    public C6013b0(C6017c0 c6017c0) {
        this.f19223a = c6017c0;
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6118e
    /* renamed from: a */
    public final void mo17086a() {
        Handler handler;
        handler = this.f19223a.f19242p.f19277w;
        handler.post(new RunnableC6010a0(this));
    }
}
