package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.mf3;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q13.class */
public class q13<PrimitiveT, KeyProtoT extends mf3> implements o13<PrimitiveT> {

    /* renamed from: a */
    private final w13<KeyProtoT> f28284a;

    /* renamed from: b */
    private final Class<PrimitiveT> f28285b;

    public q13(w13<KeyProtoT> w13Var, Class<PrimitiveT> cls) {
        if (w13Var.m9809f().contains(cls) || Void.class.equals(cls)) {
            this.f28284a = w13Var;
            this.f28285b = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", w13Var.toString(), cls.getName()));
    }

    /* renamed from: b */
    private final PrimitiveT m12055b(KeyProtoT keyprotot) {
        if (!Void.class.equals(this.f28285b)) {
            this.f28284a.mo8527d(keyprotot);
            return (PrimitiveT) this.f28284a.m9810e(keyprotot, (Class<PrimitiveT>) this.f28285b);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    /* renamed from: c */
    private final p13<?, KeyProtoT> m12054c() {
        return new p13<>(this.f28284a.mo8526h());
    }

    @Override // com.google.android.gms.internal.ads.o13
    /* renamed from: a */
    public final Class<PrimitiveT> mo12056a() {
        return this.f28285b;
    }

    @Override // com.google.android.gms.internal.ads.o13
    /* renamed from: e */
    public final String mo12053e() {
        return this.f28284a.mo8529b();
    }

    @Override // com.google.android.gms.internal.ads.o13
    /* renamed from: g */
    public final a93 mo12052g(zzgex zzgexVar) {
        try {
            KeyProtoT m12464a = m12054c().m12464a(zzgexVar);
            z83 m16666E = a93.m16666E();
            m16666E.m8482q(this.f28284a.mo8529b());
            m16666E.m8481r(m12464a.mo10722N());
            m16666E.m8480s(this.f28284a.mo8525i());
            return m16666E.m15512n();
        } catch (zzggm e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.o13
    /* renamed from: h */
    public final PrimitiveT mo12051h(mf3 mf3Var) {
        String name = this.f28284a.m9811a().getName();
        String concat = name.length() != 0 ? "Expected proto of type ".concat(name) : new String("Expected proto of type ");
        if (this.f28284a.m9811a().isInstance(mf3Var)) {
            return m12055b(mf3Var);
        }
        throw new GeneralSecurityException(concat);
    }

    @Override // com.google.android.gms.internal.ads.o13
    /* renamed from: i */
    public final mf3 mo12050i(zzgex zzgexVar) {
        try {
            return m12054c().m12464a(zzgexVar);
        } catch (zzggm e) {
            String name = this.f28284a.mo8526h().m10427a().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.o13
    /* renamed from: j */
    public final PrimitiveT mo12049j(zzgex zzgexVar) {
        try {
            return m12055b(this.f28284a.mo8528c(zzgexVar));
        } catch (zzggm e) {
            String name = this.f28284a.m9811a().getName();
            throw new GeneralSecurityException(name.length() != 0 ? "Failures parsing proto of type ".concat(name) : new String("Failures parsing proto of type "), e);
        }
    }
}
