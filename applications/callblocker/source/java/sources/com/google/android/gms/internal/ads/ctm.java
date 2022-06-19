package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cti;
import java.util.Collections;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ctm.class */
public final class ctm implements cti.AbstractC2897a {

    /* renamed from: a */
    private final /* synthetic */ css f13679a;

    public ctm(css cssVar) {
        this.f13679a = cssVar;
    }

    @Override // com.google.android.gms.internal.ads.cti.AbstractC2897a
    /* renamed from: a */
    public final css<?> mo10662a() {
        return this.f13679a;
    }

    @Override // com.google.android.gms.internal.ads.cti.AbstractC2897a
    /* renamed from: a */
    public final <Q> css<Q> mo10661a(Class<Q> cls) {
        if (!this.f13679a.mo10730b().equals(cls)) {
            throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
        }
        return this.f13679a;
    }

    @Override // com.google.android.gms.internal.ads.cti.AbstractC2897a
    /* renamed from: b */
    public final Class<?> mo10660b() {
        return this.f13679a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.cti.AbstractC2897a
    /* renamed from: c */
    public final Set<Class<?>> mo10659c() {
        return Collections.singleton(this.f13679a.mo10730b());
    }

    @Override // com.google.android.gms.internal.ads.cti.AbstractC2897a
    /* renamed from: d */
    public final Class<?> mo10658d() {
        return null;
    }
}
