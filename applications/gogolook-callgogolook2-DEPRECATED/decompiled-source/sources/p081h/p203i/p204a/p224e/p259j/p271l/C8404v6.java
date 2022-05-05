package p081h.p203i.p204a.p224e.p259j.p271l;

import android.content.Context;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.core.p005os.ConfigurationCompat;
import androidx.core.p005os.LocaleListCompat;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p271l.C8434x1;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.p336m.AbstractC9483e;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
/* renamed from: h.i.a.e.j.l.v6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v6.class */
public final class C8404v6 {

    /* renamed from: j */
    public static final C6999k f19346j = new C6999k("MlStatsLogger", "");
    @Nullable

    /* renamed from: k */
    public static List<String> f19347k;

    /* renamed from: l */
    public static final C9480d<?> f19348l;

    /* renamed from: a */
    public final String f19349a;

    /* renamed from: b */
    public final String f19350b;

    /* renamed from: c */
    public final String f19351c;

    /* renamed from: d */
    public final String f19352d;

    /* renamed from: e */
    public final String f19353e;

    /* renamed from: f */
    public final AbstractC8406b f19354f;

    /* renamed from: g */
    public final C8125g7 f19355g;

    /* renamed from: h */
    public final AbstractC9143h<String> f19356h;

    /* renamed from: i */
    public final int f19357i;

    /* renamed from: h.i.a.e.j.l.v6$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v6$a.class */
    public static class C8405a extends AbstractC8225l6<Integer, C8404v6> {

        /* renamed from: b */
        public final C8386u6 f19358b;

        /* renamed from: c */
        public final Context f19359c;

        /* renamed from: d */
        public final C8125g7 f19360d;

        /* renamed from: e */
        public final AbstractC8406b f19361e;

        public C8405a(C8386u6 u6Var, Context context, C8125g7 g7Var, AbstractC8406b bVar) {
            this.f19358b = u6Var;
            this.f19359c = context;
            this.f19360d = g7Var;
            this.f19361e = bVar;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8225l6
        /* renamed from: a */
        public final /* synthetic */ C8404v6 mo18119a(Integer num) {
            return new C8404v6(this.f19358b, this.f19359c, this.f19360d, this.f19361e, num.intValue());
        }
    }

    /* renamed from: h.i.a.e.j.l.v6$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/v6$b.class */
    public interface AbstractC8406b {
        /* renamed from: a */
        void mo18118a(C8434x1 x1Var);
    }

    static {
        C9480d.C9482b a = C9480d.m15099a(C8405a.class);
        a.m15082a(C9498n.m15046c(C8386u6.class));
        a.m15082a(C9498n.m15046c(Context.class));
        a.m15082a(C9498n.m15046c(C8125g7.class));
        a.m15082a(C9498n.m15046c(AbstractC8406b.class));
        a.m15083a(C8463y6.f19443a);
        f19348l = a.m15080b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006e, code lost:
        if (r0 == null) goto L_0x0057;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0040, code lost:
        if (r0 == null) goto L_0x0029;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8404v6(p081h.p203i.p204a.p224e.p259j.p271l.C8386u6 r5, android.content.Context r6, p081h.p203i.p204a.p224e.p259j.p271l.C8125g7 r7, p081h.p203i.p204a.p224e.p259j.p271l.C8404v6.AbstractC8406b r8, int r9) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.C8404v6.<init>(h.i.a.e.j.l.u6, android.content.Context, h.i.a.e.j.l.g7, h.i.a.e.j.l.v6$b, int):void");
    }

    /* renamed from: a */
    public static final /* synthetic */ C8405a m18123a(AbstractC9483e eVar) {
        return new C8405a((C8386u6) eVar.mo15033a(C8386u6.class), (Context) eVar.mo15033a(Context.class), (C8125g7) eVar.mo15033a(C8125g7.class), (AbstractC8406b) eVar.mo15033a(AbstractC8406b.class));
    }

    /* renamed from: a */
    public static C8404v6 m18125a(@NonNull C8386u6 u6Var, int i) {
        C7021t.m21290a(u6Var);
        return ((C8405a) u6Var.m18150a(C8405a.class)).m18363b(Integer.valueOf(i));
    }

    @NonNull
    /* renamed from: b */
    public static List<String> m18122b() {
        synchronized (C8404v6.class) {
            try {
                if (f19347k != null) {
                    return f19347k;
                }
                LocaleListCompat locales = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration());
                f19347k = new ArrayList(locales.size());
                for (int i = 0; i < locales.size(); i++) {
                    f19347k.add(C8246m6.m18279a(locales.get(i)));
                }
                return f19347k;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m18124a(@NonNull final C8434x1.C8435a aVar, @NonNull final EnumC8297p4 p4Var) {
        C8299p6.m18211b().execute(new Runnable(this, aVar, p4Var) { // from class: h.i.a.e.j.l.z6

            /* renamed from: a */
            public final C8404v6 f19500a;

            /* renamed from: b */
            public final C8434x1.C8435a f19501b;

            /* renamed from: c */
            public final EnumC8297p4 f19502c;

            {
                this.f19500a = this;
                this.f19501b = aVar;
                this.f19502c = p4Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f19500a.m18121b(this.f19501b, this.f19502c);
            }
        });
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m18126a() {
        int i = this.f19357i;
        return i != 1 ? i != 2 ? i == 3 || i == 4 || i == 5 : this.f19355g.m18508c() : this.f19355g.m18511b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
        if ("".equals(r0) != false) goto L_0x0031;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void m18121b(p081h.p203i.p204a.p224e.p259j.p271l.C8434x1.C8435a r6, p081h.p203i.p204a.p224e.p259j.p271l.EnumC8297p4 r7) {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.m18126a()
            if (r0 != 0) goto L_0x0013
            h.i.a.e.d.n.k r0 = p081h.p203i.p204a.p224e.p259j.p271l.C8404v6.f19346j
            java.lang.String r1 = "MlStatsLogger"
            java.lang.String r2 = "Logging is disabled."
            r0.m21339a(r1, r2)
            return
        L_0x0013:
            r0 = r6
            h.i.a.e.j.l.c3 r0 = r0.m18085i()
            java.lang.String r0 = r0.m18652k()
            r8 = r0
            java.lang.String r0 = "NA"
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0031
            r0 = r8
            r9 = r0
            java.lang.String r0 = ""
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0036
        L_0x0031:
            java.lang.String r0 = "NA"
            r9 = r0
        L_0x0036:
            h.i.a.e.j.l.c3$a r0 = p081h.p203i.p204a.p224e.p259j.p271l.C8043c3.m18651l()
            r8 = r0
            r0 = r8
            r1 = r5
            java.lang.String r1 = r1.f19349a
            h.i.a.e.j.l.c3$a r0 = r0.m18647a(r1)
            r0 = r8
            r1 = r5
            java.lang.String r1 = r1.f19350b
            h.i.a.e.j.l.c3$a r0 = r0.m18646b(r1)
            r0 = r8
            r1 = r5
            java.lang.String r1 = r1.f19351c
            h.i.a.e.j.l.c3$a r0 = r0.m18645c(r1)
            r0 = r8
            r1 = r5
            java.lang.String r1 = r1.f19352d
            h.i.a.e.j.l.c3$a r0 = r0.m18642f(r1)
            r0 = r8
            r1 = r5
            java.lang.String r1 = r1.f19353e
            h.i.a.e.j.l.c3$a r0 = r0.m18641g(r1)
            r0 = r8
            r1 = r9
            h.i.a.e.j.l.c3$a r0 = r0.m18643e(r1)
            r0 = r8
            java.util.List r1 = m18122b()
            h.i.a.e.j.l.c3$a r0 = r0.m18648a(r1)
            r0 = r5
            h.i.a.e.r.h<java.lang.String> r0 = r0.f19356h
            boolean r0 = r0.mo16009e()
            if (r0 == 0) goto L_0x008f
            r0 = r5
            h.i.a.e.r.h<java.lang.String> r0 = r0.f19356h
            java.lang.Object r0 = r0.mo16014b()
            java.lang.String r0 = (java.lang.String) r0
            r9 = r0
            goto L_0x0099
        L_0x008f:
            h.i.a.e.j.l.n6 r0 = p081h.p203i.p204a.p224e.p259j.p271l.C8261n6.m18258a()
            java.lang.String r1 = "firebase-ml-common"
            java.lang.String r0 = r0.m18257a(r1)
            r9 = r0
        L_0x0099:
            r0 = r8
            r1 = r9
            h.i.a.e.j.l.c3$a r0 = r0.m18644d(r1)
            r0 = r6
            r1 = r7
            h.i.a.e.j.l.x1$a r0 = r0.m18086a(r1)
            r0 = r6
            r1 = r8
            h.i.a.e.j.l.x1$a r0 = r0.m18088a(r1)
            r0 = r6
            h.i.a.e.j.l.ua r0 = r0.m18346h()
            h.i.a.e.j.l.x1 r0 = (p081h.p203i.p204a.p224e.p259j.p271l.C8434x1) r0
            r6 = r0
            r0 = r5
            h.i.a.e.j.l.v6$b r0 = r0.f19354f     // Catch: RuntimeException -> 0x00bf
            r1 = r6
            r0.mo18118a(r1)     // Catch: RuntimeException -> 0x00bf
            return
        L_0x00bf:
            r6 = move-exception
            h.i.a.e.d.n.k r0 = p081h.p203i.p204a.p224e.p259j.p271l.C8404v6.f19346j
            java.lang.String r1 = "MlStatsLogger"
            java.lang.String r2 = "Exception thrown from the logging side"
            r3 = r6
            r0.m21338a(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.C8404v6.m18121b(h.i.a.e.j.l.x1$a, h.i.a.e.j.l.p4):void");
    }
}
