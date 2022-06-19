package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dot;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcs.class */
public class dcs<PrimitiveT, KeyProtoT extends dot> implements dct<PrimitiveT> {

    /* renamed from: a */
    private final dcu<KeyProtoT> f46945a;

    /* renamed from: b */
    private final Class<PrimitiveT> f46946b;

    public dcs(dcu<KeyProtoT> dcuVar, Class<PrimitiveT> cls) {
        if (dcuVar.m16857c().contains(cls) || Void.class.equals(cls)) {
            this.f46945a = dcuVar;
            this.f46946b = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", dcuVar.toString(), cls.getName()));
    }

    /* renamed from: b */
    private final PrimitiveT m16866b(KeyProtoT keyprotot) throws GeneralSecurityException {
        if (!Void.class.equals(this.f46946b)) {
            this.f46945a.mo16802a((dcu<KeyProtoT>) keyprotot);
            return (PrimitiveT) this.f46945a.m16858a(keyprotot, (Class<PrimitiveT>) this.f46946b);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    /* renamed from: c */
    private final dcv<?, KeyProtoT> m16865c() {
        return new dcv<>(this.f46945a.mo16800d());
    }

    @Override // com.google.android.gms.internal.ads.dct
    /* renamed from: a */
    public final PrimitiveT mo16863a(dlw dlwVar) throws GeneralSecurityException {
        try {
            return m16866b((dcs<PrimitiveT, KeyProtoT>) this.f46945a.mo16803a(dlwVar));
        } catch (zzenn e) {
            String valueOf = String.valueOf(this.f46945a.f46947a.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dct
    /* renamed from: a */
    public final PrimitiveT mo16862a(dot dotVar) throws GeneralSecurityException {
        String valueOf = String.valueOf(this.f46945a.f46947a.getName());
        String concat = valueOf.length() != 0 ? "Expected proto of type ".concat(valueOf) : new String("Expected proto of type ");
        if (this.f46945a.f46947a.isInstance(dotVar)) {
            return (PrimitiveT) m16866b((dcs<PrimitiveT, KeyProtoT>) dotVar);
        }
        throw new GeneralSecurityException(concat);
    }

    @Override // com.google.android.gms.internal.ads.dct
    /* renamed from: a */
    public final String mo16864a() {
        return this.f46945a.mo16806a();
    }

    @Override // com.google.android.gms.internal.ads.dct
    /* renamed from: b */
    public final dot mo16860b(dlw dlwVar) throws GeneralSecurityException {
        try {
            return m16865c().m16856a(dlwVar);
        } catch (zzenn e) {
            String valueOf = String.valueOf(this.f46945a.mo16800d().f46952a.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.dct
    /* renamed from: b */
    public final Class<PrimitiveT> mo16861b() {
        return this.f46946b;
    }

    @Override // com.google.android.gms.internal.ads.dct
    /* renamed from: c */
    public final dih mo16859c(dlw dlwVar) throws GeneralSecurityException {
        try {
            return dih.m16634b().m16629a(this.f46945a.mo16806a()).m16630a(m16865c().m16856a(dlwVar).mo16257f()).m16631a(this.f46945a.mo16801b()).mo16259f();
        } catch (zzenn e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }
}
