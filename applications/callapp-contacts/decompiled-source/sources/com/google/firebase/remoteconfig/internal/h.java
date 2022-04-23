package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/h.class */
public final /* synthetic */ class h implements b {

    /* renamed from: a  reason: collision with root package name */
    private final g f32626a;

    /* renamed from: b  reason: collision with root package name */
    private final long f32627b;

    private h(g gVar, long j) {
        this.f32626a = gVar;
        this.f32627b = j;
    }

    public static b a(g gVar, long j) {
        return new h(gVar, j);
    }

    @Override // com.google.android.gms.tasks.b
    public final Object then(com.google.android.gms.tasks.h hVar) {
        return g.a(this.f32626a, this.f32627b, hVar);
    }
}
