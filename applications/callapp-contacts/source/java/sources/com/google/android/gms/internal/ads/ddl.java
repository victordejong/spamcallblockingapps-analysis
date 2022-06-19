package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ddm;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddl.class */
public final class ddl implements ddm.AbstractC12323b {

    /* renamed from: a */
    private final /* synthetic */ dct f46981a;

    public ddl(dct dctVar) {
        this.f46981a = dctVar;
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: a */
    public final dct<?> mo16830a() {
        return this.f46981a;
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: a */
    public final <Q> dct<Q> mo16829a(Class<Q> cls) throws GeneralSecurityException {
        if (this.f46981a.mo16861b().equals(cls)) {
            return this.f46981a;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: b */
    public final Class<?> mo16828b() {
        return this.f46981a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: c */
    public final Set<Class<?>> mo16827c() {
        return Collections.singleton(this.f46981a.mo16861b());
    }

    @Override // com.google.android.gms.internal.ads.ddm.AbstractC12323b
    /* renamed from: d */
    public final Class<?> mo16826d() {
        return null;
    }
}
