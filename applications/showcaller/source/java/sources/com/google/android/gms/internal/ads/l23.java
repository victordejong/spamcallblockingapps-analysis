package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l23.class */
final class l23 implements o23 {

    /* renamed from: a */
    final /* synthetic */ w13 f25919a;

    public l23(w13 w13Var) {
        this.f25919a = w13Var;
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: a */
    public final Class<?> mo12756a() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: b */
    public final o13<?> mo12755b() {
        w13 w13Var = this.f25919a;
        return new q13(w13Var, w13Var.m9808g());
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: c */
    public final Class<?> mo12754c() {
        return this.f25919a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: d */
    public final <Q> o13<Q> mo12753d(Class<Q> cls) {
        try {
            return new q13(this.f25919a, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: e */
    public final Set<Class<?>> mo12752e() {
        return this.f25919a.m9809f();
    }
}
