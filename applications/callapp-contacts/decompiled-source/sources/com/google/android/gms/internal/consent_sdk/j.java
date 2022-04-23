package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import com.google.android.gms.internal.consent_sdk.bb;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/j.class */
public final class j implements bb.a {

    /* renamed from: a  reason: collision with root package name */
    private Application f28835a;

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ j(g gVar) {
        this();
    }

    @Override // com.google.android.gms.internal.consent_sdk.bb.a
    public final /* synthetic */ bb.a a(Application application) {
        this.f28835a = (Application) bv.a(application);
        return this;
    }

    @Override // com.google.android.gms.internal.consent_sdk.bb.a
    public final bb a() {
        bv.a(this.f28835a, Application.class);
        return new h(this.f28835a, null);
    }
}
