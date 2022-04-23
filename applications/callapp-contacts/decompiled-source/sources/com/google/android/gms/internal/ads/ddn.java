package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ddm;
import java.security.GeneralSecurityException;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddn.class */
final class ddn implements ddm.b {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ddj f26757a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dcu f26758b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ddn(ddj ddjVar, dcu dcuVar) {
        this.f26757a = ddjVar;
        this.f26758b = dcuVar;
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final dct<?> a() {
        ddj ddjVar = this.f26757a;
        return new ddk(ddjVar, this.f26758b, ddjVar.f26729b);
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final <Q> dct<Q> a(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new ddk(this.f26757a, this.f26758b, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final Class<?> b() {
        return this.f26757a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final Set<Class<?>> c() {
        return this.f26757a.c();
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final Class<?> d() {
        return this.f26758b.getClass();
    }
}
