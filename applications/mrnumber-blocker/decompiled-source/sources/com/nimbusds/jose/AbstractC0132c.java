package com.nimbusds.jose;

import com.nimbusds.jose.util.c;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.nimbusds.jose.c */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/c.class */
public abstract class AbstractC0132c implements Serializable {

    /* renamed from: l */
    private static final Map<String, Object> f222l = Collections.unmodifiableMap(new HashMap());

    /* renamed from: f */
    private final a f223f;

    /* renamed from: g */
    private final e f224g;

    /* renamed from: h */
    private final String f225h;

    /* renamed from: i */
    private final Set<String> f226i;

    /* renamed from: j */
    private final Map<String, Object> f227j;

    /* renamed from: k */
    private final c f228k;

    protected AbstractC0132c(a aVar, e eVar, String str, Set<String> set, Map<String, Object> map, c cVar) {
        if (aVar != null) {
            this.f223f = aVar;
            this.f225h = str;
            if (set != null) {
                this.f226i = Collections.unmodifiableSet(new HashSet(set));
            } else {
                this.f226i = null;
            }
            if (map != null) {
                this.f227j = Collections.unmodifiableMap(new HashMap(map));
            } else {
                this.f227j = f222l;
            }
            this.f228k = cVar;
            return;
        }
        throw new IllegalArgumentException("The algorithm \"alg\" header parameter must not be null");
    }

    /* renamed from: a */
    public a m886a() {
        return this.f223f;
    }

    /* renamed from: b */
    public c m885b() {
        c cVar = this.f228k;
        c cVar2 = cVar;
        if (cVar == null) {
            cVar2 = c.c(toString());
        }
        return cVar2;
    }

    /* renamed from: c */
    public l.a.a.c m884c() {
        l.a.a.c cVar = new l.a.a.c(this.f227j);
        cVar.put("alg", this.f223f.toString());
        e eVar = this.f224g;
        if (eVar == null) {
            String str = this.f225h;
            if (str != null) {
                cVar.put("cty", str);
            }
            Set<String> set = this.f226i;
            if (set != null && !set.isEmpty()) {
                cVar.put("crit", new ArrayList(this.f226i));
            }
            return cVar;
        }
        eVar.toString();
        throw null;
    }

    public String toString() {
        return m884c().toString();
    }
}
