package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m23.class */
final class m23 implements o23 {

    /* renamed from: a */
    final /* synthetic */ j23 f26406a;

    /* renamed from: b */
    final /* synthetic */ w13 f26407b;

    public m23(j23 j23Var, w13 w13Var) {
        this.f26406a = j23Var;
        this.f26407b = w13Var;
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: a */
    public final Class<?> mo12756a() {
        return this.f26407b.getClass();
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: b */
    public final o13<?> mo12755b() {
        j23 j23Var = this.f26406a;
        return new i23(j23Var, this.f26407b, j23Var.m9808g());
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: c */
    public final Class<?> mo12754c() {
        return this.f26406a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: d */
    public final <Q> o13<Q> mo12753d(Class<Q> cls) {
        try {
            return new i23(this.f26406a, this.f26407b, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.o23
    /* renamed from: e */
    public final Set<Class<?>> mo12752e() {
        return this.f26406a.m9809f();
    }
}
