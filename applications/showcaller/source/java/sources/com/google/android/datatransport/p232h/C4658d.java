package com.google.android.datatransport.p232h;

import android.content.Context;
import com.google.android.datatransport.p232h.AbstractC4680s;
import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import com.google.android.datatransport.p232h.p233u.p234a.C4683a;
import com.google.android.datatransport.p232h.p233u.p234a.C4685c;
import com.google.android.datatransport.p232h.p233u.p234a.C4686d;
import com.google.android.datatransport.p232h.p237x.C4693c;
import com.google.android.datatransport.p232h.p237x.C4694d;
import com.google.android.datatransport.p232h.p237x.C4697g;
import com.google.android.datatransport.p232h.p237x.C4699i;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import com.google.android.datatransport.p232h.p237x.p238j.C4705b0;
import com.google.android.datatransport.p232h.p237x.p238j.C4711c0;
import com.google.android.datatransport.p232h.p237x.p238j.C4717f;
import com.google.android.datatransport.p232h.p237x.p238j.C4720g;
import com.google.android.datatransport.p232h.p237x.p238j.C4723h;
import com.google.android.datatransport.p232h.p237x.p238j.C4728i0;
import com.google.android.datatransport.p232h.p239y.C4748c;
import com.google.android.datatransport.p232h.p239y.C4750d;
import com.google.android.datatransport.runtime.backends.C4766i;
import com.google.android.datatransport.runtime.backends.C4769k;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC4793r;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4787l;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4788m;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4791p;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4792q;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.concurrent.Executor;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.h.d */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/d.class */
public final class C4658d extends AbstractC4680s {

    /* renamed from: d */
    private AbstractC9476a<Executor> f14218d;

    /* renamed from: e */
    private AbstractC9476a<Context> f14219e;

    /* renamed from: f */
    private AbstractC9476a f14220f;

    /* renamed from: g */
    private AbstractC9476a f14221g;

    /* renamed from: h */
    private AbstractC9476a f14222h;

    /* renamed from: i */
    private AbstractC9476a<C4705b0> f14223i;

    /* renamed from: j */
    private AbstractC9476a<SchedulerConfig> f14224j;

    /* renamed from: k */
    private AbstractC9476a<AbstractC4793r> f14225k;

    /* renamed from: l */
    private AbstractC9476a<C4693c> f14226l;

    /* renamed from: m */
    private AbstractC9476a<C4787l> f14227m;

    /* renamed from: n */
    private AbstractC9476a<C4791p> f14228n;

    /* renamed from: o */
    private AbstractC9476a<C4679r> f14229o;

    /* renamed from: com.google.android.datatransport.h.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/d$b.class */
    public static final class C4660b implements AbstractC4680s.AbstractC4681a {

        /* renamed from: a */
        private Context f14230a;

        private C4660b() {
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4680s.AbstractC4681a
        /* renamed from: a */
        public AbstractC4680s mo22004a() {
            C4686d.m21996a(this.f14230a, Context.class);
            return new C4658d(this.f14230a);
        }

        /* renamed from: c */
        public C4660b mo22003b(Context context) {
            this.f14230a = (Context) C4686d.m21995b(context);
            return this;
        }
    }

    private C4658d(Context context) {
        m22071g(context);
    }

    /* renamed from: f */
    public static AbstractC4680s.AbstractC4681a m22072f() {
        return new C4660b();
    }

    /* renamed from: g */
    private void m22071g(Context context) {
        this.f14218d = C4683a.m21999a(C4667j.m22041a());
        AbstractC4684b m21997a = C4685c.m21997a(context);
        this.f14219e = m21997a;
        C4766i m21827a = C4766i.m21827a(m21997a, C4748c.m21855a(), C4750d.m21851a());
        this.f14220f = m21827a;
        this.f14221g = C4683a.m21999a(C4769k.m21820a(this.f14219e, m21827a));
        this.f14222h = C4728i0.m21879a(this.f14219e, C4717f.m21905a(), C4720g.m21900a());
        this.f14223i = C4683a.m21999a(C4711c0.m21925a(C4748c.m21855a(), C4750d.m21851a(), C4723h.m21895a(), this.f14222h));
        C4697g m21974b = C4697g.m21974b(C4748c.m21855a());
        this.f14224j = m21974b;
        C4699i m21971a = C4699i.m21971a(this.f14219e, this.f14223i, m21974b, C4750d.m21851a());
        this.f14225k = m21971a;
        AbstractC9476a<Executor> abstractC9476a = this.f14218d;
        AbstractC9476a abstractC9476a2 = this.f14221g;
        AbstractC9476a<C4705b0> abstractC9476a3 = this.f14223i;
        this.f14226l = C4694d.m21980a(abstractC9476a, abstractC9476a2, m21971a, abstractC9476a3, abstractC9476a3);
        AbstractC9476a<Context> abstractC9476a4 = this.f14219e;
        AbstractC9476a abstractC9476a5 = this.f14221g;
        AbstractC9476a<C4705b0> abstractC9476a6 = this.f14223i;
        this.f14227m = C4788m.m21775a(abstractC9476a4, abstractC9476a5, abstractC9476a6, this.f14225k, this.f14218d, abstractC9476a6, C4748c.m21855a());
        AbstractC9476a<Executor> abstractC9476a7 = this.f14218d;
        AbstractC9476a<C4705b0> abstractC9476a8 = this.f14223i;
        this.f14228n = C4792q.m21767a(abstractC9476a7, abstractC9476a8, this.f14225k, abstractC9476a8);
        this.f14229o = C4683a.m21999a(C4682t.m22002a(C4748c.m21855a(), C4750d.m21851a(), this.f14226l, this.f14227m, this.f14228n));
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4680s
    /* renamed from: a */
    AbstractC4710c mo22006a() {
        return this.f14223i.get();
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4680s
    /* renamed from: e */
    public C4679r mo22005e() {
        return this.f14229o.get();
    }
}
