package com.google.android.play.core.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/e.class */
public final class C8482e extends AbstractRunnableC8470b {

    /* renamed from: e */
    final /* synthetic */ C8504n f38033e;

    public C8482e(C8504n c8504n) {
        this.f38033e = c8504n;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC8470b
    /* renamed from: a */
    public final void mo3507a() {
        IInterface iInterface;
        C8466a c8466a;
        Context context;
        ServiceConnection serviceConnection;
        iInterface = this.f38033e.f38059l;
        if (iInterface != null) {
            c8466a = this.f38033e.f38050c;
            c8466a.m3564d("Unbind from service.", new Object[0]);
            context = this.f38033e.f38049b;
            serviceConnection = this.f38033e.f38058k;
            context.unbindService(serviceConnection);
            this.f38033e.f38053f = false;
            this.f38033e.f38059l = null;
            this.f38033e.f38058k = null;
        }
    }
}
