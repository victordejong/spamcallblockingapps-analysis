package p1727n3.p1758e.p1767b;

import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Size;
import com.tenor.android.core.constant.StringConstant;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;
import n3.e.b.j1.a1;
import n3.e.b.j1.e1;
import n3.e.b.j1.o0;
import n3.e.b.j1.q0;
import n3.e.b.j1.r1;
import n3.e.b.k1.f;
import p1727n3.p1758e.p1767b.AbstractC25921g1;
import p1727n3.p1758e.p1767b.C25898c1;
import p1727n3.p1758e.p1767b.C25910f1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25961h0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25964i0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25988m0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26010s1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26013t;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26059z;
import p1727n3.p1758e.p1767b.p1768j1.C25949d1;
import p1727n3.p1758e.p1767b.p1768j1.C25972j1;
import p1727n3.p1758e.p1767b.p1768j1.r1$a;
import p1727n3.p1758e.p1767b.p1772k1.C26063b;
import p1727n3.p1758e.p1776d.C26120e;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.c1 */
/* loaded from: classes-dex2jar.jar:n3/e/b/c1.class */
public final class C25898c1 extends AbstractC25921g1 {

    /* renamed from: r */
    public static final C25901c f72442r = new C25901c();

    /* renamed from: s */
    public static final Executor f72443s = MediaSessionCompat.m43279O0();

    /* renamed from: l */
    public AbstractC25902d f72444l;

    /* renamed from: n */
    public AbstractC25980k0 f72446n;

    /* renamed from: o */
    public C25910f1 f72447o;

    /* renamed from: q */
    public Size f72449q;

    /* renamed from: m */
    public Executor f72445m = f72443s;

    /* renamed from: p */
    public boolean f72448p = false;

    /* renamed from: n3.e.b.c1$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/c1$a.class */
    public class C25899a extends AbstractC26002q {

        /* renamed from: a */
        public final /* synthetic */ AbstractC25988m0 f72450a;

        public C25899a(AbstractC25988m0 abstractC25988m0) {
            C25898c1.this = r4;
            this.f72450a = abstractC25988m0;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q
        /* renamed from: b */
        public void mo2701b(AbstractC26013t abstractC26013t) {
            if (this.f72450a.m2824a(new C26063b(abstractC26013t))) {
                C25898c1 c25898c1 = C25898c1.this;
                for (AbstractC25921g1.AbstractC25924c abstractC25924c : c25898c1.f72500a) {
                    abstractC25924c.m2889c(c25898c1);
                }
            }
        }
    }

    /* renamed from: n3.e.b.c1$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/c1$b.class */
    public static final class C25900b implements r1$a<C25898c1, e1, C25900b> {

        /* renamed from: a */
        public final a1 f72452a;

        public C25900b() {
            this(a1.x());
        }

        public C25900b(a1 a1Var) {
            this.f72452a = a1Var;
            AbstractC25968j0.AbstractC25969a abstractC25969a = f.o;
            Class cls = (Class) a1Var.mo2850b(abstractC25969a, null);
            if (cls != null && !cls.equals(C25898c1.class)) {
                throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
            }
            AbstractC25968j0.EnumC25971c enumC25971c = AbstractC25968j0.EnumC25971c.OPTIONAL;
            a1Var.z(abstractC25969a, enumC25971c, C25898c1.class);
            AbstractC25968j0.AbstractC25969a abstractC25969a2 = f.n;
            if (a1Var.mo2850b(abstractC25969a2, null) != null) {
                return;
            }
            a1Var.z(abstractC25969a2, enumC25971c, C25898c1.class.getCanonicalName() + StringConstant.DASH + UUID.randomUUID());
        }

        /* renamed from: a */
        public C25898c1 m2916a() {
            if (this.f72452a.mo2850b(q0.b, null) == null || this.f72452a.mo2850b(q0.d, null) == null) {
                return new C25898c1(m2915b());
            }
            throw new IllegalArgumentException("Cannot use both setTargetResolution and setTargetAspectRatio on the same config.");
        }

        /* renamed from: b */
        public e1 m2915b() {
            return new e1(C25949d1.m2869w(this.f72452a));
        }
    }

    /* renamed from: n3.e.b.c1$c */
    /* loaded from: classes-dex2jar.jar:n3/e/b/c1$c.class */
    public static final class C25901c {

        /* renamed from: a */
        public static final e1 f72453a;

        static {
            C25900b c25900b = new C25900b();
            a1 a1Var = c25900b.f72452a;
            AbstractC25968j0.AbstractC25969a abstractC25969a = r1.l;
            AbstractC25968j0.EnumC25971c enumC25971c = AbstractC25968j0.EnumC25971c.OPTIONAL;
            a1Var.z(abstractC25969a, enumC25971c, 2);
            c25900b.f72452a.z(q0.b, enumC25971c, 0);
            f72453a = c25900b.m2915b();
        }
    }

    /* renamed from: n3.e.b.c1$d */
    /* loaded from: classes-dex2jar.jar:n3/e/b/c1$d.class */
    public interface AbstractC25902d {
        /* renamed from: a */
        void mo2914a(C25910f1 c25910f1);
    }

    public C25898c1(e1 e1Var) {
        super(e1Var);
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25921g1
    /* renamed from: c */
    public r1<?> mo2903c(boolean z, AbstractC26010s1 abstractC26010s1) {
        AbstractC25968j0 mo2776a = abstractC26010s1.mo2776a(AbstractC26010s1.EnumC26011a.PREVIEW);
        C25949d1 c25949d1 = mo2776a;
        if (z) {
            Objects.requireNonNull(f72442r);
            e1 e1Var = C25901c.f72453a;
            if (mo2776a == null && e1Var == null) {
                c25949d1 = C25949d1.f72559r;
            } else {
                AbstractC25968j0 y = e1Var != null ? a1.y(e1Var) : a1.x();
                if (mo2776a != null) {
                    for (AbstractC25968j0.AbstractC25969a<?> abstractC25969a : mo2776a.mo2848d()) {
                        y.z(abstractC25969a, mo2776a.mo2847e(abstractC25969a), mo2776a.mo2851a(abstractC25969a));
                    }
                }
                c25949d1 = C25949d1.m2869w(y);
            }
        }
        return c25949d1 == null ? null : new C25900b(a1.y(c25949d1)).m2915b();
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25921g1
    /* renamed from: e */
    public r1$a<?, ?, ?> mo2901e(AbstractC25968j0 abstractC25968j0) {
        return new C25900b(a1.y(abstractC25968j0));
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25921g1
    /* renamed from: k */
    public void mo2895k() {
        AbstractC25980k0 abstractC25980k0 = this.f72446n;
        if (abstractC25980k0 != null) {
            abstractC25980k0.m2833a();
        }
        this.f72447o = null;
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25921g1
    /* renamed from: l */
    public r1<?> mo2894l(AbstractC26059z abstractC26059z, r1$a<?, ?, ?> r1_a) {
        AbstractC25968j0.EnumC25971c enumC25971c = AbstractC25968j0.EnumC25971c.OPTIONAL;
        if (((C25900b) r1_a).f72452a.mo2850b(e1.s, null) != null) {
            ((C25900b) r1_a).f72452a.z(o0.a, enumC25971c, 35);
        } else {
            ((C25900b) r1_a).f72452a.z(o0.a, enumC25971c, 34);
        }
        return ((C25900b) r1_a).m2915b();
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25921g1
    /* renamed from: m */
    public Size mo2893m(Size size) {
        this.f72449q = size;
        this.f72510k = m2920o(m2904b(), (e1) this.f72505f, this.f72449q).m2838d();
        return size;
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC25921g1
    /* renamed from: n */
    public void mo2892n(Rect rect) {
        this.f72508i = rect;
        m2918q();
    }

    /* renamed from: o */
    public C25972j1.C25974b m2920o(final String str, final e1 e1Var, final Size size) {
        AbstractC26002q abstractC26002q;
        MediaSessionCompat.m43199t();
        C25972j1.C25974b m2837e = C25972j1.C25974b.m2837e(e1Var);
        AbstractC25961h0 abstractC25961h0 = (AbstractC25961h0) e1Var.mo2850b(e1.s, null);
        AbstractC25980k0 abstractC25980k0 = this.f72446n;
        if (abstractC25980k0 != null) {
            abstractC25980k0.m2833a();
        }
        C25910f1 c25910f1 = new C25910f1(size, m2905a(), abstractC25961h0 != null);
        this.f72447o = c25910f1;
        if (m2919p()) {
            m2918q();
        } else {
            this.f72448p = true;
        }
        if (abstractC25961h0 != null) {
            AbstractC25964i0.C25965a c25965a = new AbstractC25964i0.C25965a();
            final HandlerThread handlerThread = new HandlerThread("CameraX-preview_processing");
            handlerThread.start();
            String num = Integer.toString(c25965a.hashCode());
            C25905d1 c25905d1 = new C25905d1(size.getWidth(), size.getHeight(), e1Var.h(), new Handler(handlerThread.getLooper()), c25965a, abstractC25961h0, c25910f1.f72481h, num);
            synchronized (c25905d1.f72456i) {
                if (c25905d1.f72458k) {
                    throw new IllegalStateException("ProcessingSurface already released!");
                }
                abstractC26002q = c25905d1.f72465r;
            }
            m2837e.m2841a(abstractC26002q);
            c25905d1.m2830d().addListener(new Runnable() { // from class: n3.e.b.a
                @Override // java.lang.Runnable
                public final void run() {
                    handlerThread.quitSafely();
                }
            }, MediaSessionCompat.m43268U());
            this.f72446n = c25905d1;
            m2837e.f72602b.f72583f.f72648a.put(num, 0);
        } else {
            AbstractC25988m0 abstractC25988m0 = (AbstractC25988m0) e1Var.mo2850b(e1.r, null);
            if (abstractC25988m0 != null) {
                C25899a c25899a = new C25899a(abstractC25988m0);
                m2837e.f72602b.m2866b(c25899a);
                m2837e.f72606f.add(c25899a);
            }
            this.f72446n = c25910f1.f72481h;
        }
        AbstractC25980k0 abstractC25980k02 = this.f72446n;
        m2837e.f72601a.add(abstractC25980k02);
        m2837e.f72602b.f72578a.add(abstractC25980k02);
        m2837e.f72605e.add(new C25972j1.AbstractC25975c() { // from class: n3.e.b.p
            @Override // p1727n3.p1758e.p1767b.p1768j1.C25972j1.AbstractC25975c
            /* renamed from: a */
            public final void mo2736a(C25972j1 c25972j1, C25972j1.EnumC25977e enumC25977e) {
                C25898c1 c25898c1 = C25898c1.this;
                String str2 = str;
                e1 e1Var2 = e1Var;
                Size size2 = size;
                if (c25898c1.m2905a() == null ? false : Objects.equals(str2, c25898c1.m2904b())) {
                    c25898c1.f72510k = c25898c1.m2920o(str2, e1Var2, size2).m2838d();
                    c25898c1.m2899g();
                }
            }
        });
        return m2837e;
    }

    /* renamed from: p */
    public final boolean m2919p() {
        final C25910f1 c25910f1 = this.f72447o;
        final AbstractC25902d abstractC25902d = this.f72444l;
        if (abstractC25902d == null || c25910f1 == null) {
            return false;
        }
        this.f72445m.execute(new Runnable() { // from class: n3.e.b.q
            @Override // java.lang.Runnable
            public final void run() {
                C25898c1.AbstractC25902d.this.mo2914a(c25910f1);
            }
        });
        return true;
    }

    /* renamed from: q */
    public final void m2918q() {
        AbstractC25938b0 m2905a = m2905a();
        AbstractC25902d abstractC25902d = this.f72444l;
        Size size = this.f72449q;
        Rect rect = this.f72508i;
        if (rect == null) {
            rect = size != null ? new Rect(0, 0, size.getWidth(), size.getHeight()) : null;
        }
        C25910f1 c25910f1 = this.f72447o;
        if (m2905a == null || abstractC25902d == null || rect == null) {
            return;
        }
        final C25920g0 c25920g0 = new C25920g0(rect, m2905a.m2878d().m2745e(this.f72505f.n(0)), this.f72505f.n(0));
        c25910f1.f72482i = c25920g0;
        final C25910f1.AbstractC25918h abstractC25918h = c25910f1.f72483j;
        if (abstractC25918h == null) {
            return;
        }
        c25910f1.f72484k.execute(new Runnable() { // from class: n3.e.b.w
            @Override // java.lang.Runnable
            public final void run() {
                ((C26120e) C25910f1.AbstractC25918h.this).m2702a(c25920g0);
            }
        });
    }

    /* renamed from: r */
    public void m2917r(AbstractC25902d abstractC25902d) {
        Executor executor = f72443s;
        MediaSessionCompat.m43199t();
        if (abstractC25902d == null) {
            this.f72444l = null;
            this.f72502c = AbstractC25921g1.EnumC25923b.INACTIVE;
            m2898h();
            return;
        }
        this.f72444l = abstractC25902d;
        this.f72445m = executor;
        this.f72502c = AbstractC25921g1.EnumC25923b.ACTIVE;
        m2898h();
        if (this.f72448p) {
            if (!m2919p()) {
                return;
            }
            m2918q();
            this.f72448p = false;
        } else if (this.f72506g == null) {
        } else {
            this.f72510k = m2920o(m2904b(), (e1) this.f72505f, this.f72506g).m2838d();
            m2899g();
        }
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Preview:");
        m8728C.append(m2902d());
        return m8728C.toString();
    }
}
