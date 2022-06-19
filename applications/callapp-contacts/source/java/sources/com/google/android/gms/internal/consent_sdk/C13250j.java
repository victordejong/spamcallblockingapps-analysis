package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import com.google.android.gms.internal.consent_sdk.AbstractC13198bb;
/* renamed from: com.google.android.gms.internal.consent_sdk.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/j.class */
final class C13250j implements AbstractC13198bb.AbstractC13199a {

    /* renamed from: a */
    private Application f50485a;

    private C13250j() {
    }

    public /* synthetic */ C13250j(C13247g c13247g) {
        this();
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13198bb.AbstractC13199a
    /* renamed from: a */
    public final /* synthetic */ AbstractC13198bb.AbstractC13199a mo13533a(Application application) {
        this.f50485a = (Application) C13220bv.m13553a(application);
        return this;
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13198bb.AbstractC13199a
    /* renamed from: a */
    public final AbstractC13198bb mo13534a() {
        C13220bv.m13552a(this.f50485a, Application.class);
        return new C13248h(this.f50485a, null);
    }
}
