package com.google.firebase.crashlytics;

import com.google.firebase.components.AbstractC8861e;
import com.google.firebase.components.AbstractC8867h;
/* renamed from: com.google.firebase.crashlytics.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/b.class */
final /* synthetic */ class C8893b implements AbstractC8867h {

    /* renamed from: a */
    private final CrashlyticsRegistrar f38866a;

    private C8893b(CrashlyticsRegistrar crashlyticsRegistrar) {
        this.f38866a = crashlyticsRegistrar;
    }

    /* renamed from: b */
    public static AbstractC8867h m2406b(CrashlyticsRegistrar crashlyticsRegistrar) {
        return new C8893b(crashlyticsRegistrar);
    }

    @Override // com.google.firebase.components.AbstractC8867h
    /* renamed from: a */
    public Object mo1136a(AbstractC8861e abstractC8861e) {
        C8894c m2412b;
        m2412b = this.f38866a.m2412b(abstractC8861e);
        return m2412b;
    }
}
