package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import com.google.android.gms.internal.ads.zzelj;
import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.u20;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeae.class */
public class zzeae<PrimitiveT, KeyProtoT extends zzelj> implements zzeab<PrimitiveT> {

    /* renamed from: a */
    public final zzeag<KeyProtoT> f27960a;

    /* renamed from: b */
    public final Class<PrimitiveT> f27961b;

    public zzeae(zzeag<KeyProtoT> zzeagVar, Class<PrimitiveT> cls) {
        if (zzeagVar.m12950d().contains(cls) || Void.class.equals(cls)) {
            this.f27960a = zzeagVar;
            this.f27961b = cls;
            return;
        }
        throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", zzeagVar.toString(), cls.getName()));
    }

    @Override // com.google.android.gms.internal.ads.zzeab
    /* renamed from: a */
    public final zzefb mo12963a(zzeip zzeipVar) throws GeneralSecurityException {
        try {
            KeyProtoT a = m12958c().m26309a(zzeipVar);
            zzefb.zzb p = zzefb.m12687p();
            p.m12682a(this.f27960a.mo12897a());
            p.m12683a(a.mo12346j());
            p.m12684a(this.f27960a.mo12892c());
            return (zzefb) ((zzejz) p.mo12342K());
        } catch (zzekj e) {
            throw new GeneralSecurityException("Unexpected proto", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeab
    /* renamed from: a */
    public final Class<PrimitiveT> mo12964a() {
        return this.f27961b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzeab
    /* renamed from: a */
    public final PrimitiveT mo12962a(zzelj zzeljVar) throws GeneralSecurityException {
        String valueOf = String.valueOf(this.f27960a.m12951b().getName());
        String concat = valueOf.length() != 0 ? "Expected proto of type ".concat(valueOf) : new String("Expected proto of type ");
        if (this.f27960a.m12951b().isInstance(zzeljVar)) {
            return m12959b((zzeae<PrimitiveT, KeyProtoT>) zzeljVar);
        }
        throw new GeneralSecurityException(concat);
    }

    @Override // com.google.android.gms.internal.ads.zzeab
    /* renamed from: b */
    public final zzelj mo12960b(zzeip zzeipVar) throws GeneralSecurityException {
        try {
            return m12958c().m26309a(zzeipVar);
        } catch (zzekj e) {
            String valueOf = String.valueOf(this.f27960a.mo12891f().m12956a().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }

    /* renamed from: b */
    public final PrimitiveT m12959b(KeyProtoT keyprotot) throws GeneralSecurityException {
        if (!Void.class.equals(this.f27961b)) {
            this.f27960a.mo12894a((zzeag<KeyProtoT>) keyprotot);
            return (PrimitiveT) this.f27960a.m12952a(keyprotot, (Class<PrimitiveT>) this.f27961b);
        }
        throw new GeneralSecurityException("Cannot create a primitive for Void");
    }

    @Override // com.google.android.gms.internal.ads.zzeab
    /* renamed from: b */
    public final String mo12961b() {
        return this.f27960a.mo12897a();
    }

    /* renamed from: c */
    public final u20<?, KeyProtoT> m12958c() {
        return new u20<>(this.f27960a.mo12891f());
    }

    @Override // com.google.android.gms.internal.ads.zzeab
    /* renamed from: c */
    public final PrimitiveT mo12957c(zzeip zzeipVar) throws GeneralSecurityException {
        try {
            return m12959b((zzeae<PrimitiveT, KeyProtoT>) this.f27960a.mo12895a(zzeipVar));
        } catch (zzekj e) {
            String valueOf = String.valueOf(this.f27960a.m12951b().getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "Failures parsing proto of type ".concat(valueOf) : new String("Failures parsing proto of type "), e);
        }
    }
}
