package p081h.p203i.p204a.p206b.p209j;

import android.content.Context;
import java.util.concurrent.Executor;
import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.AbstractC6587s;
import p081h.p203i.p204a.p206b.p209j.p210a0.C6552c;
import p081h.p203i.p204a.p206b.p209j.p210a0.C6554d;
import p081h.p203i.p204a.p206b.p209j.p212u.C6603j;
import p081h.p203i.p204a.p206b.p209j.p212u.C6606l;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.C6609a;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.C6611c;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.C6612d;
import p081h.p203i.p204a.p206b.p209j.p217y.C6619c;
import p081h.p203i.p204a.p206b.p209j.p217y.C6620d;
import p081h.p203i.p204a.p206b.p209j.p217y.C6623g;
import p081h.p203i.p204a.p206b.p209j.p217y.C6625i;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6650s;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6644m;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6645n;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6648q;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.C6649r;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6662c0;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6668f;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6671g;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6674h;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6679i0;
/* renamed from: h.i.a.b.j.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/d.class */
public final class C6565d extends AbstractC6587s {

    /* renamed from: a */
    public Provider<Executor> f16359a;

    /* renamed from: b */
    public Provider<Context> f16360b;

    /* renamed from: c */
    public Provider f16361c;

    /* renamed from: d */
    public Provider f16362d;

    /* renamed from: e */
    public Provider f16363e;

    /* renamed from: f */
    public Provider<C6656b0> f16364f;

    /* renamed from: g */
    public Provider<AbstractC6634g> f16365g;

    /* renamed from: h */
    public Provider<AbstractC6650s> f16366h;

    /* renamed from: i */
    public Provider<C6619c> f16367i;

    /* renamed from: j */
    public Provider<C6644m> f16368j;

    /* renamed from: k */
    public Provider<C6648q> f16369k;

    /* renamed from: l */
    public Provider<C6586r> f16370l;

    /* renamed from: h.i.a.b.j.d$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/d$b.class */
    public static final class C6567b implements AbstractC6587s.AbstractC6588a {

        /* renamed from: a */
        public Context f16371a;

        public C6567b() {
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6587s.AbstractC6588a
        /* renamed from: a */
        public C6567b mo22273a(Context context) {
            C6612d.m22240a(context);
            this.f16371a = context;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6587s.AbstractC6588a
        public AbstractC6587s build() {
            C6612d.m22239a(this.f16371a, Context.class);
            return new C6565d(this.f16371a);
        }
    }

    public C6565d(Context context) {
        m22341a(context);
    }

    /* renamed from: c */
    public static AbstractC6587s.AbstractC6588a m22340c() {
        return new C6567b();
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6587s
    /* renamed from: a */
    public AbstractC6661c mo22275a() {
        return this.f16364f.get();
    }

    /* renamed from: a */
    public final void m22341a(Context context) {
        this.f16359a = C6609a.m22242a(C6574j.m22312a());
        this.f16360b = C6611c.m22241a(context);
        this.f16361c = C6603j.m22252a(this.f16360b, C6552c.m22350a(), C6554d.m22347a());
        this.f16362d = C6609a.m22242a(C6606l.m22246a(this.f16360b, this.f16361c));
        this.f16363e = C6679i0.m22082a(this.f16360b, C6668f.m22106a(), C6671g.m22102a());
        this.f16364f = C6609a.m22242a(C6662c0.m22124a(C6552c.m22350a(), C6554d.m22347a(), C6674h.m22098a(), this.f16363e));
        this.f16365g = C6623g.m22220a(C6552c.m22350a());
        this.f16366h = C6625i.m22217a(this.f16360b, this.f16364f, this.f16365g, C6554d.m22347a());
        Provider<Executor> provider = this.f16359a;
        Provider provider2 = this.f16362d;
        Provider<AbstractC6650s> provider3 = this.f16366h;
        Provider<C6656b0> provider4 = this.f16364f;
        this.f16367i = C6620d.m22224a(provider, provider2, provider3, provider4, provider4);
        Provider<Context> provider5 = this.f16360b;
        Provider provider6 = this.f16362d;
        Provider<C6656b0> provider7 = this.f16364f;
        this.f16368j = C6645n.m22177a(provider5, provider6, provider7, this.f16366h, this.f16359a, provider7, C6552c.m22350a());
        Provider<Executor> provider8 = this.f16359a;
        Provider<C6656b0> provider9 = this.f16364f;
        this.f16369k = C6649r.m22170a(provider8, provider9, this.f16366h, provider9);
        this.f16370l = C6609a.m22242a(C6589t.m22271a(C6552c.m22350a(), C6554d.m22347a(), this.f16367i, this.f16368j, this.f16369k));
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6587s
    /* renamed from: b */
    public C6586r mo22274b() {
        return this.f16370l.get();
    }
}
