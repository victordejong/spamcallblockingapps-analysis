package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import com.google.android.gms.internal.ads.dot;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcu.class */
public abstract class dcu<KeyProtoT extends dot> {

    /* renamed from: a */
    final Class<KeyProtoT> f46947a;

    /* renamed from: b */
    final Class<?> f46948b;

    /* renamed from: c */
    private final Map<Class<?>, dcw<?, KeyProtoT>> f46949c;

    @SafeVarargs
    public dcu(Class<KeyProtoT> cls, dcw<?, KeyProtoT>... dcwVarArr) {
        this.f46947a = cls;
        HashMap hashMap = new HashMap();
        for (dcw<?, KeyProtoT> dcwVar : dcwVarArr) {
            if (hashMap.containsKey(dcwVar.f46951a)) {
                String valueOf = String.valueOf(dcwVar.f46951a.getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            }
            hashMap.put(dcwVar.f46951a, dcwVar);
        }
        if (dcwVarArr.length > 0) {
            this.f46948b = dcwVarArr[0].f46951a;
        } else {
            this.f46948b = Void.class;
        }
        this.f46949c = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public abstract KeyProtoT mo16803a(dlw dlwVar) throws zzenn;

    /* renamed from: a */
    public final <P> P m16858a(KeyProtoT keyprotot, Class<P> cls) throws GeneralSecurityException {
        dcw<?, KeyProtoT> dcwVar = this.f46949c.get(cls);
        if (dcwVar != null) {
            return (P) dcwVar.mo16796a(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 41);
        sb.append("Requested primitive class ");
        sb.append(canonicalName);
        sb.append(" not supported.");
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public abstract String mo16806a();

    /* renamed from: a */
    public abstract void mo16802a(KeyProtoT keyprotot) throws GeneralSecurityException;

    /* renamed from: b */
    public abstract dih.EnumC12358a mo16801b();

    /* renamed from: c */
    public final Set<Class<?>> m16857c() {
        return this.f46949c.keySet();
    }

    /* renamed from: d */
    public dcx<?, KeyProtoT> mo16800d() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }
}
