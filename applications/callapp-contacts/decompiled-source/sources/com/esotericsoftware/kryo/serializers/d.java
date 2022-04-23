package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.h;
import com.esotericsoftware.kryo.i;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/d.class */
public class d<T extends Collection> extends h<T> {

    /* renamed from: a  reason: collision with root package name */
    boolean f19056a = true;

    /* renamed from: b  reason: collision with root package name */
    h f19057b;

    /* renamed from: c  reason: collision with root package name */
    Class f19058c;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/d$a.class */
    public @interface a {
        Class a() default Object.class;

        Class<? extends h> b() default h.class;

        Class<? extends i> c() default i.class;

        boolean d() default true;
    }

    public d() {
        setAcceptsNull(true);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01bc A[LOOP:3: B:60:0x01bc->B:62:0x01c6, LOOP_START, PHI: r18 
      PHI: (r18v1 int) = (r18v0 int), (r18v2 int) binds: [B:50:0x016c, B:62:0x01c6] A[DONT_GENERATE, DONT_INLINE]] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T read(com.esotericsoftware.kryo.c r7, com.esotericsoftware.kryo.a.a r8, java.lang.Class<? extends T> r9) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.d.read(com.esotericsoftware.kryo.c, com.esotericsoftware.kryo.a.a, java.lang.Class):java.util.Collection");
    }

    protected T a(c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends T> cls, int i) {
        if (cls == ArrayList.class) {
            return new ArrayList(i);
        }
        if (cls == HashSet.class) {
            return new HashSet(Math.max(((int) (i / 0.75f)) + 1, 16));
        }
        T t = (T) ((Collection) cVar.e(cls));
        if (t instanceof ArrayList) {
            ((ArrayList) t).ensureCapacity(i);
        }
        return t;
    }

    protected T a(c cVar, T t) {
        return (T) ((Collection) cVar.e(t.getClass()));
    }

    protected void a(c cVar, com.esotericsoftware.kryo.a.c cVar2, T t) {
    }

    /* renamed from: b */
    public T copy(c cVar, T t) {
        T a2 = a(cVar, t);
        cVar.a(a2);
        for (Object obj : t) {
            a2.add(cVar.b((c) obj));
        }
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.h
    public /* synthetic */ void write(c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
        Collection<Object> collection = (Collection) obj;
        boolean z = false;
        if (collection == null) {
            cVar2.a((byte) 0);
            return;
        }
        int size = collection.size();
        if (size == 0) {
            cVar2.a(1);
            a(cVar, cVar2, (com.esotericsoftware.kryo.a.c) collection);
            return;
        }
        boolean z2 = this.f19056a;
        h hVar = this.f19057b;
        h hVar2 = hVar;
        if (hVar == null) {
            Class c2 = cVar.getGenerics().c();
            hVar2 = hVar;
            if (c2 != null) {
                hVar2 = hVar;
                if (c.f(c2)) {
                    hVar2 = cVar.d(c2);
                }
            }
        }
        try {
            if (hVar2 != null) {
                if (z2) {
                    Iterator it2 = collection.iterator();
                    do {
                        if (!it2.hasNext()) {
                            cVar2.a(false, size + 1);
                            break;
                        }
                    } while (it2.next() != null);
                    cVar2.a(true, size + 1);
                } else {
                    cVar2.b(size + 1, true);
                }
                z = z2;
                a(cVar, cVar2, (com.esotericsoftware.kryo.a.c) collection);
            } else {
                Class<?> cls = null;
                Iterator it3 = collection.iterator();
                boolean z3 = false;
                while (true) {
                    if (it3.hasNext()) {
                        Object next = it3.next();
                        if (next == null) {
                            z3 = true;
                        } else if (cls == null) {
                            cls = next.getClass();
                        } else if (next.getClass() != cls) {
                            cVar2.a(false, size + 1);
                            a(cVar, cVar2, (com.esotericsoftware.kryo.a.c) collection);
                            z = z2;
                            break;
                        }
                    } else {
                        cVar2.a(true, size + 1);
                        a(cVar, cVar2, (com.esotericsoftware.kryo.a.c) collection);
                        if (cls == null) {
                            cVar2.a((byte) 0);
                            return;
                        }
                        cVar.a(cVar2, (Class) cls);
                        h d2 = cVar.d(cls);
                        z = z2;
                        hVar2 = d2;
                        if (z2) {
                            cVar2.a(z3);
                            z = z3;
                            hVar2 = d2;
                        }
                    }
                }
            }
            if (hVar2 == null) {
                for (Object obj2 : collection) {
                    cVar.a(cVar2, obj2);
                }
            } else if (z) {
                for (Object obj3 : collection) {
                    cVar.b(cVar2, obj3, hVar2);
                }
            } else {
                for (Object obj4 : collection) {
                    cVar.a(cVar2, obj4, hVar2);
                }
            }
        } finally {
            cVar.getGenerics().a();
        }
    }
}
