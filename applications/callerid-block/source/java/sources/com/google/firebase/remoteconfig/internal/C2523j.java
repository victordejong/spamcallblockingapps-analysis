package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC2395f;
import com.google.android.gms.tasks.AbstractC2397g;
import com.google.android.gms.tasks.C2401j;
import com.google.firebase.remoteconfig.internal.C2524k;
/* renamed from: com.google.firebase.remoteconfig.internal.j */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/j.class */
public final /* synthetic */ class C2523j implements AbstractC2395f {

    /* renamed from: a */
    private final C2524k.C2525a f10818a;

    private C2523j(C2524k.C2525a c2525a) {
        this.f10818a = c2525a;
    }

    /* renamed from: b */
    public static AbstractC2395f m3243b(C2524k.C2525a c2525a) {
        return new C2523j(c2525a);
    }

    @Override // com.google.android.gms.tasks.AbstractC2395f
    /* renamed from: a */
    public AbstractC2397g mo3244a(Object obj) {
        AbstractC2397g m3760e;
        C2517f c2517f = (C2517f) obj;
        m3760e = C2401j.m3760e(this.f10818a);
        return m3760e;
    }
}
