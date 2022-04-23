package com.bytedance.sdk.openadsdk.g.a;

import com.bytedance.sdk.openadsdk.g.a.d;
import com.bytedance.sdk.openadsdk.g.a.s;
import com.bytedance.sdk.openadsdk.g.a.u;
import com.bytedance.sdk.openadsdk.g.a.v;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/g.class */
class g implements v.a {

    /* renamed from: a  reason: collision with root package name */
    private final h f9520a;

    /* renamed from: b  reason: collision with root package name */
    private final t f9521b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, b> f9522c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, d.b> f9523d = new HashMap();
    private final List<p> e = new ArrayList();
    private final Set<d> f = new HashSet();
    private final m g;
    private final boolean h;
    private final boolean i;
    private final com.bytedance.sdk.openadsdk.g.a.a j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f9529a;

        /* renamed from: b  reason: collision with root package name */
        String f9530b;

        private a(boolean z, String str) {
            this.f9529a = z;
            this.f9530b = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(j jVar, com.bytedance.sdk.openadsdk.g.a.a aVar, u uVar) {
        this.j = aVar;
        this.f9520a = jVar.f9536d;
        t tVar = new t(uVar, jVar.l, jVar.m);
        this.f9521b = tVar;
        tVar.a(this);
        tVar.a(jVar.p);
        this.g = jVar.i;
        this.h = jVar.h;
        this.i = jVar.o;
    }

    private a a(final p pVar, c cVar, w wVar) throws Exception {
        cVar.a(pVar, new s(pVar.f9540d, wVar, new s.a() { // from class: com.bytedance.sdk.openadsdk.g.a.g.2
        }));
        return new a(false, x.a());
    }

    private a a(final p pVar, final d dVar, f fVar) throws Exception {
        this.f.add(dVar);
        dVar.a(a(pVar.e, dVar), fVar, new d.a() { // from class: com.bytedance.sdk.openadsdk.g.a.g.1
            @Override // com.bytedance.sdk.openadsdk.g.a.d.a
            public void a(Object obj) {
                if (g.this.j != null) {
                    g.this.j.b(x.a(g.this.f9520a.a((h) obj)), pVar);
                    g.this.f.remove(dVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.g.a.d.a
            public void a(Throwable th) {
                if (g.this.j != null) {
                    g.this.j.b(x.a(th), pVar);
                    g.this.f.remove(dVar);
                }
            }
        });
        return new a(false, x.a());
    }

    private a a(p pVar, e eVar, f fVar) throws Exception {
        return new a(true, x.a(this.f9520a.a((h) eVar.a(a(pVar.e, (b) eVar), fVar))));
    }

    private Object a(String str, b bVar) throws JSONException {
        return this.f9520a.a(str, a(bVar)[0]);
    }

    private static Type[] a(Object obj) {
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        if (genericSuperclass != null) {
            return ((ParameterizedType) genericSuperclass).getActualTypeArguments();
        }
        throw new IllegalStateException("Method is not parameterized?!");
    }

    private w b(String str, b bVar) {
        return this.i ? w.PRIVATE : this.f9521b.a(this.h, str, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a a(p pVar, f fVar) throws Exception {
        b bVar = this.f9522c.get(pVar.f9540d);
        if (bVar != null) {
            try {
                w b2 = b(fVar.f9517b, bVar);
                fVar.f9519d = b2;
                if (b2 == null) {
                    m mVar = this.g;
                    if (mVar != null) {
                        mVar.a(fVar.f9517b, pVar.f9540d, 1);
                    }
                    i.a("Permission denied, call: ".concat(String.valueOf(pVar)));
                    throw new r(-1);
                } else if (bVar instanceof e) {
                    i.a("Processing stateless call: ".concat(String.valueOf(pVar)));
                    return a(pVar, (e) bVar, fVar);
                } else if (bVar instanceof c) {
                    i.a("Processing raw call: ".concat(String.valueOf(pVar)));
                    return a(pVar, (c) bVar, b2);
                }
            } catch (u.a e) {
                i.a("No remote permission config fetched, call pending: ".concat(String.valueOf(pVar)), e);
                this.e.add(pVar);
                return new a(false, x.a());
            }
        }
        d.b bVar2 = this.f9523d.get(pVar.f9540d);
        if (bVar2 != null) {
            d a2 = bVar2.a();
            a2.a(pVar.f9540d);
            w b3 = b(fVar.f9517b, a2);
            fVar.f9519d = b3;
            if (b3 != null) {
                i.a("Processing stateful call: ".concat(String.valueOf(pVar)));
                return a(pVar, a2, fVar);
            }
            i.a("Permission denied, call: ".concat(String.valueOf(pVar)));
            a2.d();
            throw new r(-1);
        }
        m mVar2 = this.g;
        if (mVar2 != null) {
            mVar2.a(fVar.f9517b, pVar.f9540d, 2);
        }
        i.b("Received call: " + pVar + ", but not registered.");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, d.b bVar) {
        this.f9523d.put(str, bVar);
        i.a("JsBridge stateful method registered: ".concat(String.valueOf(str)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, e<?, ?> eVar) {
        eVar.a(str);
        this.f9522c.put(str, eVar);
        i.a("JsBridge stateless method registered: ".concat(String.valueOf(str)));
    }
}
