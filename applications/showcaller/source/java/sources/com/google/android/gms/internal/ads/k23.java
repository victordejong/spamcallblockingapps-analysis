package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k23.class */
final class k23 implements o23 {

    /* renamed from: a */
    final /* synthetic */ o13 f25061a;

    public k23(o13 o13Var) {
        this.f25061a = o13Var;
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: a */
    public final Class<?> mo12756a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: b */
    public final o13<?> mo12755b() {
        return this.f25061a;
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: c */
    public final Class<?> mo12754c() {
        return this.f25061a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: d */
    public final <Q> o13<Q> mo12753d(Class<Q> cls) {
        if (this.f25061a.mo12056a().equals(cls)) {
            return this.f25061a;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: e */
    public final Set<Class<?>> mo12752e() {
        return Collections.singleton(this.f25061a.mo12056a());
    }
}
