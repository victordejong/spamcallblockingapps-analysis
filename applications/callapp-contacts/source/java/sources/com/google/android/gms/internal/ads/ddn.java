package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ddm;
import java.security.GeneralSecurityException;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddn.class */
public final class ddn implements ddm.AbstractC12323b {

    /* renamed from: a */
    private final /* synthetic */ ddj f46988a;

    /* renamed from: b */
    private final /* synthetic */ dcu f46989b;

    public ddn(ddj ddjVar, dcu dcuVar) {
        this.f46988a = ddjVar;
        this.f46989b = dcuVar;
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: a */
    public final dct<?> mo16830a() {
        ddj ddjVar = this.f46988a;
        return new ddk(ddjVar, this.f46989b, ddjVar.f46948b);
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: a */
    public final <Q> dct<Q> mo16829a(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new ddk(this.f46988a, this.f46989b, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: b */
    public final Class<?> mo16828b() {
        return this.f46988a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: c */
    public final Set<Class<?>> mo16827c() {
        return this.f46988a.m16857c();
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: d */
    public final Class<?> mo16826d() {
        return this.f46989b.getClass();
    }
}
