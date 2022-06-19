package com.freshchat.consumer.sdk.p051d;

import e.m.d.y.n;
import e.m.e.b0;
import e.m.e.c0;
import e.m.e.e0.a0.o;
import e.m.e.e0.s;
import e.m.e.f0.a;
import e.m.e.g0.c;
import e.m.e.k;
import e.m.e.q;
import e.m.e.t;
import e.m.e.u;
import e.m.e.w;
import java.io.IOException;
import java.util.ConcurrentModificationException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.d.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/d/a.class */
public class C1522a<T> implements c0 {

    /* renamed from: es */
    private final Class<?> f4130es;

    /* renamed from: et */
    private final String f4131et;

    /* renamed from: eu */
    public final Map<String, Class<?>> f4132eu = new LinkedHashMap();

    /* renamed from: ev */
    private final Map<Class<?>, String> f4133ev = new LinkedHashMap();

    public C1522a(Class<?> cls, String str) {
        if (str == null || cls == null) {
            throw null;
        }
        this.f4130es = cls;
        this.f4131et = str;
    }

    /* renamed from: a */
    public b0<?> mo40654a(Class<?> cls, Map<Class<?>, b0<?>> map) {
        return map.get(cls);
    }

    /* renamed from: a */
    public b0<?> mo40651a(String str, Map<String, b0<?>> map, q qVar, Class<?> cls) {
        return map.get(str);
    }

    /* renamed from: a */
    public <R> t mo40653a(String str, b0<R> b0Var, R r) {
        return b0Var.toJsonTree(r).d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
        if (com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(null) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
        r5 = r0.g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        if (com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0) != false) goto L17;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo40656a(e.m.e.q r5, java.lang.Class<?> r6, java.lang.String r7) {
        /*
            r4 = this;
            r0 = r5
            e.m.e.t r0 = r0.d()
            r1 = r7
            e.m.e.q r0 = r0.l(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L46
            r0 = 0
            r5 = r0
            r0 = r8
            int r0 = r0.b()     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L36
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L36
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0)
            if (r0 == 0) goto L44
            goto L3e
        L26:
            r5 = move-exception
            r0 = 0
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0)
            if (r0 == 0) goto L34
            r0 = r8
            java.lang.String r0 = r0.g()
        L34:
            r0 = r5
            throw r0
        L36:
            r6 = move-exception
            r0 = 0
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0)
            if (r0 == 0) goto L44
        L3e:
            r0 = r8
            java.lang.String r0 = r0.g()
            r5 = r0
        L44:
            r0 = r5
            return r0
        L46:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "cannot deserialize "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = " because it does not define a field named "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            e.m.e.u r0 = new e.m.e.u
            r1 = r0
            r2 = r5
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p051d.C1522a.mo40656a(e.m.e.q, java.lang.Class, java.lang.String):java.lang.String");
    }

    /* renamed from: b */
    public C1522a<T> m40658b(Class<? extends T> cls, String str) {
        if (cls == null || str == null) {
            throw null;
        }
        if (this.f4133ev.containsKey(cls) || this.f4132eu.containsKey(str)) {
            throw new IllegalArgumentException("types and labels must be unique");
        }
        this.f4132eu.put(str, cls);
        this.f4133ev.put(cls, str);
        return this;
    }

    /* renamed from: c */
    public String mo40648c(Class<?> cls) {
        return this.f4133ev.get(cls);
    }

    public <R> b0<R> create(k kVar, a<R> aVar) {
        if (aVar.getRawType() != this.f4130es) {
            return null;
        }
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, Class<?>> entry : this.f4132eu.entrySet()) {
            b0 j = kVar.j(this, a.get(entry.getValue()));
            linkedHashMap.put(entry.getKey(), j);
            linkedHashMap2.put(entry.getValue(), j);
        }
        return new b0<R>() { // from class: com.freshchat.consumer.sdk.d.a.1
            /* JADX WARN: Type inference failed for: r0v23, types: [R, java.lang.Object] */
            public R read(e.m.e.g0.a aVar2) throws IOException {
                q M0 = n.M0(aVar2);
                C1522a c1522a = C1522a.this;
                String mo40656a = c1522a.mo40656a(M0, c1522a.f4130es, C1522a.this.f4131et);
                C1522a c1522a2 = C1522a.this;
                b0<?> mo40651a = c1522a2.mo40651a(mo40656a, linkedHashMap, M0, c1522a2.f4130es);
                if (mo40651a != null) {
                    return mo40651a.fromJsonTree(M0);
                }
                StringBuilder m8728C = C22128a.m8728C("cannot deserialize ");
                m8728C.append(C1522a.this.f4130es);
                m8728C.append(" subtype named ");
                m8728C.append(mo40656a);
                m8728C.append("; did you forget to register a subtype?");
                throw new u(m8728C.toString());
            }

            public void write(c cVar, R r) throws IOException {
                Class<?> cls = r.getClass();
                String mo40648c = C1522a.this.mo40648c(cls);
                b0<?> mo40654a = C1522a.this.mo40654a(cls, linkedHashMap2);
                if (mo40654a != null) {
                    t mo40653a = C1522a.this.mo40653a(mo40648c, (b0<b0<?>>) mo40654a, (b0<?>) r);
                    t tVar = new t();
                    tVar.a.put(C1522a.this.f4131et, new w(mo40648c));
                    s sVar = mo40653a.k().a;
                    s.e eVar = sVar.e.d;
                    int i = sVar.d;
                    while (true) {
                        if (!(eVar != sVar.e)) {
                            o.X.write(cVar, tVar);
                            return;
                        } else if (eVar == sVar.e) {
                            throw new NoSuchElementException();
                        } else {
                            if (sVar.d != i) {
                                throw new ConcurrentModificationException();
                            }
                            s.e eVar2 = eVar.d;
                            tVar.h((String) eVar.getKey(), (q) eVar.getValue());
                            eVar = eVar2;
                        }
                    }
                } else {
                    throw new u(C22128a.m8639b2(cls, C22128a.m8728C("cannot serialize "), "; did you forget to register a subtype?"));
                }
            }
        }.nullSafe();
    }
}
