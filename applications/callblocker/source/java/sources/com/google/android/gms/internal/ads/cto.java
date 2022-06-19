package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cti;
import java.security.GeneralSecurityException;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cto.class */
public final class cto implements cti.AbstractC2897a {

    /* renamed from: a */
    private final /* synthetic */ ctj f13681a;

    /* renamed from: b */
    private final /* synthetic */ csx f13682b;

    public cto(ctj ctjVar, csx csxVar) {
        this.f13681a = ctjVar;
        this.f13682b = csxVar;
    }

    @Override // com.google.android.gms.internal.ads.cti.AbstractC2897a
    /* renamed from: a */
    public final css<?> mo10662a() {
        return new ctg(this.f13681a, this.f13682b, this.f13681a.m10721e());
    }

    @Override // com.google.android.gms.internal.ads.cti.AbstractC2897a
    /* renamed from: a */
    public final <Q> css<Q> mo10661a(Class<Q> cls) {
        try {
            return new ctg(this.f13681a, this.f13682b, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.cti.AbstractC2897a
    /* renamed from: b */
    public final Class<?> mo10660b() {
        return this.f13681a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.cti.AbstractC2897a
    /* renamed from: c */
    public final Set<Class<?>> mo10659c() {
        return this.f13681a.m10722d();
    }

    @Override // com.google.android.gms.internal.ads.cti.AbstractC2897a
    /* renamed from: d */
    public final Class<?> mo10658d() {
        return this.f13682b.getClass();
    }
}
