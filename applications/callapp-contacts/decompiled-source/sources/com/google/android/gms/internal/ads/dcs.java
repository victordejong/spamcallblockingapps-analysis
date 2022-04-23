package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dot;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcs.class */
public class dcs<PrimitiveT, KeyProtoT extends dot> implements dct<PrimitiveT> {

    /* renamed from: a  reason: collision with root package name */
    private final dcu<KeyProtoT> f26726a;

    /* renamed from: b  reason: collision with root package name */
    private final Class<PrimitiveT> f26727b;

    public dcs(dcu<KeyProtoT> dcuVar, Class<PrimitiveT> cls) {
        if (dcuVar.c().contains(cls) || Void.class.equals(cls)) {
            this.f26726a = dcuVar;
            this.f26727b = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", dcuVar.toString(), cls.getName()));
    }

    private final PrimitiveT b(KeyProtoT keyprotot) throws GeneralSecurityException {
        if (!Void.class.equals(this.f26727b)) {
            this.f26726a.a((dcu<KeyProtoT>) keyprotot);
            return (PrimitiveT) this.f26726a.a(keyprotot, (Class<PrimitiveT>) this.f26727b);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    private final dcv<?, KeyProtoT> c() {
        return new dcv<>(this.f26726a.d());
    }

    @Override // com.google.android.gms.internal.ads.dct
    public final PrimitiveT a(dlw dlwVar) throws GeneralSecurityException {
        try {
            return b((dcs<PrimitiveT, KeyProtoT>) this.f26726a.a(dlwVar));
        } catch (zzenn e) {
            String valueOf = String.valueOf(this.f26726a.f26728a.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.dct
    public final PrimitiveT a(dot dotVar) throws GeneralSecurityException {
        String valueOf = String.valueOf(this.f26726a.f26728a.getName());
        String concat = valueOf.length() != 0 ? "Expected proto of type ".concat(valueOf) : new String("Expected proto of type ");
        if (this.f26726a.f26728a.isInstance(dotVar)) {
            return (PrimitiveT) b((dcs<PrimitiveT, KeyProtoT>) dotVar);
        }
        throw new GeneralSecurityException(concat);
    }

    @Override // com.google.android.gms.internal.ads.dct
    public final String a() {
        return this.f26726a.a();
    }

    @Override // com.google.android.gms.internal.ads.dct
    public final dot b(dlw dlwVar) throws GeneralSecurityException {
        try {
            return c().a(dlwVar);
        } catch (zzenn e) {
            String valueOf = String.valueOf(this.f26726a.d().f26733a.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.dct
    public final Class<PrimitiveT> b() {
        return this.f26727b;
    }

    @Override // com.google.android.gms.internal.ads.dct
    public final dih c(dlw dlwVar) throws GeneralSecurityException {
        try {
            return dih.b().a(this.f26726a.a()).a(c().a(dlwVar).f()).a(this.f26726a.b()).f();
        } catch (zzenn e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }
}
