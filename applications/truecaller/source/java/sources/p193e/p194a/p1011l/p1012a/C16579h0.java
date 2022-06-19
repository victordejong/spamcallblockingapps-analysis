package p193e.p194a.p1011l.p1012a;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.network.util.KnownEndpoints;
import java.io.IOException;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import org.json.JSONArray;
import org.json.JSONException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17191t0;
import p193e.p194a.p1011l.p1030s2.AbstractC17229a;
import p193e.p194a.p1011l.p1032u2.AbstractC17246a;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import q3.a.i0;
import s1.f0.r;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
import u3.l0;
import x3.a0;
import x3.b;
/* renamed from: e.a.l.a.h0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/h0.class */
public final class C16579h0 implements AbstractC16577g0 {

    /* renamed from: a */
    public final g f46590a = C25225a.m3978P1(C16580a.f46594b);

    /* renamed from: b */
    public final AbstractC17229a f46591b;

    /* renamed from: c */
    public final AbstractC17246a f46592c;

    /* renamed from: d */
    public final f f46593d;

    /* renamed from: e.a.l.a.h0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/a/h0$a.class */
    public static final class C16580a extends m implements a<AbstractC17191t0> {

        /* renamed from: b */
        public static final C16580a f46594b = new C16580a();

        public C16580a() {
            super(0);
        }

        public Object invoke() {
            return (AbstractC17191t0) C8367d.m28633a(KnownEndpoints.PREMIUM, AbstractC17191t0.class);
        }
    }

    @e(c = "com.truecaller.premium.util.ProductsReporterImpl", f = "ProductsReporter.kt", l = {31}, m = "report")
    /* renamed from: e.a.l.a.h0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/a/h0$b.class */
    public static final class C16581b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46595d;

        /* renamed from: e */
        public int f46596e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16581b(d dVar) {
            super(dVar);
            C16579h0.this = r4;
        }

        /* renamed from: s */
        public final Object m17226s(Object obj) {
            this.f46595d = obj;
            this.f46596e |= Integer.MIN_VALUE;
            return C16579h0.this.m17227b(this);
        }
    }

    @e(c = "com.truecaller.premium.util.ProductsReporterImpl$report$2", f = "ProductsReporter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.l.a.h0$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/a/h0$c.class */
    public static final class C16582c extends i implements p<i0, d<? super String>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16582c(d dVar) {
            super(2, dVar);
            C16579h0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m17225i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16582c(dVar);
        }

        /* renamed from: k */
        public final Object m17224k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16579h0 c16579h0 = C16579h0.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            StringBuilder sb = new StringBuilder();
            try {
                a0 execute = ((AbstractC17191t0) c16579h0.f46590a.getValue()).m16432c(c16579h0.f46592c.mo16331a().getProviderName(), c16579h0.f46591b.mo16359a()).execute();
                l.d(execute, "call.execute()");
                C16579h0.m17228a(c16579h0, sb, execute);
            } catch (IOException e) {
                StringBuilder m8728C = C22128a.m8728C("Error while fetching products: ");
                m8728C.append(e.getMessage());
                sb.append(m8728C.toString());
                l.d(sb, "append(value)");
                sb.append('\n');
                l.d(sb, "append('\\n')");
            }
            return sb.toString();
        }

        /* renamed from: s */
        public final Object m17223s(Object obj) {
            C25225a.m3932a3(obj);
            StringBuilder sb = new StringBuilder();
            b<l0> m16432c = ((AbstractC17191t0) C16579h0.this.f46590a.getValue()).m16432c(C16579h0.this.f46592c.mo16331a().getProviderName(), C16579h0.this.f46591b.mo16359a());
            try {
                C16579h0 c16579h0 = C16579h0.this;
                a0 execute = m16432c.execute();
                l.d(execute, "call.execute()");
                C16579h0.m17228a(c16579h0, sb, execute);
            } catch (IOException e) {
                StringBuilder m8728C = C22128a.m8728C("Error while fetching products: ");
                m8728C.append(e.getMessage());
                sb.append(m8728C.toString());
                l.d(sb, "append(value)");
                sb.append('\n');
                l.d(sb, "append('\\n')");
            }
            return sb.toString();
        }
    }

    @Inject
    public C16579h0(AbstractC17229a abstractC17229a, AbstractC17246a abstractC17246a, @Named("IO") f fVar) {
        l.e(abstractC17229a, "firebasePersonalisationManager");
        l.e(abstractC17246a, "premiumProductStoreProvider");
        l.e(fVar, "asyncContext");
        this.f46591b = abstractC17229a;
        this.f46592c = abstractC17246a;
        this.f46593d = fVar;
    }

    /* renamed from: a */
    public static final StringBuilder m17228a(C16579h0 c16579h0, StringBuilder sb, a0 a0Var) {
        Objects.requireNonNull(c16579h0);
        String str = null;
        if (a0Var.b()) {
            l0 l0Var = (l0) a0Var.b;
            if (l0Var != null) {
                str = l0Var.s();
            }
            if (str == null || str.length() == 0) {
                sb.append("Response is empty");
                l.d(sb, "append(value)");
                sb.append('\n');
                l.d(sb, "append('\\n')");
            } else {
                try {
                    String jSONArray = new JSONArray(str).toString(4);
                    l.d(jSONArray, "JSONArray(body).toString(4)");
                    sb.append(r.t(jSONArray, StringConstant.NEW_LINE, "\r\n", false, 4));
                    l.d(sb, "append(value)");
                    sb.append('\n');
                    l.d(sb, "append('\\n')");
                } catch (JSONException e) {
                    sb.append(str);
                    l.d(sb, "append(value)");
                    sb.append('\n');
                    l.d(sb, "append('\\n')");
                }
            }
        } else {
            l0 l0Var2 = a0Var.c;
            String str2 = null;
            if (l0Var2 != null) {
                str2 = l0Var2.s();
            }
            sb.append(str2);
            l.d(sb, "append(value)");
            sb.append('\n');
            l.d(sb, "append('\\n')");
        }
        return sb;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17227b(s1.w.d<? super java.lang.String> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p1011l.p1012a.C16579h0.C16581b
            if (r0 == 0) goto L25
            r0 = r6
            e.a.l.a.h0$b r0 = (p193e.p194a.p1011l.p1012a.C16579h0.C16581b) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f46596e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f46596e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.l.a.h0$b r0 = new e.a.l.a.h0$b
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f46595d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f46596e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L86
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            s1.w.f r0 = r0.f46593d
            r10 = r0
            e.a.l.a.h0$c r0 = new e.a.l.a.h0$c
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f46596e = r1
            r0 = r10
            r1 = r7
            r2 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L86
            r0 = r9
            return r0
        L86:
            r0 = r6
            java.lang.String r1 = "withContext(asyncContext… builder.toString()\n    }"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1012a.C16579h0.m17227b(s1.w.d):java.lang.Object");
    }
}
