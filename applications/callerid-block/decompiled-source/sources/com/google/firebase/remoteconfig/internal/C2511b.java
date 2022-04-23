package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC2395f;
import com.google.android.gms.tasks.AbstractC2397g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.remoteconfig.internal.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/b.class */
public final /* synthetic */ class C2511b implements AbstractC2395f {

    /* renamed from: a */
    private final C2514e f10789a;

    /* renamed from: b */
    private final boolean f10790b;

    /* renamed from: c */
    private final C2517f f10791c;

    private C2511b(C2514e eVar, boolean z, C2517f fVar) {
        this.f10789a = eVar;
        this.f10790b = z;
        this.f10791c = fVar;
    }

    /* renamed from: b */
    public static AbstractC2395f m3278b(C2514e eVar, boolean z, C2517f fVar) {
        return new C2511b(eVar, z, fVar);
    }

    @Override // com.google.android.gms.tasks.AbstractC2395f
    /* renamed from: a */
    public AbstractC2397g mo3244a(Object obj) {
        return C2514e.m3268h(this.f10789a, this.f10790b, this.f10791c, (Void) obj);
    }
}
