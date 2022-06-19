package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.deg;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/csv.class */
public class csv<PrimitiveT, KeyProtoT extends deg> implements css<PrimitiveT> {

    /* renamed from: a */
    private final csx<KeyProtoT> f13645a;

    /* renamed from: b */
    private final Class<PrimitiveT> f13646b;

    public csv(csx<KeyProtoT> csxVar, Class<PrimitiveT> cls) {
        if (csxVar.m10722d().contains(cls) || Void.class.equals(cls)) {
            this.f13645a = csxVar;
            this.f13646b = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", csxVar.toString(), cls.getName()));
    }

    /* renamed from: b */
    private final PrimitiveT m10728b(KeyProtoT keyprotot) {
        if (Void.class.equals(this.f13646b)) {
            throw new GeneralSecurityException("Cannot create a primitive for Void");
        }
        this.f13645a.mo10637a((csx<KeyProtoT>) keyprotot);
        return (PrimitiveT) this.f13645a.m10723a(keyprotot, (Class<PrimitiveT>) this.f13646b);
    }

    /* renamed from: c */
    private final csu<?, KeyProtoT> m10727c() {
        return new csu<>(this.f13645a.mo10633f());
    }

    @Override // com.google.android.gms.internal.ads.css
    /* renamed from: a */
    public final PrimitiveT mo10732a(dbi dbiVar) {
        try {
            return m10728b((csv<PrimitiveT, KeyProtoT>) this.f13645a.mo10638a(dbiVar));
        } catch (zzeco e) {
            String valueOf = String.valueOf(this.f13645a.m10724a().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.css
    /* renamed from: a */
    public final PrimitiveT mo10731a(deg degVar) {
        String valueOf = String.valueOf(this.f13645a.m10724a().getName());
        String concat = valueOf.length() != 0 ? "Expected proto of type ".concat(valueOf) : new String("Expected proto of type ");
        if (!this.f13645a.m10724a().isInstance(degVar)) {
            throw new GeneralSecurityException(concat);
        }
        return (PrimitiveT) m10728b((csv<PrimitiveT, KeyProtoT>) degVar);
    }

    @Override // com.google.android.gms.internal.ads.css
    /* renamed from: a */
    public final String mo10733a() {
        return this.f13645a.mo10636b();
    }

    @Override // com.google.android.gms.internal.ads.css
    /* renamed from: b */
    public final deg mo10729b(dbi dbiVar) {
        try {
            return m10727c().m10734a(dbiVar);
        } catch (zzeco e) {
            String valueOf = String.valueOf(this.f13645a.mo10633f().m10725a().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.css
    /* renamed from: b */
    public final Class<PrimitiveT> mo10730b() {
        return this.f13646b;
    }

    @Override // com.google.android.gms.internal.ads.css
    /* renamed from: c */
    public final cxu mo10726c(dbi dbiVar) {
        try {
            return (cxu) ((dcw) cxu.m10416d().m10411a(this.f13645a.mo10636b()).m10412a(m10727c().m10734a(dbiVar).mo9985k()).m10413a(this.f13645a.mo10634c()).mo9987g());
        } catch (zzeco e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }
}
