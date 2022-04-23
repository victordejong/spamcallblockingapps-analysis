package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ddm;
import java.security.GeneralSecurityException;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddo.class */
final class ddo implements ddm.b {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dcu f26759a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ddo(dcu dcuVar) {
        this.f26759a = dcuVar;
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final dct<?> a() {
        dcu dcuVar = this.f26759a;
        return new dcs(dcuVar, dcuVar.f26729b);
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final <Q> dct<Q> a(Class<Q> cls) throws GeneralSecurityException {
        try {
            return new dcs(this.f26759a, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final Class<?> b() {
        return this.f26759a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final Set<Class<?>> c() {
        return this.f26759a.c();
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final Class<?> d() {
        return null;
    }
}
