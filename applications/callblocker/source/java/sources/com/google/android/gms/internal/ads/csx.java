package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cxu;
import com.google.android.gms.internal.ads.deg;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/csx.class */
public abstract class csx<KeyProtoT extends deg> {

    /* renamed from: a */
    private final Class<KeyProtoT> f13648a;

    /* renamed from: b */
    private final Map<Class<?>, csz<?, KeyProtoT>> f13649b;

    /* renamed from: c */
    private final Class<?> f13650c;

    @SafeVarargs
    public csx(Class<KeyProtoT> cls, csz<?, KeyProtoT>... cszVarArr) {
        this.f13648a = cls;
        HashMap hashMap = new HashMap();
        for (csz<?, KeyProtoT> cszVar : cszVarArr) {
            if (hashMap.containsKey(cszVar.m10718a())) {
                String valueOf = String.valueOf(cszVar.m10718a().getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            }
            hashMap.put(cszVar.m10718a(), cszVar);
        }
        if (cszVarArr.length > 0) {
            this.f13650c = cszVarArr[0].m10718a();
        } else {
            this.f13650c = Void.class;
        }
        this.f13649b = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public abstract KeyProtoT mo10638a(dbi dbiVar);

    /* renamed from: a */
    public final Class<KeyProtoT> m10724a() {
        return this.f13648a;
    }

    /* renamed from: a */
    public final <P> P m10723a(KeyProtoT keyprotot, Class<P> cls) {
        csz<?, KeyProtoT> cszVar = this.f13649b.get(cls);
        if (cszVar == null) {
            String canonicalName = cls.getCanonicalName();
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(canonicalName).length() + 41).append("Requested primitive class ").append(canonicalName).append(" not supported.").toString());
        }
        return (P) cszVar.mo10629a(keyprotot);
    }

    /* renamed from: a */
    public abstract void mo10637a(KeyProtoT keyprotot);

    /* renamed from: b */
    public abstract String mo10636b();

    /* renamed from: c */
    public abstract cxu.EnumC2931b mo10634c();

    /* renamed from: d */
    public final Set<Class<?>> m10722d() {
        return this.f13649b.keySet();
    }

    /* renamed from: e */
    public final Class<?> m10721e() {
        return this.f13650c;
    }

    /* renamed from: f */
    public csw<?, KeyProtoT> mo10633f() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }
}
