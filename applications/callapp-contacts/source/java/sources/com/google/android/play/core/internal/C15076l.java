package com.google.android.play.core.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.l */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/l.class */
public final class C15076l extends AbstractRunnableC15073i {

    /* renamed from: a */
    final /* synthetic */ C15082r f54782a;

    public C15076l(C15082r c15082r) {
        this.f54782a = c15082r;
    }

    @Override // com.google.android.play.core.internal.AbstractRunnableC15073i
    /* renamed from: a */
    public final void mo9371a() {
        IInterface iInterface;
        C15072h c15072h;
        Context context;
        ServiceConnection serviceConnection;
        iInterface = this.f54782a.f54792e;
        if (iInterface != null) {
            c15072h = this.f54782a.f54788a;
            c15072h.m9508c("Unbind from service.", new Object[0]);
            context = this.f54782a.f54793g;
            serviceConnection = this.f54782a.f54798l;
            context.unbindService(serviceConnection);
            this.f54782a.f54794h = false;
            this.f54782a.f54792e = null;
            this.f54782a.f54798l = null;
        }
    }
}
