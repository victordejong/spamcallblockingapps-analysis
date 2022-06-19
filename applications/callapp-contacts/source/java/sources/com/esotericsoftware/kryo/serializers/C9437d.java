package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.AbstractC9414i;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: com.esotericsoftware.kryo.serializers.d */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/d.class */
public class C9437d<T extends Collection> extends AbstractC9413h<T> {

    /* renamed from: a */
    boolean f32394a = true;

    /* renamed from: b */
    AbstractC9413h f32395b;

    /* renamed from: c */
    Class f32396c;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.esotericsoftware.kryo.serializers.d$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/d$a.class */
    public @interface AbstractC9438a {
        /* renamed from: a */
        Class m24266a() default Object.class;

        /* renamed from: b */
        Class<? extends AbstractC9413h> m24265b() default AbstractC9413h.class;

        /* renamed from: c */
        Class<? extends AbstractC9414i> m24264c() default AbstractC9414i.class;

        /* renamed from: d */
        boolean m24263d() default true;
    }

    public C9437d() {
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
    public T read(com.esotericsoftware.kryo.C9380c r7, com.esotericsoftware.kryo.p276a.C9374a r8, java.lang.Class<? extends T> r9) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.C9437d.read(com.esotericsoftware.kryo.c, com.esotericsoftware.kryo.a.a, java.lang.Class):java.util.Collection");
    }

    /* renamed from: a */
    protected T mo24240a(C9380c c9380c, C9374a c9374a, Class<? extends T> cls, int i) {
        if (cls == ArrayList.class) {
            return new ArrayList(i);
        }
        if (cls == HashSet.class) {
            return new HashSet(Math.max(((int) (i / 0.75f)) + 1, 16));
        }
        T t = (T) c9380c.m24370e(cls);
        if (t instanceof ArrayList) {
            ((ArrayList) t).ensureCapacity(i);
        }
        return t;
    }

    /* renamed from: a */
    protected T mo24239a(C9380c c9380c, T t) {
        return (T) c9380c.m24370e(t.getClass());
    }

    /* renamed from: a */
    protected void mo24255a(C9380c c9380c, C9376c c9376c, T t) {
    }

    /* renamed from: b */
    public T copy(C9380c c9380c, T t) {
        T mo24239a = mo24239a(c9380c, t);
        c9380c.m24381a(mo24239a);
        for (Object obj : t) {
            mo24239a.add(c9380c.m24373b((C9380c) obj));
        }
        return mo24239a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
        Collection<Object> collection = (Collection) obj;
        boolean z = false;
        if (collection == null) {
            c9376c.m24424a((byte) 0);
            return;
        }
        int size = collection.size();
        if (size == 0) {
            c9376c.m24420a(1);
            mo24255a(c9380c, c9376c, (C9376c) collection);
            return;
        }
        boolean z2 = this.f32394a;
        AbstractC9413h abstractC9413h = this.f32395b;
        AbstractC9413h abstractC9413h2 = abstractC9413h;
        if (abstractC9413h == null) {
            Class mo24342c = c9380c.getGenerics().mo24342c();
            abstractC9413h2 = abstractC9413h;
            if (mo24342c != null) {
                abstractC9413h2 = abstractC9413h;
                if (C9380c.m24369f(mo24342c)) {
                    abstractC9413h2 = c9380c.m24371d(mo24342c);
                }
            }
        }
        try {
            if (abstractC9413h2 != null) {
                if (z2) {
                    Iterator it2 = collection.iterator();
                    do {
                        if (!it2.hasNext()) {
                            c9376c.m24413a(false, size + 1);
                            break;
                        }
                    } while (it2.next() != null);
                    c9376c.m24413a(true, size + 1);
                } else {
                    c9376c.m24402b(size + 1, true);
                }
                z = z2;
                mo24255a(c9380c, c9376c, (C9376c) collection);
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
                            c9376c.m24413a(false, size + 1);
                            mo24255a(c9380c, c9376c, (C9376c) collection);
                            z = z2;
                            break;
                        }
                    } else {
                        c9376c.m24413a(true, size + 1);
                        mo24255a(c9380c, c9376c, (C9376c) collection);
                        if (cls == null) {
                            c9376c.m24424a((byte) 0);
                            return;
                        }
                        c9380c.m24389a(c9376c, (Class) cls);
                        AbstractC9413h m24371d = c9380c.m24371d(cls);
                        z = z2;
                        abstractC9413h2 = m24371d;
                        if (z2) {
                            c9376c.m24414a(z3);
                            z = z3;
                            abstractC9413h2 = m24371d;
                        }
                    }
                }
            }
            if (abstractC9413h2 == null) {
                for (Object obj2 : collection) {
                    c9380c.m24388a(c9376c, obj2);
                }
            } else if (z) {
                for (Object obj3 : collection) {
                    c9380c.m24376b(c9376c, obj3, abstractC9413h2);
                }
            } else {
                for (Object obj4 : collection) {
                    c9380c.m24387a(c9376c, obj4, abstractC9413h2);
                }
            }
        } finally {
            c9380c.getGenerics().mo24348a();
        }
    }
}
