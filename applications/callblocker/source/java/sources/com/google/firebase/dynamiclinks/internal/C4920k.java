package com.google.firebase.dynamiclinks.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.AbstractC2562p;
import com.google.android.gms.tasks.C4470h;
import com.google.firebase.analytics.connector.AbstractC4859a;
import com.google.firebase.dynamiclinks.C4909b;
/* renamed from: com.google.firebase.dynamiclinks.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/k.class */
final class C4920k extends AbstractC2562p<C4914e, C4909b> {

    /* renamed from: a */
    private final String f21042a;

    /* renamed from: b */
    private final AbstractC4859a f21043b;

    public C4920k(AbstractC4859a abstractC4859a, String str) {
        this.f21042a = str;
        this.f21043b = abstractC4859a;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2562p
    /* renamed from: a */
    public final /* synthetic */ void mo2027a(C4914e c4914e, C4470h<C4909b> c4470h) {
        C4914e c4914e2 = c4914e;
        try {
            ((AbstractC4921l) c4914e2.m14067v()).mo2022a(new BinderC4918i(this.f21043b, c4470h), this.f21042a);
        } catch (RemoteException e) {
        }
    }
}
