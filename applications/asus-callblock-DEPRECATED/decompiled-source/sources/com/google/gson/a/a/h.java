package com.google.gson.a.a;

import com.google.gson.a.c;
import com.google.gson.a.d;
import com.google.gson.a.i;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.e;
import com.google.gson.f;
import com.google.gson.u;
import com.google.gson.x;
import com.google.gson.y;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/h.class */
public final class h implements y {

    /* renamed from: a  reason: collision with root package name */
    private final c f4456a;

    /* renamed from: b  reason: collision with root package name */
    private final e f4457b;
    private final d c;

    /* loaded from: classes-dex2jar.jar:com/google/gson/a/a/h$a.class */
    public static final class a<T> extends x<T> {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.gson.a.h<T> f4460a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, b> f4461b;

        private a(com.google.gson.a.h<T> hVar, Map<String, b> map) {
            this.f4460a = hVar;
            this.f4461b = map;
        }

        /* synthetic */ a(com.google.gson.a.h hVar, Map map, byte b2) {
            this(hVar, map);
        }

        @Override // com.google.gson.x
        public final T a(com.google.gson.c.a aVar) {
            T t;
            if (aVar.f() == com.google.gson.c.b.NULL) {
                aVar.k();
                t = null;
            } else {
                T a2 = this.f4460a.a();
                try {
                    aVar.c();
                    while (aVar.e()) {
                        b bVar = this.f4461b.get(aVar.h());
                        if (bVar == null || !bVar.i) {
                            aVar.o();
                        } else {
                            bVar.a(aVar, a2);
                        }
                    }
                    aVar.d();
                    t = a2;
                } catch (IllegalAccessException e) {
                    throw new AssertionError(e);
                } catch (IllegalStateException e2) {
                    throw new u(e2);
                }
            }
            return t;
        }

        @Override // com.google.gson.x
        public final void a(com.google.gson.c.c cVar, T t) {
            if (t == null) {
                cVar.e();
                return;
            }
            cVar.c();
            try {
                for (b bVar : this.f4461b.values()) {
                    if (bVar.h) {
                        cVar.a(bVar.g);
                        bVar.a(cVar, t);
                    }
                }
                cVar.d();
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/a/a/h$b.class */
    public static abstract class b {
        final String g;
        final boolean h;
        final boolean i;

        protected b(String str, boolean z, boolean z2) {
            this.g = str;
            this.h = z;
            this.i = z2;
        }

        abstract void a(com.google.gson.c.a aVar, Object obj);

        abstract void a(com.google.gson.c.c cVar, Object obj);
    }

    public h(c cVar, e eVar, d dVar) {
        this.f4456a = cVar;
        this.f4457b = eVar;
        this.c = dVar;
    }

    private Map<String, b> a(final f fVar, com.google.gson.b.a<?> aVar, Class<?> cls) {
        Field[] declaredFields;
        b bVar;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!cls.isInterface()) {
            Type type = aVar.f4532b;
            while (cls != Object.class) {
                for (final Field field : cls.getDeclaredFields()) {
                    boolean a2 = a(field, true);
                    boolean a3 = a(field, false);
                    if (a2 || a3) {
                        field.setAccessible(true);
                        Type a4 = com.google.gson.a.b.a(aVar.f4532b, cls, field.getGenericType());
                        SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
                        String a5 = serializedName == null ? this.f4457b.a(field) : serializedName.value();
                        final com.google.gson.b.a<?> a6 = com.google.gson.b.a.a(a4);
                        final boolean a7 = i.a((Type) a6.f4531a);
                        b bVar2 = new b(a5, a2, a3) { // from class: com.google.gson.a.a.h.1

                            /* renamed from: a  reason: collision with root package name */
                            final x<?> f4458a;

                            {
                                this.f4458a = fVar.a(a6);
                            }

                            @Override // com.google.gson.a.a.h.b
                            final void a(com.google.gson.c.a aVar2, Object obj) {
                                Object a8 = this.f4458a.a(aVar2);
                                if (a8 != null || !a7) {
                                    field.set(obj, a8);
                                }
                            }

                            @Override // com.google.gson.a.a.h.b
                            final void a(com.google.gson.c.c cVar, Object obj) {
                                new k(fVar, this.f4458a, a6.f4532b).a(cVar, field.get(obj));
                            }
                        };
                        if (((b) linkedHashMap.put(bVar2.g, bVar2)) != null) {
                            throw new IllegalArgumentException(type + " declares multiple JSON fields named " + bVar.g);
                        }
                    }
                }
                aVar = com.google.gson.b.a.a(com.google.gson.a.b.a(aVar.f4532b, cls, cls.getGenericSuperclass()));
                cls = aVar.f4531a;
            }
        }
        return linkedHashMap;
    }

    private boolean a(Field field, boolean z) {
        boolean z2;
        boolean z3;
        Expose expose;
        if (!this.c.a(field.getType(), z)) {
            d dVar = this.c;
            if ((dVar.c & field.getModifiers()) != 0) {
                z3 = true;
            } else if (dVar.f4510b != -1.0d && !dVar.a((Since) field.getAnnotation(Since.class), (Until) field.getAnnotation(Until.class))) {
                z3 = true;
            } else if (field.isSynthetic()) {
                z3 = true;
            } else if (dVar.e && ((expose = (Expose) field.getAnnotation(Expose.class)) == null || (!z ? !expose.deserialize() : !expose.serialize()))) {
                z3 = true;
            } else if (!dVar.d && d.b(field.getType())) {
                z3 = true;
            } else if (d.a(field.getType())) {
                z3 = true;
            } else {
                List<com.google.gson.b> list = z ? dVar.f : dVar.g;
                if (!list.isEmpty()) {
                    new com.google.gson.c(field);
                    for (com.google.gson.b bVar : list) {
                        if (bVar.a()) {
                            z3 = true;
                            break;
                        }
                    }
                }
                z3 = false;
            }
            if (!z3) {
                z2 = true;
                return z2;
            }
        }
        z2 = false;
        return z2;
    }

    @Override // com.google.gson.y
    public final <T> x<T> a(f fVar, com.google.gson.b.a<T> aVar) {
        Class<? super T> cls = aVar.f4531a;
        return !Object.class.isAssignableFrom(cls) ? null : new a(this.f4456a.a(aVar), a(fVar, aVar, cls), (byte) 0);
    }
}
