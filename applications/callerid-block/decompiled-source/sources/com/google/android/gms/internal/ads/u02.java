package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.qd2;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/u02.class */
public abstract class u02<KeyProtoT extends qd2> {

    /* renamed from: a */
    private final Class<KeyProtoT> f8744a;

    /* renamed from: b */
    private final Map<Class<?>, t02<?, KeyProtoT>> f8745b;

    /* renamed from: c */
    private final Class<?> f8746c;

    @SafeVarargs
    protected u02(Class<KeyProtoT> cls, t02<?, KeyProtoT>... t02VarArr) {
        this.f8744a = cls;
        HashMap hashMap = new HashMap();
        for (int i = 0; i <= 0; i++) {
            t02<?, KeyProtoT> t02Var = t02VarArr[i];
            if (hashMap.containsKey(t02Var.m5549a())) {
                String valueOf = String.valueOf(t02Var.m5549a().getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            } else {
                hashMap.put(t02Var.m5549a(), t02Var);
            }
        }
        this.f8746c = t02VarArr[0].m5549a();
        this.f8745b = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public final Class<KeyProtoT> m5446a() {
        return this.f8744a;
    }

    /* renamed from: b */
    public abstract String m5445b();

    /* renamed from: c */
    public abstract zzenx m5444c();

    /* renamed from: d */
    public abstract KeyProtoT m5443d(zzesf zzesfVar);

    /* renamed from: e */
    public abstract void m5442e(KeyProtoT keyprotot);

    /* renamed from: f */
    public final <P> P m5441f(KeyProtoT keyprotot, Class<P> cls) {
        t02<?, KeyProtoT> t02Var = this.f8745b.get(cls);
        if (t02Var != null) {
            return (P) t02Var.m5548b(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 41);
        sb.append("Requested primitive class ");
        sb.append(canonicalName);
        sb.append(" not supported.");
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: g */
    public final Set<Class<?>> m5440g() {
        return this.f8745b.keySet();
    }

    /* renamed from: h */
    final Class<?> m5439h() {
        return this.f8746c;
    }

    /* renamed from: i */
    public r02<?, KeyProtoT> m5438i() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }
}
