package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.mf3;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w13.class */
public abstract class w13<KeyProtoT extends mf3> {

    /* renamed from: a */
    private final Class<KeyProtoT> f31431a;

    /* renamed from: b */
    private final Map<Class<?>, v13<?, KeyProtoT>> f31432b;

    /* renamed from: c */
    private final Class<?> f31433c;

    @SafeVarargs
    public w13(Class<KeyProtoT> cls, v13<?, KeyProtoT>... v13VarArr) {
        this.f31431a = cls;
        HashMap hashMap = new HashMap();
        for (int i = 0; i <= 0; i++) {
            v13<?, KeyProtoT> v13Var = v13VarArr[i];
            if (hashMap.containsKey(v13Var.m10147a())) {
                String valueOf = String.valueOf(v13Var.m10147a().getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            }
            hashMap.put(v13Var.m10147a(), v13Var);
        }
        this.f31433c = v13VarArr[0].m10147a();
        this.f31432b = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public final Class<KeyProtoT> m9811a() {
        return this.f31431a;
    }

    /* renamed from: b */
    public abstract String mo8529b();

    /* renamed from: c */
    public abstract KeyProtoT mo8528c(zzgex zzgexVar);

    /* renamed from: d */
    public abstract void mo8527d(KeyProtoT keyprotot);

    /* renamed from: e */
    public final <P> P m9810e(KeyProtoT keyprotot, Class<P> cls) {
        v13<?, KeyProtoT> v13Var = this.f31432b.get(cls);
        if (v13Var != null) {
            return (P) v13Var.mo8969b(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 41);
        sb.append("Requested primitive class ");
        sb.append(canonicalName);
        sb.append(" not supported.");
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: f */
    public final Set<Class<?>> m9809f() {
        return this.f31432b.keySet();
    }

    /* renamed from: g */
    public final Class<?> m9808g() {
        return this.f31433c;
    }

    /* renamed from: h */
    public u13<?, KeyProtoT> mo8526h() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }

    /* renamed from: i */
    public abstract int mo8525i();

    /* renamed from: j */
    public int mo9362j() {
        return 1;
    }
}
