package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ddm;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddl.class */
public final class ddl implements ddm.b {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dct f26752a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ddl(dct dctVar) {
        this.f26752a = dctVar;
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final dct<?> a() {
        return this.f26752a;
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final <Q> dct<Q> a(Class<Q> cls) throws GeneralSecurityException {
        if (this.f26752a.b().equals(cls)) {
            return this.f26752a;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final Class<?> b() {
        return this.f26752a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final Set<Class<?>> c() {
        return Collections.singleton(this.f26752a.b());
    }

    @Override // com.google.android.gms.internal.ads.ddm.b
    public final Class<?> d() {
        return null;
    }
}
