package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b;
/* renamed from: e.k.a.c.g0.o */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/o.class */
public abstract class AbstractC23671o {

    /* renamed from: b */
    public static final AbstractC23896b f65635b = new C23674c();

    /* renamed from: a */
    public final Object f65636a;

    /* renamed from: e.k.a.c.g0.o$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/o$a.class */
    public static class C23672a extends AbstractC23671o {

        /* renamed from: c */
        public static final C23672a f65637c = new C23672a(null);

        public C23672a(Object obj) {
            super(null);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: a */
        public AbstractC23671o mo6365a(Annotation annotation) {
            return new C23676e(this.f65636a, annotation.annotationType(), annotation);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: b */
        public C23678p mo6364b() {
            return new C23678p();
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: c */
        public AbstractC23896b mo6363c() {
            return AbstractC23671o.f65635b;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: d */
        public boolean mo6362d(Annotation annotation) {
            return false;
        }
    }

    /* renamed from: e.k.a.c.g0.o$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/o$b.class */
    public static class C23673b extends AbstractC23671o {

        /* renamed from: c */
        public final HashMap<Class<?>, Annotation> f65638c;

        public C23673b(Object obj, Class<?> cls, Annotation annotation, Class<?> cls2, Annotation annotation2) {
            super(obj);
            HashMap<Class<?>, Annotation> hashMap = new HashMap<>();
            this.f65638c = hashMap;
            hashMap.put(cls, annotation);
            hashMap.put(cls2, annotation2);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: a */
        public AbstractC23671o mo6365a(Annotation annotation) {
            this.f65638c.put(annotation.annotationType(), annotation);
            return this;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: b */
        public C23678p mo6364b() {
            C23678p c23678p = new C23678p();
            for (Annotation annotation : this.f65638c.values()) {
                if (c23678p.f65647a == null) {
                    c23678p.f65647a = new HashMap<>();
                }
                Annotation put = c23678p.f65647a.put(annotation.annotationType(), annotation);
                if (put != null) {
                    put.equals(annotation);
                }
            }
            return c23678p;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: c */
        public AbstractC23896b mo6363c() {
            if (this.f65638c.size() == 2) {
                Iterator<Map.Entry<Class<?>, Annotation>> it = this.f65638c.entrySet().iterator();
                Map.Entry<Class<?>, Annotation> next = it.next();
                Map.Entry<Class<?>, Annotation> next2 = it.next();
                return new C23677f(next.getKey(), next.getValue(), next2.getKey(), next2.getValue());
            }
            return new C23678p(this.f65638c);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: d */
        public boolean mo6362d(Annotation annotation) {
            return this.f65638c.containsKey(annotation.annotationType());
        }
    }

    /* renamed from: e.k.a.c.g0.o$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/o$c.class */
    public static class C23674c implements AbstractC23896b, Serializable {
        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b
        /* renamed from: a */
        public <A extends Annotation> A mo5787a(Class<A> cls) {
            return null;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b
        public int size() {
            return 0;
        }
    }

    /* renamed from: e.k.a.c.g0.o$d */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/o$d.class */
    public static class C23675d implements AbstractC23896b, Serializable {

        /* renamed from: a */
        public final Class<?> f65639a;

        /* renamed from: b */
        public final Annotation f65640b;

        public C23675d(Class<?> cls, Annotation annotation) {
            this.f65639a = cls;
            this.f65640b = annotation;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b
        /* renamed from: a */
        public <A extends Annotation> A mo5787a(Class<A> cls) {
            if (this.f65639a == cls) {
                return (A) this.f65640b;
            }
            return null;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b
        public int size() {
            return 1;
        }
    }

    /* renamed from: e.k.a.c.g0.o$e */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/o$e.class */
    public static class C23676e extends AbstractC23671o {

        /* renamed from: c */
        public Class<?> f65641c;

        /* renamed from: d */
        public Annotation f65642d;

        public C23676e(Object obj, Class<?> cls, Annotation annotation) {
            super(obj);
            this.f65641c = cls;
            this.f65642d = annotation;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: a */
        public AbstractC23671o mo6365a(Annotation annotation) {
            Class<? extends Annotation> annotationType = annotation.annotationType();
            Class<?> cls = this.f65641c;
            if (cls == annotationType) {
                this.f65642d = annotation;
                return this;
            }
            return new C23673b(this.f65636a, cls, this.f65642d, annotationType, annotation);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: b */
        public C23678p mo6364b() {
            Class<?> cls = this.f65641c;
            Annotation annotation = this.f65642d;
            HashMap hashMap = new HashMap(4);
            hashMap.put(cls, annotation);
            return new C23678p(hashMap);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: c */
        public AbstractC23896b mo6363c() {
            return new C23675d(this.f65641c, this.f65642d);
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23671o
        /* renamed from: d */
        public boolean mo6362d(Annotation annotation) {
            return annotation.annotationType() == this.f65641c;
        }
    }

    /* renamed from: e.k.a.c.g0.o$f */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/o$f.class */
    public static class C23677f implements AbstractC23896b, Serializable {

        /* renamed from: a */
        public final Class<?> f65643a;

        /* renamed from: b */
        public final Class<?> f65644b;

        /* renamed from: c */
        public final Annotation f65645c;

        /* renamed from: d */
        public final Annotation f65646d;

        public C23677f(Class<?> cls, Annotation annotation, Class<?> cls2, Annotation annotation2) {
            this.f65643a = cls;
            this.f65645c = annotation;
            this.f65644b = cls2;
            this.f65646d = annotation2;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b
        /* renamed from: a */
        public <A extends Annotation> A mo5787a(Class<A> cls) {
            if (this.f65643a == cls) {
                return (A) this.f65645c;
            }
            if (this.f65644b != cls) {
                return null;
            }
            return (A) this.f65646d;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23896b
        public int size() {
            return 2;
        }
    }

    public AbstractC23671o(Object obj) {
        this.f65636a = obj;
    }

    /* renamed from: a */
    public abstract AbstractC23671o mo6365a(Annotation annotation);

    /* renamed from: b */
    public abstract C23678p mo6364b();

    /* renamed from: c */
    public abstract AbstractC23896b mo6363c();

    /* renamed from: d */
    public abstract boolean mo6362d(Annotation annotation);
}
