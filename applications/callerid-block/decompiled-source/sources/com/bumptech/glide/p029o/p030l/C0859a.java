package com.bumptech.glide.p029o.p030l;

import d.h.l.e;
import d.h.l.g;
import java.util.List;
/* renamed from: com.bumptech.glide.o.l.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/l/a.class */
public final class C0859a {

    /* renamed from: a */
    private static final AbstractC0862g<Object> f3832a = new a();

    /* renamed from: com.bumptech.glide.o.l.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/l/a$d.class */
    public interface AbstractC0860d<T> {
        /* renamed from: a */
        T m10729a();
    }

    /* renamed from: com.bumptech.glide.o.l.a$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/l/a$f.class */
    public interface AbstractC0861f {
        /* renamed from: j */
        AbstractC0864c m10728j();
    }

    /* renamed from: com.bumptech.glide.o.l.a$g */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/l/a$g.class */
    public interface AbstractC0862g<T> {
        /* renamed from: a */
        void m10727a(T t);
    }

    /* renamed from: a */
    private static <T extends AbstractC0861f> e<T> m10735a(e<T> eVar, AbstractC0860d<T> dVar) {
        return m10734b(eVar, dVar, m10733c());
    }

    /* renamed from: b */
    private static <T> e<T> m10734b(e<T> eVar, AbstractC0860d<T> dVar, AbstractC0862g<T> gVar) {
        return new e(eVar, dVar, gVar);
    }

    /* renamed from: c */
    private static <T> AbstractC0862g<T> m10733c() {
        return (AbstractC0862g<T>) f3832a;
    }

    /* renamed from: d */
    public static <T extends AbstractC0861f> e<T> m10732d(int i, AbstractC0860d<T> dVar) {
        return m10735a(new g(i), dVar);
    }

    /* renamed from: e */
    public static <T> e<List<T>> m10731e() {
        return m10730f(20);
    }

    /* renamed from: f */
    public static <T> e<List<T>> m10730f(int i) {
        return m10734b(new g(i), new b(), new c());
    }
}
