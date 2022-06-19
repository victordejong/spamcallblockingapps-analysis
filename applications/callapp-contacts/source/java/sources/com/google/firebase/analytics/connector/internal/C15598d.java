package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.p363a.C13849a;
import com.google.firebase.analytics.connector.AbstractC15587a;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.analytics.connector.internal.d */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/d.class */
public final class C15598d {

    /* renamed from: a */
    final Set<String> f55964a = new HashSet();

    /* renamed from: b */
    final AbstractC15587a.AbstractC15589b f55965b;

    /* renamed from: c */
    private final C13849a f55966c;

    /* renamed from: d */
    private final C15597c f55967d;

    public C15598d(C13849a c13849a, AbstractC15587a.AbstractC15589b abstractC15589b) {
        this.f55965b = abstractC15589b;
        this.f55966c = c13849a;
        C15597c c15597c = new C15597c(this);
        this.f55967d = c15597c;
        c13849a.m12134a(c15597c);
    }
}
