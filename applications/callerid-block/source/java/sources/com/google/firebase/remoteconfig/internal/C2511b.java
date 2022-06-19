package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC2395f;
import com.google.android.gms.tasks.AbstractC2397g;
/* renamed from: com.google.firebase.remoteconfig.internal.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/b.class */
public final /* synthetic */ class C2511b implements AbstractC2395f {

    /* renamed from: a */
    private final C2514e f10789a;

    /* renamed from: b */
    private final boolean f10790b;

    /* renamed from: c */
    private final C2517f f10791c;

    private C2511b(C2514e c2514e, boolean z, C2517f c2517f) {
        this.f10789a = c2514e;
        this.f10790b = z;
        this.f10791c = c2517f;
    }

    /* renamed from: b */
    public static AbstractC2395f m3278b(C2514e c2514e, boolean z, C2517f c2517f) {
        return new C2511b(c2514e, z, c2517f);
    }

    @Override // com.google.android.gms.tasks.AbstractC2395f
    /* renamed from: a */
    public AbstractC2397g mo3244a(Object obj) {
        return C2514e.m3268h(this.f10789a, this.f10790b, this.f10791c, (Void) obj);
    }
}
