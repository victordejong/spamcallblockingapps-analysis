package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.b.c;
import com.bytedance.sdk.openadsdk.preload.a.b.i;
import com.bytedance.sdk.openadsdk.preload.a.d.b;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.l;
import com.bytedance.sdk.openadsdk.preload.a.q;
import com.bytedance.sdk.openadsdk.preload.a.t;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/g.class */
public final class g implements w {

    /* renamed from: a  reason: collision with root package name */
    final boolean f9927a;

    /* renamed from: b  reason: collision with root package name */
    private final c f9928b;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/g$a.class */
    final class a<K, V> extends v<Map<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        private final v<K> f9930b;

        /* renamed from: c  reason: collision with root package name */
        private final v<V> f9931c;

        /* renamed from: d  reason: collision with root package name */
        private final i<? extends Map<K, V>> f9932d;

        public a(f fVar, Type type, v<K> vVar, Type type2, v<V> vVar2, i<? extends Map<K, V>> iVar) {
            this.f9930b = new m(fVar, vVar, type);
            this.f9931c = new m(fVar, vVar2, type2);
            this.f9932d = iVar;
        }

        private String a(l lVar) {
            if (lVar.i()) {
                q m = lVar.m();
                if (m.o()) {
                    return String.valueOf(m.a());
                }
                if (m.n()) {
                    return Boolean.toString(m.f());
                }
                if (m.p()) {
                    return m.b();
                }
                throw new AssertionError();
            } else if (lVar.j()) {
                return JsonReaderKt.NULL;
            } else {
                throw new AssertionError();
            }
        }

        /* renamed from: a */
        public final Map<K, V> b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            b f = aVar.f();
            if (f == b.NULL) {
                aVar.j();
                return null;
            }
            Map<K, V> map = (Map) this.f9932d.a();
            if (f == b.BEGIN_ARRAY) {
                aVar.a();
                while (aVar.e()) {
                    aVar.a();
                    K b2 = this.f9930b.b(aVar);
                    if (map.put(b2, this.f9931c.b(aVar)) == null) {
                        aVar.b();
                    } else {
                        throw new t("duplicate key: ".concat(String.valueOf(b2)));
                    }
                }
                aVar.b();
            } else {
                aVar.c();
                while (aVar.e()) {
                    com.bytedance.sdk.openadsdk.preload.a.b.f.f10030a.a(aVar);
                    K b3 = this.f9930b.b(aVar);
                    if (map.put(b3, this.f9931c.b(aVar)) != null) {
                        throw new t("duplicate key: ".concat(String.valueOf(b3)));
                    }
                }
                aVar.d();
            }
            return map;
        }

        @Override // com.bytedance.sdk.openadsdk.preload.a.v
        public final /* bridge */ /* synthetic */ void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, Object obj) throws IOException {
            a(cVar, (Map) ((Map) obj));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, Map<K, V> map) throws IOException {
            if (map == null) {
                cVar.f();
            } else if (!g.this.f9927a) {
                cVar.d();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.a(String.valueOf(entry.getKey()));
                    this.f9931c.a(cVar, entry.getValue());
                }
                cVar.e();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    l a2 = this.f9930b.a(entry2.getKey());
                    arrayList.add(a2);
                    arrayList2.add(entry2.getValue());
                    z |= a2.g() || a2.h();
                }
                if (z) {
                    cVar.b();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        cVar.b();
                        com.bytedance.sdk.openadsdk.preload.a.b.l.a((l) arrayList.get(i), cVar);
                        this.f9931c.a(cVar, arrayList2.get(i));
                        cVar.c();
                    }
                    cVar.c();
                    return;
                }
                cVar.d();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    cVar.a(a((l) arrayList.get(i2)));
                    this.f9931c.a(cVar, arrayList2.get(i2));
                }
                cVar.e();
            }
        }
    }

    public g(c cVar, boolean z) {
        this.f9928b = cVar;
        this.f9927a = z;
    }

    private v<?> a(f fVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? n.f : fVar.a((com.bytedance.sdk.openadsdk.preload.a.c.a) com.bytedance.sdk.openadsdk.preload.a.c.a.a(type));
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.w
    public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
        Type b2 = aVar.b();
        if (!Map.class.isAssignableFrom(aVar.a())) {
            return null;
        }
        Type[] b3 = com.bytedance.sdk.openadsdk.preload.a.b.b.b(b2, com.bytedance.sdk.openadsdk.preload.a.b.b.e(b2));
        return new a(fVar, b3[0], a(fVar, b3[0]), b3[1], fVar.a((com.bytedance.sdk.openadsdk.preload.a.c.a) com.bytedance.sdk.openadsdk.preload.a.c.a.a(b3[1])), this.f9928b.a(aVar));
    }
}
