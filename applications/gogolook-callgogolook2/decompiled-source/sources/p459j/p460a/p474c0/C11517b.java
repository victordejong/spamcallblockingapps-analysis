package p459j.p460a.p474c0;

import android.content.Context;
import android.os.Process;
import android.telephony.SmsManager;
import android.util.SparseArray;
import gogolook.callgogolook2.MyApplication;
import java.util.concurrent.ConcurrentHashMap;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11530i;
import p459j.p460a.p474c0.p475c.C11547p;
import p459j.p460a.p474c0.p475c.C11560u;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11671q;
import p459j.p460a.p474c0.p475c.p479z.C11648e;
import p459j.p460a.p474c0.p475c.p479z.C11675t;
import p459j.p460a.p474c0.p488f.C11825d;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p491g.C12127x;
import p459j.p460a.p474c0.p499h.AbstractC12165g0;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.AbstractC12178k;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12167h;
import p459j.p460a.p474c0.p499h.C12168h0;
import p459j.p460a.p474c0.p499h.C12176j;
import p459j.p460a.p474c0.p499h.C12186m;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.b */
/* loaded from: classes-dex2jar.jar:j/a/c0/b.class */
public class C11517b extends AbstractC11516a {

    /* renamed from: r */
    public static AbstractC12181l0 f25711r;

    /* renamed from: d */
    public MyApplication f25713d;

    /* renamed from: e */
    public AbstractC11528g f25714e;

    /* renamed from: f */
    public AbstractC12170i f25715f;

    /* renamed from: g */
    public C12167h f25716g;

    /* renamed from: h */
    public Context f25717h;

    /* renamed from: i */
    public AbstractC12126w f25718i;

    /* renamed from: j */
    public C11547p f25719j;

    /* renamed from: k */
    public C11675t f25720k;

    /* renamed from: l */
    public AbstractC11671q f25721l;

    /* renamed from: m */
    public C11560u.C11563c f25722m;

    /* renamed from: n */
    public AbstractC12165g0 f25723n;

    /* renamed from: o */
    public SparseArray<C12186m> f25724o;

    /* renamed from: p */
    public C11825d f25725p;

    /* renamed from: q */
    public static final Object f25710q = new Object();

    /* renamed from: s */
    public static final ConcurrentHashMap<Integer, AbstractC12181l0> f25712s = new ConcurrentHashMap<>();

    /* renamed from: j.a.c0.b$a */
    /* loaded from: classes-dex2jar.jar:j/a/c0/b$a.class */
    public class C11518a extends Thread {
        public C11518a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            C11517b.this.f25713d.m29030a(C11517b.this);
        }
    }

    /* renamed from: a */
    public static AbstractC11516a m9410a(Context context, MyApplication myApplication) {
        C12151d.m6999b(!AbstractC11516a.f25708b);
        C12151d.m7008a(AbstractC11516a.m9413n());
        C11517b bVar = new C11517b();
        AbstractC11516a.m9414a(bVar);
        AbstractC11516a.f25708b = true;
        bVar.f25713d = myApplication;
        bVar.f25717h = context;
        bVar.f25719j = new C11547p();
        bVar.f25721l = new C11648e();
        bVar.f25720k = new C11675t();
        bVar.f25715f = new C12176j(context);
        bVar.f25716g = new C12167h(context);
        bVar.f25714e = new C11530i(context);
        bVar.f25718i = new C12127x();
        bVar.f25722m = new C11560u.C11563c();
        bVar.f25723n = new C12168h0();
        bVar.f25724o = new SparseArray<>();
        bVar.f25725p = new C11825d(context);
        C12151d.m7001b(bVar.f25715f);
        C12153d0.m6995a(bVar.f25715f);
        if (C13878a3.m3196v()) {
            bVar.m9395o();
        }
        return bVar;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: a */
    public Context mo9412a() {
        return this.f25717h;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: a */
    public AbstractC12181l0 mo9411a(int i) {
        if (C14017g4.m2804t()) {
            int i2 = i;
            if (i == -1) {
                i2 = SmsManager.getDefaultSmsSubscriptionId();
            }
            int i3 = i2;
            if (i2 < 0) {
                C12153d0.m6981e("MessagingApp", "PhoneUtils.getForLMR1(): invalid subId = " + i2);
                i3 = -1;
            }
            AbstractC12181l0 l0Var = f25712s.get(Integer.valueOf(i3));
            AbstractC12181l0 l0Var2 = l0Var;
            if (l0Var == null) {
                l0Var2 = new AbstractC12181l0.C12183b(i3);
                f25712s.putIfAbsent(Integer.valueOf(i3), l0Var2);
            }
            return l0Var2;
        }
        C12151d.m6999b(i == -1);
        if (f25711r == null) {
            synchronized (f25710q) {
                if (f25711r == null) {
                    f25711r = new AbstractC12181l0.C12184c();
                }
            }
        }
        return f25711r;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: b */
    public AbstractC12178k mo9408b() {
        return this.f25716g;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: b */
    public AbstractC12178k mo9407b(int i) {
        int a = AbstractC12181l0.m6886t().mo6881a(i);
        C12186m mVar = this.f25724o.get(a);
        C12186m mVar2 = mVar;
        if (mVar == null) {
            synchronized (this) {
                C12186m mVar3 = this.f25724o.get(a);
                mVar2 = mVar3;
                if (mVar3 == null) {
                    mVar2 = new C12186m(mo9412a(), a);
                    this.f25724o.put(a, mVar2);
                }
            }
        }
        return mVar2;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: c */
    public AbstractC12170i mo9406c() {
        return this.f25715f;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: d */
    public C11825d mo9405d() {
        return this.f25725p;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: e */
    public C11560u.C11563c mo9404e() {
        return this.f25722m;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: f */
    public AbstractC11528g mo9403f() {
        return this.f25714e;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: g */
    public AbstractC11671q mo9402g() {
        return this.f25721l;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: h */
    public C11675t mo9401h() {
        return this.f25720k;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: i */
    public AbstractC12165g0 mo9400i() {
        return this.f25723n;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: j */
    public C11547p mo9399j() {
        return this.f25719j;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: k */
    public AbstractC12126w mo9398k() {
        return this.f25718i;
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: l */
    public void mo9397l() {
    }

    @Override // p459j.p460a.p474c0.AbstractC11516a
    /* renamed from: m */
    public void mo9396m() {
        this.f25719j.m9198a();
    }

    /* renamed from: o */
    public void m9395o() {
        if (!AbstractC11516a.f25709c) {
            AbstractC11516a.f25709c = true;
            this.f25713d.m29027b(this);
            new C11518a().start();
        }
    }
}
