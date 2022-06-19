package p193e.p194a.p1272u3;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import p193e.p194a.p1220s4.AbstractC20235a;
import s1.e0.h;
import s1.e0.x;
import s1.f0.h;
import s1.f0.q;
import s1.f0.v;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.m;
/* renamed from: e.a.u3.e */
/* loaded from: classes9-dex2jar.jar:e/a/u3/e.class */
public final class C20586e extends AbstractC19316a implements AbstractC20585d {

    /* renamed from: b */
    public final int f57688b = 1;

    /* renamed from: c */
    public final String f57689c = "ftoggles";

    /* renamed from: d */
    public final g f57690d = C25225a.m3978P1(C20587a.f57692b);

    /* renamed from: e */
    public final SharedPreferences f57691e;

    /* renamed from: e.a.u3.e$a */
    /* loaded from: classes9-dex2jar.jar:e/a/u3/e$a.class */
    public static final class C20587a extends m implements a<h> {

        /* renamed from: b */
        public static final C20587a f57692b = new C20587a();

        public C20587a() {
            super(0);
        }

        public Object invoke() {
            return new h("^\\w+-\\d+$");
        }
    }

    /* renamed from: e.a.u3.e$b */
    /* loaded from: classes9-dex2jar.jar:e/a/u3/e$b.class */
    public static final /* synthetic */ class C20588b extends j implements l<String, String> {

        /* renamed from: j */
        public static final C20588b f57693j = new C20588b();

        public C20588b() {
            super(1, s1.f0.l.class, "trim", "trim(Ljava/lang/String;)Ljava/lang/String;", 1);
        }

        /* renamed from: d */
        public Object m11008d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, "p1");
            return v.g0(str).toString();
        }
    }

    /* renamed from: e.a.u3.e$c */
    /* loaded from: classes9-dex2jar.jar:e/a/u3/e$c.class */
    public static final /* synthetic */ class C20589c extends j implements l<CharSequence, Boolean> {
        public C20589c(h hVar) {
            super(1, hVar, h.class, "matches", "matches(Ljava/lang/CharSequence;)Z", 0);
        }

        /* renamed from: d */
        public Object m11007d(Object obj) {
            CharSequence charSequence = (CharSequence) obj;
            s1.z.c.l.e(charSequence, "p1");
            return Boolean.valueOf(((h) ((b) this).b).d(charSequence));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20586e(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        s1.z.c.l.e(sharedPreferences, "sharedPreferences");
        this.f57691e = sharedPreferences;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20585d
    /* renamed from: K */
    public float mo11011K(String str, float f, AbstractC20235a abstractC20235a) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        s1.z.c.l.e(abstractC20235a, "valueProvider");
        Float g = q.g(getString(str, abstractC20235a.getString(str)));
        if (g != null) {
            f = g.floatValue();
        }
        return f;
    }

    @Override // p193e.p194a.p1272u3.AbstractC20585d
    /* renamed from: W0 */
    public int mo11010W0(String str, int i, AbstractC20235a abstractC20235a) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        s1.z.c.l.e(abstractC20235a, "valueProvider");
        Integer h = q.h(getString(str, abstractC20235a.getString(str)));
        if (h != null) {
            i = h.intValue();
        }
        return i;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f57688b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f57689c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            h.a aVar = new h.a(x.f(x.k(i.h(this.f57691e.getAll().keySet()), C20588b.f57693j), new C20589c((s1.f0.h) this.f57690d.getValue())));
            if (!aVar.hasNext()) {
                return;
            }
            SharedPreferences.Editor edit = this.f57691e.edit();
            while (aVar.hasNext()) {
                edit.remove((String) aVar.next());
            }
            edit.apply();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Override // p193e.p194a.p1272u3.AbstractC20585d
    /* renamed from: p1 */
    public long mo11009p1(String str, long j, AbstractC20235a abstractC20235a) {
        s1.z.c.l.e(str, AnalyticsConstants.KEY);
        s1.z.c.l.e(abstractC20235a, "valueProvider");
        Long j2 = q.j(getString(str, abstractC20235a.getString(str)));
        ?? r7 = j;
        if (j2 != null) {
            r7 = j2.longValue();
        }
        return r7;
    }
}
