package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.AbstractC12025d;
/* renamed from: com.google.android.gms.common.api.internal.ae */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ae.class */
public final class C11837ae implements AbstractC12025d.AbstractC12030e {

    /* renamed from: a */
    final /* synthetic */ C11838af f39218a;

    public C11837ae(C11838af c11838af) {
        this.f39218a = c11838af;
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12030e
    /* renamed from: a */
    public final void mo19187a() {
        Handler handler;
        handler = this.f39218a.f39227i.f39351g;
        handler.post(new RunnableC11836ad(this));
    }
}
