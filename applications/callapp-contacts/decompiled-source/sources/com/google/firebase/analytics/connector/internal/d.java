package com.google.firebase.analytics.connector.internal;

import com.google.firebase.analytics.connector.a;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    final Set<String> f32202a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    final a.b f32203b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.gms.measurement.a.a f32204c;

    /* renamed from: d  reason: collision with root package name */
    private final c f32205d;

    public d(com.google.android.gms.measurement.a.a aVar, a.b bVar) {
        this.f32203b = bVar;
        this.f32204c = aVar;
        c cVar = new c(this);
        this.f32205d = cVar;
        aVar.a(cVar);
    }
}
