package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ddm;
import java.security.GeneralSecurityException;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddo.class */
public final class ddo implements ddm.AbstractC12323b {

    /* renamed from: a */
    private final /* synthetic */ dcu f46990a;

    public ddo(dcu dcuVar) {
        this.f46990a = dcuVar;
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: a */
    public final dct<?> mo16830a() {
        dcu dcuVar = this.f46990a;
        return new dcs(dcuVar, dcuVar.f46948b);
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: a */
    public final <Q> dct<Q> mo16829a(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new dcs(this.f46990a, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: b */
    public final Class<?> mo16828b() {
        return this.f46990a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: c */
    public final Set<Class<?>> mo16827c() {
        return this.f46990a.m16857c();
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: d */
    public final Class<?> mo16826d() {
        return null;
    }
}
