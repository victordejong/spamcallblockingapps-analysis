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

    /* renamed from: a  reason: collision with root package name */
    final Class<KeyProtoT> f26728a;

    /* renamed from: b  reason: collision with root package name */
    final Class<?> f26729b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, dcw<?, KeyProtoT>> f26730c;

    /* JADX INFO: Access modifiers changed from: protected */
    @SafeVarargs
    public dcu(Class<KeyProtoT> cls, dcw<?, KeyProtoT>... dcwVarArr) {
        this.f26728a = cls;
        HashMap hashMap = new HashMap();
        for (dcw<?, KeyProtoT> dcwVar : dcwVarArr) {
            if (hashMap.containsKey(dcwVar.f26732a)) {
                String valueOf = String.valueOf(dcwVar.f26732a.getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            } else {
                hashMap.put(dcwVar.f26732a, dcwVar);
            }
        }
        if (dcwVarArr.length > 0) {
            this.f26729b = dcwVarArr[0].f26732a;
        } else {
            this.f26729b = Void.class;
        }
        this.f26730c = Collections.unmodifiableMap(hashMap);
    }

    public abstract KeyProtoT a(dlw dlwVar) throws zzenn;

    public final <P> P a(KeyProtoT keyprotot, Class<P> cls) throws GeneralSecurityException {
        dcw<?, KeyProtoT> dcwVar = this.f26730c.get(cls);
        if (dcwVar != null) {
            return (P) dcwVar.a(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 41);
        sb.append("Requested primitive class ");
        sb.append(canonicalName);
        sb.append(" not supported.");
        throw new IllegalArgumentException(sb.toString());
    }

    public abstract String a();

    public abstract void a(KeyProtoT keyprotot) throws GeneralSecurityException;

    public abstract dih.a b();

    public final Set<Class<?>> c() {
        return this.f26730c.keySet();
    }

    public dcx<?, KeyProtoT> d() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }
}
