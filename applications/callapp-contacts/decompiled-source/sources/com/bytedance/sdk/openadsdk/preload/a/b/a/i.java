package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.b.c;
import com.bytedance.sdk.openadsdk.preload.a.b.d;
import com.bytedance.sdk.openadsdk.preload.a.b.k;
import com.bytedance.sdk.openadsdk.preload.a.e;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.t;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/i.class */
public final class i implements w {

    /* renamed from: a  reason: collision with root package name */
    private final c f9936a;

    /* renamed from: b  reason: collision with root package name */
    private final e f9937b;

    /* renamed from: c  reason: collision with root package name */
    private final d f9938c;

    /* renamed from: d  reason: collision with root package name */
    private final d f9939d;
    private final com.bytedance.sdk.openadsdk.preload.a.b.b.b e = com.bytedance.sdk.openadsdk.preload.a.b.b.b.a();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/i$a.class */
    public static final class a<T> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        private final com.bytedance.sdk.openadsdk.preload.a.b.i<T> f9944a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, b> f9945b;

        a(com.bytedance.sdk.openadsdk.preload.a.b.i<T> iVar, Map<String, b> map) {
            this.f9944a = iVar;
            this.f9945b = map;
        }

        @Override // com.bytedance.sdk.openadsdk.preload.a.v
        public final void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, T t) throws IOException {
            if (t == null) {
                cVar.f();
                return;
            }
            cVar.d();
            try {
                for (b bVar : this.f9945b.values()) {
                    if (bVar.a(t)) {
                        cVar.a(bVar.h);
                        bVar.a(cVar, t);
                    }
                }
                cVar.e();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.preload.a.v
        public final T b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bytedance.sdk.openadsdk.preload.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            T a2 = this.f9944a.a();
            try {
                aVar.c();
                while (aVar.e()) {
                    b bVar = this.f9945b.get(aVar.g());
                    if (bVar != null && bVar.j) {
                        bVar.a(aVar, a2);
                    }
                    aVar.n();
                }
                aVar.d();
                return a2;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new t(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/i$b.class */
    public static abstract class b {
        final String h;
        final boolean i;
        final boolean j;

        protected b(String str, boolean z, boolean z2) {
            this.h = str;
            this.i = z;
            this.j = z2;
        }

        abstract void a(com.bytedance.sdk.openadsdk.preload.a.d.a aVar, Object obj) throws IOException, IllegalAccessException;

        abstract void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, Object obj) throws IOException, IllegalAccessException;

        abstract boolean a(Object obj) throws IOException, IllegalAccessException;
    }

    public i(c cVar, e eVar, d dVar, d dVar2) {
        this.f9936a = cVar;
        this.f9937b = eVar;
        this.f9938c = dVar;
        this.f9939d = dVar2;
    }

    private b a(final f fVar, final Field field, String str, final com.bytedance.sdk.openadsdk.preload.a.c.a<?> aVar, boolean z, boolean z2) {
        final boolean a2 = k.a(aVar.a());
        com.bytedance.sdk.openadsdk.preload.a.a.b bVar = (com.bytedance.sdk.openadsdk.preload.a.a.b) field.getAnnotation(com.bytedance.sdk.openadsdk.preload.a.a.b.class);
        v<?> a3 = bVar != null ? this.f9939d.a(this.f9936a, fVar, aVar, bVar) : null;
        final boolean z3 = a3 != null;
        final v<?> vVar = a3;
        if (a3 == null) {
            vVar = fVar.a((com.bytedance.sdk.openadsdk.preload.a.c.a) aVar);
        }
        return new b(str, z, z2) { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.i.1
            @Override // com.bytedance.sdk.openadsdk.preload.a.b.a.i.b
            void a(com.bytedance.sdk.openadsdk.preload.a.d.a aVar2, Object obj) throws IOException, IllegalAccessException {
                Object b2 = vVar.b(aVar2);
                if (b2 != null || !a2) {
                    field.set(obj, b2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.preload.a.b.a.i.b
            void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, Object obj) throws IOException, IllegalAccessException {
                (z3 ? vVar : new m(fVar, vVar, aVar.b())).a(cVar, field.get(obj));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.a.b.a.i.b
            public boolean a(Object obj) throws IOException, IllegalAccessException {
                return this.i && field.get(obj) != obj;
            }
        };
    }

    private List<String> a(Field field) {
        com.bytedance.sdk.openadsdk.preload.a.a.c cVar = (com.bytedance.sdk.openadsdk.preload.a.a.c) field.getAnnotation(com.bytedance.sdk.openadsdk.preload.a.a.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f9937b.a(field));
        }
        String a2 = cVar.a();
        String[] b2 = cVar.b();
        if (b2.length == 0) {
            return Collections.singletonList(a2);
        }
        ArrayList arrayList = new ArrayList(b2.length + 1);
        arrayList.add(a2);
        for (String str : b2) {
            arrayList.add(str);
        }
        return arrayList;
    }

    private Map<String, b> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<?> aVar, Class<?> cls) {
        Field[] declaredFields;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type b2 = aVar.b();
        Class<?> cls2 = cls;
        com.bytedance.sdk.openadsdk.preload.a.c.a<?> aVar2 = aVar;
        while (cls2 != Object.class) {
            for (Field field : cls2.getDeclaredFields()) {
                boolean a2 = a(field, true);
                boolean a3 = a(field, false);
                if (a2 || a3) {
                    this.e.a(field);
                    Type a4 = com.bytedance.sdk.openadsdk.preload.a.b.b.a(aVar2.b(), cls2, field.getGenericType());
                    List<String> a5 = a(field);
                    int size = a5.size();
                    b bVar = null;
                    for (int i = 0; i < size; i++) {
                        String str = a5.get(i);
                        if (i != 0) {
                            a2 = false;
                        }
                        bVar = (b) linkedHashMap.put(str, a(fVar, field, str, com.bytedance.sdk.openadsdk.preload.a.c.a.a(a4), a2, a3));
                        if (bVar == null) {
                        }
                    }
                    if (bVar != null) {
                        throw new IllegalArgumentException(b2 + " declares multiple JSON fields named " + bVar.h);
                    }
                }
            }
            aVar2 = com.bytedance.sdk.openadsdk.preload.a.c.a.a(com.bytedance.sdk.openadsdk.preload.a.b.b.a(aVar2.b(), cls2, cls2.getGenericSuperclass()));
            cls2 = aVar2.a();
        }
        return linkedHashMap;
    }

    static boolean a(Field field, boolean z, d dVar) {
        return !dVar.a(field.getType(), z) && !dVar.a(field, z);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.w
    public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
        Class<? super T> a2 = aVar.a();
        if (!Object.class.isAssignableFrom(a2)) {
            return null;
        }
        return new a(this.f9936a.a(aVar), a(fVar, (com.bytedance.sdk.openadsdk.preload.a.c.a<?>) aVar, (Class<?>) a2));
    }

    public final boolean a(Field field, boolean z) {
        return a(field, z, this.f9938c);
    }
}
