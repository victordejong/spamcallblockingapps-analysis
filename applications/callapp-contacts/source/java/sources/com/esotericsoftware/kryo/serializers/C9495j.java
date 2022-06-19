package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.AbstractC9414i;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import com.esotericsoftware.kryo.p278c.AbstractC9388e;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.esotericsoftware.kryo.serializers.j */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/j.class */
public class C9495j<T extends Map> extends AbstractC9413h<T> {

    /* renamed from: a */
    Class f32409a;

    /* renamed from: b */
    Class f32410b;

    /* renamed from: c */
    AbstractC9413h f32411c;

    /* renamed from: d */
    AbstractC9413h f32412d;

    /* renamed from: e */
    boolean f32413e = true;

    /* renamed from: f */
    boolean f32414f = true;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.esotericsoftware.kryo.serializers.j$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/j$a.class */
    public @interface AbstractC9496a {
        /* renamed from: a */
        Class m24230a() default Object.class;

        /* renamed from: b */
        Class<? extends AbstractC9413h> m24229b() default AbstractC9413h.class;

        /* renamed from: c */
        Class<? extends AbstractC9414i> m24228c() default AbstractC9414i.class;

        /* renamed from: d */
        Class m24227d() default Object.class;

        /* renamed from: e */
        Class<? extends AbstractC9413h> m24226e() default AbstractC9413h.class;

        /* renamed from: f */
        Class<? extends AbstractC9414i> m24225f() default AbstractC9414i.class;

        /* renamed from: g */
        boolean m24224g() default true;

        /* renamed from: h */
        boolean m24223h() default true;
    }

    public C9495j() {
        setAcceptsNull(true);
    }

    /* renamed from: a */
    public T read(C9380c c9380c, C9374a c9374a, Class<? extends T> cls) {
        int m24456b = c9374a.m24456b(true);
        if (m24456b == 0) {
            return null;
        }
        int i = m24456b - 1;
        T mo24234a = mo24234a(c9380c, c9374a, cls, i);
        c9380c.m24381a(mo24234a);
        if (i == 0) {
            return mo24234a;
        }
        Class cls2 = this.f32409a;
        Class cls3 = this.f32410b;
        AbstractC9413h abstractC9413h = this.f32411c;
        AbstractC9413h abstractC9413h2 = this.f32412d;
        AbstractC9388e.C9389a[] mo24343b = c9380c.getGenerics().mo24343b();
        Class cls4 = cls2;
        Class cls5 = cls3;
        AbstractC9413h abstractC9413h3 = abstractC9413h;
        AbstractC9413h abstractC9413h4 = abstractC9413h2;
        if (mo24343b != null) {
            Class cls6 = cls2;
            AbstractC9413h abstractC9413h5 = abstractC9413h;
            if (abstractC9413h == null) {
                Class m24341a = mo24343b[0].m24341a(c9380c.getGenerics());
                cls6 = cls2;
                abstractC9413h5 = abstractC9413h;
                if (m24341a != null) {
                    cls6 = cls2;
                    abstractC9413h5 = abstractC9413h;
                    if (C9380c.m24369f(m24341a)) {
                        abstractC9413h5 = c9380c.m24371d(m24341a);
                        cls6 = m24341a;
                    }
                }
            }
            cls4 = cls6;
            cls5 = cls3;
            abstractC9413h3 = abstractC9413h5;
            abstractC9413h4 = abstractC9413h2;
            if (abstractC9413h2 == null) {
                Class m24341a2 = mo24343b[1].m24341a(c9380c.getGenerics());
                cls4 = cls6;
                cls5 = cls3;
                abstractC9413h3 = abstractC9413h5;
                abstractC9413h4 = abstractC9413h2;
                if (m24341a2 != null) {
                    cls4 = cls6;
                    cls5 = cls3;
                    abstractC9413h3 = abstractC9413h5;
                    abstractC9413h4 = abstractC9413h2;
                    if (C9380c.m24369f(m24341a2)) {
                        abstractC9413h4 = c9380c.m24371d(m24341a2);
                        cls5 = m24341a2;
                        abstractC9413h3 = abstractC9413h5;
                        cls4 = cls6;
                    }
                }
            }
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (mo24343b != null) {
                c9380c.getGenerics().mo24346a(mo24343b[0]);
            }
            Object m24377b = abstractC9413h3 != null ? this.f32413e ? c9380c.m24377b(c9374a, cls4, abstractC9413h3) : c9380c.m24391a(c9374a, cls4, abstractC9413h3) : c9380c.m24379b(c9374a);
            if (mo24343b != null) {
                c9380c.getGenerics().mo24348a();
            }
            mo24234a.put(m24377b, abstractC9413h4 != null ? this.f32414f ? c9380c.m24377b(c9374a, cls5, abstractC9413h4) : c9380c.m24391a(c9374a, cls5, abstractC9413h4) : c9380c.m24379b(c9374a));
        }
        c9380c.getGenerics().mo24348a();
        return mo24234a;
    }

    /* renamed from: a */
    protected T mo24234a(C9380c c9380c, C9374a c9374a, Class<? extends T> cls, int i) {
        int i2;
        if (cls == HashMap.class) {
            if (i < 3) {
                i2 = i + 1;
            } else {
                i2 = i;
                if (i < 1073741824) {
                    i2 = (int) ((i / 0.75f) + 1.0f);
                }
            }
            return new HashMap(i2);
        }
        return (T) c9380c.m24370e(cls);
    }

    /* renamed from: a */
    protected T mo24232a(C9380c c9380c, T t) {
        return (T) c9380c.m24370e(t.getClass());
    }

    /* renamed from: a */
    protected void mo24233a(C9380c c9380c, C9376c c9376c, T t) {
    }

    /* renamed from: b */
    public T copy(C9380c c9380c, T t) {
        T mo24232a = mo24232a(c9380c, t);
        for (Map.Entry entry : t.entrySet()) {
            mo24232a.put(c9380c.m24373b((C9380c) entry.getKey()), c9380c.m24373b((C9380c) entry.getValue()));
        }
        return mo24232a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Object obj) {
        Map map = (Map) obj;
        if (map == null) {
            c9376c.m24420a(0);
            return;
        }
        int size = map.size();
        if (size == 0) {
            c9376c.m24420a(1);
            mo24233a(c9380c, c9376c, (C9376c) map);
            return;
        }
        c9376c.m24402b(size + 1, true);
        mo24233a(c9380c, c9376c, (C9376c) map);
        AbstractC9413h abstractC9413h = this.f32411c;
        AbstractC9413h abstractC9413h2 = this.f32412d;
        AbstractC9388e.C9389a[] mo24343b = c9380c.getGenerics().mo24343b();
        AbstractC9413h abstractC9413h3 = abstractC9413h;
        AbstractC9413h abstractC9413h4 = abstractC9413h2;
        if (mo24343b != null) {
            AbstractC9413h abstractC9413h5 = abstractC9413h;
            if (abstractC9413h == null) {
                Class m24341a = mo24343b[0].m24341a(c9380c.getGenerics());
                abstractC9413h5 = abstractC9413h;
                if (m24341a != null) {
                    abstractC9413h5 = abstractC9413h;
                    if (C9380c.m24369f(m24341a)) {
                        abstractC9413h5 = c9380c.m24371d(m24341a);
                    }
                }
            }
            abstractC9413h3 = abstractC9413h5;
            abstractC9413h4 = abstractC9413h2;
            if (abstractC9413h2 == null) {
                Class m24341a2 = mo24343b[1].m24341a(c9380c.getGenerics());
                abstractC9413h3 = abstractC9413h5;
                abstractC9413h4 = abstractC9413h2;
                if (m24341a2 != null) {
                    abstractC9413h3 = abstractC9413h5;
                    abstractC9413h4 = abstractC9413h2;
                    if (C9380c.m24369f(m24341a2)) {
                        abstractC9413h4 = c9380c.m24371d(m24341a2);
                        abstractC9413h3 = abstractC9413h5;
                    }
                }
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            if (mo24343b != null) {
                c9380c.getGenerics().mo24346a(mo24343b[0]);
            }
            if (abstractC9413h3 == null) {
                c9380c.m24388a(c9376c, entry.getKey());
            } else if (this.f32413e) {
                c9380c.m24376b(c9376c, entry.getKey(), abstractC9413h3);
            } else {
                c9380c.m24387a(c9376c, entry.getKey(), abstractC9413h3);
            }
            if (mo24343b != null) {
                c9380c.getGenerics().mo24348a();
            }
            if (abstractC9413h4 == null) {
                c9380c.m24388a(c9376c, entry.getValue());
            } else if (this.f32414f) {
                c9380c.m24376b(c9376c, entry.getValue(), abstractC9413h4);
            } else {
                c9380c.m24387a(c9376c, entry.getValue(), abstractC9413h4);
            }
        }
        c9380c.getGenerics().mo24348a();
    }
}
