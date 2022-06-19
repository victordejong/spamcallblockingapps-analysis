package com.bumptech.glide.p223p.p224l;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p049k.AbstractC1594e;
import p020b.p041h.p049k.C1596g;
/* renamed from: com.bumptech.glide.p.l.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/l/a.class */
public final class C4385a {

    /* renamed from: a */
    private static final AbstractC4392g<Object> f13395a = new C4386a();

    /* renamed from: com.bumptech.glide.p.l.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/l/a$a.class */
    class C4386a implements AbstractC4392g<Object> {
        C4386a() {
        }

        @Override // com.bumptech.glide.p223p.p224l.C4385a.AbstractC4392g
        /* renamed from: a */
        public void mo22683a(Object obj) {
        }
    }

    /* renamed from: com.bumptech.glide.p.l.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/l/a$b.class */
    public class C4387b implements AbstractC4389d<List<T>> {
        C4387b() {
        }

        /* renamed from: b */
        public List<T> mo22687a() {
            return new ArrayList();
        }
    }

    /* renamed from: com.bumptech.glide.p.l.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/l/a$c.class */
    public class C4388c implements AbstractC4392g<List<T>> {
        C4388c() {
        }

        /* renamed from: b */
        public void mo22683a(List<T> list) {
            list.clear();
        }
    }

    /* renamed from: com.bumptech.glide.p.l.a$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/l/a$d.class */
    public interface AbstractC4389d<T> {
        /* renamed from: a */
        T mo22687a();
    }

    /* renamed from: com.bumptech.glide.p.l.a$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/l/a$e.class */
    public static final class C4390e<T> implements AbstractC1594e<T> {

        /* renamed from: a */
        private final AbstractC4389d<T> f13396a;

        /* renamed from: b */
        private final AbstractC4392g<T> f13397b;

        /* renamed from: c */
        private final AbstractC1594e<T> f13398c;

        C4390e(AbstractC1594e<T> abstractC1594e, AbstractC4389d<T> abstractC4389d, AbstractC4392g<T> abstractC4392g) {
            this.f13398c = abstractC1594e;
            this.f13396a = abstractC4389d;
            this.f13397b = abstractC4392g;
        }

        @Override // p020b.p041h.p049k.AbstractC1594e
        /* renamed from: a */
        public T mo22686a() {
            T mo22686a = this.f13398c.mo22686a();
            T t = mo22686a;
            if (mo22686a == null) {
                T mo22687a = this.f13396a.mo22687a();
                t = mo22687a;
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + mo22687a.getClass());
                    t = mo22687a;
                }
            }
            if (t instanceof AbstractC4391f) {
                ((AbstractC4391f) t).mo22684f().mo22677b(false);
            }
            return t;
        }

        @Override // p020b.p041h.p049k.AbstractC1594e
        /* renamed from: b */
        public boolean mo22685b(T t) {
            if (t instanceof AbstractC4391f) {
                ((AbstractC4391f) t).mo22684f().mo22677b(true);
            }
            this.f13397b.mo22683a(t);
            return this.f13398c.mo22685b(t);
        }
    }

    /* renamed from: com.bumptech.glide.p.l.a$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/l/a$f.class */
    public interface AbstractC4391f {
        /* renamed from: f */
        AbstractC4394c mo22684f();
    }

    /* renamed from: com.bumptech.glide.p.l.a$g */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/l/a$g.class */
    public interface AbstractC4392g<T> {
        /* renamed from: a */
        void mo22683a(T t);
    }

    /* renamed from: a */
    private static <T extends AbstractC4391f> AbstractC1594e<T> m22695a(AbstractC1594e<T> abstractC1594e, AbstractC4389d<T> abstractC4389d) {
        return m22694b(abstractC1594e, abstractC4389d, m22693c());
    }

    /* renamed from: b */
    private static <T> AbstractC1594e<T> m22694b(AbstractC1594e<T> abstractC1594e, AbstractC4389d<T> abstractC4389d, AbstractC4392g<T> abstractC4392g) {
        return new C4390e(abstractC1594e, abstractC4389d, abstractC4392g);
    }

    /* renamed from: c */
    private static <T> AbstractC4392g<T> m22693c() {
        return (AbstractC4392g<T>) f13395a;
    }

    /* renamed from: d */
    public static <T extends AbstractC4391f> AbstractC1594e<T> m22692d(int i, AbstractC4389d<T> abstractC4389d) {
        return m22695a(new C1596g(i), abstractC4389d);
    }

    /* renamed from: e */
    public static <T> AbstractC1594e<List<T>> m22691e() {
        return m22690f(20);
    }

    /* renamed from: f */
    public static <T> AbstractC1594e<List<T>> m22690f(int i) {
        return m22694b(new C1596g(i), new C4387b(), new C4388c());
    }
}
