package com.google.firebase.dynamiclinks.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C2563q;
import com.google.android.gms.tasks.C4470h;
import com.google.firebase.analytics.connector.AbstractC4859a;
import com.google.firebase.dynamiclinks.C4909b;
/* renamed from: com.google.firebase.dynamiclinks.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/i.class */
final class BinderC4918i extends BinderC4917h {

    /* renamed from: a */
    private final C4470h<C4909b> f21040a;

    /* renamed from: b */
    private final AbstractC4859a f21041b;

    public BinderC4918i(AbstractC4859a abstractC4859a, C4470h<C4909b> c4470h) {
        this.f21041b = abstractC4859a;
        this.f21040a = c4470h;
    }

    @Override // com.google.firebase.dynamiclinks.internal.BinderC4917h, com.google.firebase.dynamiclinks.internal.AbstractC4919j
    /* renamed from: a */
    public final void mo2029a(Status status, C4910a c4910a) {
        Bundle bundle;
        C2563q.m14229a(status, c4910a == null ? null : new C4909b(c4910a), this.f21040a);
        if (c4910a == null || (bundle = c4910a.m2036c().getBundle("scionData")) == null || bundle.keySet() == null || this.f21041b == null) {
            return;
        }
        for (String str : bundle.keySet()) {
            this.f21041b.mo2165a("fdl", str, bundle.getBundle(str));
        }
    }
}
