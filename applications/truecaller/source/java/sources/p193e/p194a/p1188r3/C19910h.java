package p193e.p194a.p1188r3;

import android.app.Activity;
import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import e.m.a.h.a.g.b;
import e.m.a.h.a.h.c;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1188r3.AbstractC19898b;
import q3.a.w2.x;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.a0;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.r3.h */
/* loaded from: classes8-dex2jar.jar:e/a/r3/h.class */
public final class C19910h implements AbstractC19909g {

    /* renamed from: b */
    public final b f56346b;

    /* renamed from: c */
    public final Set<String> f56347c = new LinkedHashSet();

    /* renamed from: d */
    public final Context f56348d;

    @e(c = "com.truecaller.dynamicfeaturesupport.DynamicFeatureManagerImpl$install$1", f = "DynamicFeatureManagerImpl.kt", l = {72, 98}, m = "invokeSuspend")
    /* renamed from: e.a.r3.h$a */
    /* loaded from: classes8-dex2jar.jar:e/a/r3/h$a.class */
    public static final class C19911a extends i implements p<x<? super AbstractC19898b>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f56349e;

        /* renamed from: f */
        public Object f56350f;

        /* renamed from: g */
        public int f56351g;

        /* renamed from: i */
        public final /* synthetic */ DynamicFeature f56353i;

        /* renamed from: e.a.r3.h$a$a */
        /* loaded from: classes8-dex2jar.jar:e/a/r3/h$a$a.class */
        public static final class C19912a<ResultT> implements c<Integer> {

            /* renamed from: a */
            public final /* synthetic */ a0 f56354a;

            public C19912a(a0 a0Var) {
                this.f56354a = a0Var;
            }

            public void onSuccess(Object obj) {
                Integer num = (Integer) obj;
                a0 a0Var = this.f56354a;
                l.d(num, "id");
                a0Var.a = num.intValue();
            }
        }

        /* renamed from: e.a.r3.h$a$b */
        /* loaded from: classes8-dex2jar.jar:e/a/r3/h$a$b.class */
        public static final class C19913b implements e.m.a.h.a.h.b {

            /* renamed from: a */
            public final /* synthetic */ x f56355a;

            public C19913b(x xVar) {
                this.f56355a = xVar;
            }

            public final void onFailure(Exception exc) {
                x xVar = this.f56355a;
                l.d(exc, "e");
                s1.a.a.a.v0.f.d.j3(xVar, new AbstractC19898b.C19900b(exc, -100));
                s1.a.a.a.v0.f.d.f0(this.f56355a.Z1(), (Throwable) null, 1, (Object) null);
            }
        }

        /* renamed from: e.a.r3.h$a$c */
        /* loaded from: classes8-dex2jar.jar:e/a/r3/h$a$c.class */
        public static final class C19914c extends m implements a<s> {

            /* renamed from: c */
            public final /* synthetic */ e.m.a.h.a.g.e f56357c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19914c(e.m.a.h.a.g.e eVar) {
                super(0);
                C19911a.this = r4;
                this.f56357c = eVar;
            }

            public Object invoke() {
                C19910h.this.f56346b.c(this.f56357c);
                return s.a;
            }
        }

        /* renamed from: e.a.r3.h$a$d */
        /* loaded from: classes8-dex2jar.jar:e/a/r3/h$a$d.class */
        public static final class C19915d implements e.m.a.h.a.g.e {

            /* renamed from: b */
            public final /* synthetic */ x f56359b;

            /* renamed from: c */
            public final /* synthetic */ a0 f56360c;

            public C19915d(x xVar, a0 a0Var) {
                C19911a.this = r4;
                this.f56359b = xVar;
                this.f56360c = a0Var;
            }

            /* renamed from: a */
            public void m11815a(Object obj) {
                boolean z;
                e.m.a.h.a.g.d dVar = (e.m.a.h.a.g.d) obj;
                l.e(dVar, "state");
                if (dVar.g() == this.f56360c.a) {
                    C19910h c19910h = C19910h.this;
                    C19916i c19916i = new C19916i(this);
                    Objects.requireNonNull(c19910h);
                    int h = dVar.h();
                    if (h == 1) {
                        c19916i.m11814d(new AbstractC19898b.C19903e(dVar.c()));
                        z = false;
                    } else if (h != 2) {
                        if (h == 5) {
                            c19916i.m11814d(AbstractC19898b.C19902d.f56333a);
                        } else if (h == 6) {
                            StringBuilder m8728C = C22128a.m8728C("Installing dynamic module has been failed: errorCode: ");
                            m8728C.append(dVar.c());
                            m8728C.append(", status: ");
                            m8728C.append(dVar.h());
                            c19916i.m11814d(new AbstractC19898b.C19900b(new IOException(m8728C.toString()), dVar.c()));
                        } else if (h == 7) {
                            c19916i.m11814d(AbstractC19898b.C19899a.f56331a);
                        } else if (h != 8) {
                            z = false;
                        } else {
                            c19916i.m11814d(new AbstractC19898b.C19904f(dVar));
                        }
                        z = true;
                    } else {
                        int a = (int) ((dVar.a() * 100) / dVar.i());
                        if (a > 100) {
                            a = 100;
                        }
                        c19916i.m11814d(new AbstractC19898b.C19901c(a));
                        z = false;
                    }
                    if (!z) {
                        return;
                    }
                    s1.a.a.a.v0.f.d.f0(this.f56359b.Z1(), (Throwable) null, 1, (Object) null);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19911a(DynamicFeature dynamicFeature, d dVar) {
            super(2, dVar);
            C19910h.this = r5;
            this.f56353i = dynamicFeature;
        }

        /* renamed from: i */
        public final d<s> m11818i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C19911a c19911a = new C19911a(this.f56353i, dVar);
            c19911a.f56349e = obj;
            return c19911a;
        }

        /* renamed from: k */
        public final Object m11817k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C19911a c19911a = new C19911a(this.f56353i, dVar);
            c19911a.f56349e = obj;
            return c19911a.m11816s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:78:0x01c7  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0205  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m11816s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 545
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1188r3.C19910h.C19911a.m11816s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C19910h(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f56348d = context;
        b m2464G = C26232y.m2464G(context);
        l.d(m2464G, "SplitInstallManagerFactory.create(context)");
        this.f56346b = m2464G;
    }

    @Override // p193e.p194a.p1188r3.AbstractC19909g
    /* renamed from: a */
    public boolean mo11822a(AbstractC19898b.C19904f c19904f, Activity activity, int i) {
        l.e(c19904f, "confirmationRequest");
        l.e(activity, "activity");
        return this.f56346b.e(c19904f.f56334a, activity, i);
    }

    @Override // p193e.p194a.p1188r3.AbstractC19909g
    /* renamed from: b */
    public boolean mo11821b(DynamicFeature dynamicFeature) {
        l.e(dynamicFeature, "dynamicFeature");
        if (this.f56347c.contains(dynamicFeature.getModuleName())) {
            return true;
        }
        if (!this.f56346b.g().contains(dynamicFeature.getModuleName())) {
            return false;
        }
        this.f56347c.add(dynamicFeature.getModuleName());
        return true;
    }

    @Override // p193e.p194a.p1188r3.AbstractC19909g
    /* renamed from: c */
    public void mo11820c(DynamicFeature dynamicFeature) {
        l.e(dynamicFeature, "dynamicFeature");
        if (!mo11821b(dynamicFeature)) {
            return;
        }
        this.f56347c.remove(dynamicFeature.getModuleName());
        this.f56346b.b(C25225a.m3962T1(dynamicFeature.getModuleName()));
    }

    @Override // p193e.p194a.p1188r3.AbstractC19909g
    /* renamed from: d */
    public f<AbstractC19898b> mo11819d(DynamicFeature dynamicFeature) {
        l.e(dynamicFeature, "dynamicFeature");
        return s1.a.a.a.v0.f.d.P(new C19911a(dynamicFeature, null));
    }
}
