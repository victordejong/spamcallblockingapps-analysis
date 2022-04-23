package com.google.gson.a.a;

import com.google.gson.a.c;
import com.google.gson.a.e;
import com.google.gson.a.h;
import com.google.gson.a.j;
import com.google.gson.c.b;
import com.google.gson.i;
import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.r;
import com.google.gson.u;
import com.google.gson.x;
import com.google.gson.y;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/f.class */
public final class f implements y {

    /* renamed from: a  reason: collision with root package name */
    final boolean f4449a;

    /* renamed from: b  reason: collision with root package name */
    private final c f4450b;

    /* loaded from: classes-dex2jar.jar:com/google/gson/a/a/f$a.class */
    private final class a<K, V> extends x<Map<K, V>> {

        /* renamed from: b  reason: collision with root package name */
        private final x<K> f4452b;
        private final x<V> c;
        private final h<? extends Map<K, V>> d;

        public a(com.google.gson.f fVar, Type type, x<K> xVar, Type type2, x<V> xVar2, h<? extends Map<K, V>> hVar) {
            this.f4452b = new k(fVar, xVar, type);
            this.c = new k(fVar, xVar2, type2);
            this.d = hVar;
        }

        @Override // com.google.gson.x
        public final /* synthetic */ Object a(com.google.gson.c.a aVar) {
            Map map;
            b f = aVar.f();
            if (f == b.NULL) {
                aVar.k();
                map = null;
            } else {
                Map map2 = (Map) this.d.a();
                if (f == b.BEGIN_ARRAY) {
                    aVar.a();
                    while (aVar.e()) {
                        aVar.a();
                        K a2 = this.f4452b.a(aVar);
                        if (map2.put(a2, this.c.a(aVar)) != null) {
                            throw new u("duplicate key: " + a2);
                        }
                        aVar.b();
                    }
                    aVar.b();
                    map = map2;
                } else {
                    aVar.c();
                    while (aVar.e()) {
                        e.f4513a.a(aVar);
                        K a3 = this.f4452b.a(aVar);
                        if (map2.put(a3, this.c.a(aVar)) != null) {
                            throw new u("duplicate key: " + a3);
                        }
                    }
                    aVar.d();
                    map = map2;
                }
            }
            return map;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.x
        public final /* synthetic */ void a(com.google.gson.c.c cVar, Object obj) {
            String str;
            Map map = (Map) obj;
            if (map == null) {
                cVar.e();
            } else if (!f.this.f4449a) {
                cVar.c();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.a(String.valueOf(entry.getKey()));
                    this.c.a(cVar, entry.getValue());
                }
                cVar.d();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    l a2 = this.f4452b.a((x<K>) entry2.getKey());
                    arrayList.add(a2);
                    arrayList2.add(entry2.getValue());
                    z = ((a2 instanceof i) || (a2 instanceof o)) | z;
                }
                if (z) {
                    cVar.a();
                    for (int i = 0; i < arrayList.size(); i++) {
                        cVar.a();
                        j.a((l) arrayList.get(i), cVar);
                        this.c.a(cVar, arrayList2.get(i));
                        cVar.b();
                    }
                    cVar.b();
                    return;
                }
                cVar.c();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    l lVar = (l) arrayList.get(i2);
                    if (lVar instanceof r) {
                        r i3 = lVar.i();
                        if (i3.f4556a instanceof Number) {
                            str = String.valueOf(i3.a());
                        } else if (i3.f4556a instanceof Boolean) {
                            str = Boolean.toString(i3.f());
                        } else if (i3.f4556a instanceof String) {
                            str = i3.b();
                        } else {
                            throw new AssertionError();
                        }
                    } else if (lVar instanceof n) {
                        str = "null";
                    } else {
                        throw new AssertionError();
                    }
                    cVar.a(str);
                    this.c.a(cVar, arrayList2.get(i2));
                }
                cVar.d();
            }
        }
    }

    public f(c cVar, boolean z) {
        this.f4450b = cVar;
        this.f4449a = z;
    }

    @Override // com.google.gson.y
    public final <T> x<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
        a aVar2;
        Type type = aVar.f4532b;
        if (!Map.class.isAssignableFrom(aVar.f4531a)) {
            aVar2 = null;
        } else {
            Type[] b2 = com.google.gson.a.b.b(type, com.google.gson.a.b.b(type));
            Type type2 = b2[0];
            aVar2 = new a(fVar, b2[0], (type2 == Boolean.TYPE || type2 == Boolean.class) ? l.f : fVar.a(com.google.gson.b.a.a(type2)), b2[1], fVar.a(com.google.gson.b.a.a(b2[1])), this.f4450b.a(aVar));
        }
        return aVar2;
    }
}
