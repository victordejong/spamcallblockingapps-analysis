package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.c.e;
import com.esotericsoftware.kryo.h;
import com.esotericsoftware.kryo.i;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/j.class */
public class j<T extends Map> extends h<T> {

    /* renamed from: a  reason: collision with root package name */
    Class f19071a;

    /* renamed from: b  reason: collision with root package name */
    Class f19072b;

    /* renamed from: c  reason: collision with root package name */
    h f19073c;

    /* renamed from: d  reason: collision with root package name */
    h f19074d;
    boolean e = true;
    boolean f = true;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/j$a.class */
    public @interface a {
        Class a() default Object.class;

        Class<? extends h> b() default h.class;

        Class<? extends i> c() default i.class;

        Class d() default Object.class;

        Class<? extends h> e() default h.class;

        Class<? extends i> f() default i.class;

        boolean g() default true;

        boolean h() default true;
    }

    public j() {
        setAcceptsNull(true);
    }

    /* renamed from: a */
    public T read(c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends T> cls) {
        int b2 = aVar.b(true);
        if (b2 == 0) {
            return null;
        }
        int i = b2 - 1;
        T a2 = a(cVar, aVar, cls, i);
        cVar.a(a2);
        if (i == 0) {
            return a2;
        }
        Class cls2 = this.f19071a;
        Class cls3 = this.f19072b;
        h hVar = this.f19073c;
        h hVar2 = this.f19074d;
        e.a[] b3 = cVar.getGenerics().b();
        Class cls4 = cls2;
        Class cls5 = cls3;
        h hVar3 = hVar;
        h hVar4 = hVar2;
        if (b3 != null) {
            Class cls6 = cls2;
            h hVar5 = hVar;
            if (hVar == null) {
                Class a3 = b3[0].a(cVar.getGenerics());
                cls6 = cls2;
                hVar5 = hVar;
                if (a3 != null) {
                    cls6 = cls2;
                    hVar5 = hVar;
                    if (c.f(a3)) {
                        hVar5 = cVar.d(a3);
                        cls6 = a3;
                    }
                }
            }
            cls4 = cls6;
            cls5 = cls3;
            hVar3 = hVar5;
            hVar4 = hVar2;
            if (hVar2 == null) {
                Class a4 = b3[1].a(cVar.getGenerics());
                cls4 = cls6;
                cls5 = cls3;
                hVar3 = hVar5;
                hVar4 = hVar2;
                if (a4 != null) {
                    cls4 = cls6;
                    cls5 = cls3;
                    hVar3 = hVar5;
                    hVar4 = hVar2;
                    if (c.f(a4)) {
                        hVar4 = cVar.d(a4);
                        cls5 = a4;
                        hVar3 = hVar5;
                        cls4 = cls6;
                    }
                }
            }
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (b3 != null) {
                cVar.getGenerics().a(b3[0]);
            }
            Object b4 = hVar3 != null ? this.e ? cVar.b(aVar, cls4, hVar3) : cVar.a(aVar, cls4, hVar3) : cVar.b(aVar);
            if (b3 != null) {
                cVar.getGenerics().a();
            }
            a2.put(b4, hVar4 != null ? this.f ? cVar.b(aVar, cls5, hVar4) : cVar.a(aVar, cls5, hVar4) : cVar.b(aVar));
        }
        cVar.getGenerics().a();
        return a2;
    }

    protected T a(c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends T> cls, int i) {
        int i2;
        if (cls != HashMap.class) {
            return (T) ((Map) cVar.e(cls));
        }
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

    protected T a(c cVar, T t) {
        return (T) ((Map) cVar.e(t.getClass()));
    }

    protected void a(c cVar, com.esotericsoftware.kryo.a.c cVar2, T t) {
    }

    /* renamed from: b */
    public T copy(c cVar, T t) {
        T a2 = a(cVar, t);
        for (Map.Entry entry : t.entrySet()) {
            a2.put(cVar.b((c) entry.getKey()), cVar.b((c) entry.getValue()));
        }
        return a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.h
    public /* synthetic */ void write(c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
        Map map = (Map) obj;
        if (map == null) {
            cVar2.a(0);
            return;
        }
        int size = map.size();
        if (size == 0) {
            cVar2.a(1);
            a(cVar, cVar2, (com.esotericsoftware.kryo.a.c) map);
            return;
        }
        cVar2.b(size + 1, true);
        a(cVar, cVar2, (com.esotericsoftware.kryo.a.c) map);
        h hVar = this.f19073c;
        h hVar2 = this.f19074d;
        e.a[] b2 = cVar.getGenerics().b();
        h hVar3 = hVar;
        h hVar4 = hVar2;
        if (b2 != null) {
            h hVar5 = hVar;
            if (hVar == null) {
                Class a2 = b2[0].a(cVar.getGenerics());
                hVar5 = hVar;
                if (a2 != null) {
                    hVar5 = hVar;
                    if (c.f(a2)) {
                        hVar5 = cVar.d(a2);
                    }
                }
            }
            hVar3 = hVar5;
            hVar4 = hVar2;
            if (hVar2 == null) {
                Class a3 = b2[1].a(cVar.getGenerics());
                hVar3 = hVar5;
                hVar4 = hVar2;
                if (a3 != null) {
                    hVar3 = hVar5;
                    hVar4 = hVar2;
                    if (c.f(a3)) {
                        hVar4 = cVar.d(a3);
                        hVar3 = hVar5;
                    }
                }
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            if (b2 != null) {
                cVar.getGenerics().a(b2[0]);
            }
            if (hVar3 == null) {
                cVar.a(cVar2, entry.getKey());
            } else if (this.e) {
                cVar.b(cVar2, entry.getKey(), hVar3);
            } else {
                cVar.a(cVar2, entry.getKey(), hVar3);
            }
            if (b2 != null) {
                cVar.getGenerics().a();
            }
            if (hVar4 == null) {
                cVar.a(cVar2, entry.getValue());
            } else if (this.f) {
                cVar.b(cVar2, entry.getValue(), hVar4);
            } else {
                cVar.a(cVar2, entry.getValue(), hVar4);
            }
        }
        cVar.getGenerics().a();
    }
}
