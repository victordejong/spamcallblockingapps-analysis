package p193e.p194a.p195a.p257l;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.data.entity.messaging.Participant;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p712e4.AbstractC13497p;
import q3.a.i0;
import s1.o;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.a.l.e */
/* loaded from: classes10-dex2jar.jar:e/a/a/l/e.class */
public final class C6768e {

    /* renamed from: a */
    public final Provider<AbstractC8621z> f22278a;

    /* renamed from: b */
    public final Provider<AbstractC5854d> f22279b;

    /* renamed from: c */
    public final Provider<AbstractC13497p> f22280c;

    /* renamed from: d */
    public final Provider<AbstractC6248w> f22281d;

    /* renamed from: e */
    public final f f22282e;

    /* renamed from: f */
    public final Provider<AbstractC6708t> f22283f;

    /* renamed from: g */
    public final AbstractC19462a f22284g;

    /* renamed from: h */
    public final Provider<AbstractC6254b> f22285h;

    @e(c = "com.truecaller.messaging.acsreply.AcsReplyManager$sendMessage$2", f = "AcsReplyManager.kt", l = {52, 55}, m = "invokeSuspend")
    /* renamed from: e.a.a.l.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/a/l/e$a.class */
    public static final class C6769a extends i implements p<i0, d<? super o<? extends Long, ? extends Long, ? extends Boolean>>, Object> {

        /* renamed from: e */
        public Object f22286e;

        /* renamed from: f */
        public int f22287f;

        /* renamed from: g */
        public int f22288g;

        /* renamed from: i */
        public final /* synthetic */ c0 f22290i;

        /* renamed from: j */
        public final /* synthetic */ int f22291j;

        /* renamed from: k */
        public final /* synthetic */ String f22292k;

        /* renamed from: l */
        public final /* synthetic */ String f22293l;

        /* renamed from: m */
        public final /* synthetic */ Integer f22294m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6769a(c0 c0Var, int i, String str, String str2, Integer num, d dVar) {
            super(2, dVar);
            C6768e.this = r5;
            this.f22290i = c0Var;
            this.f22291j = i;
            this.f22292k = str;
            this.f22293l = str2;
            this.f22294m = num;
        }

        /* renamed from: i */
        public final d<s> m30448i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6769a(this.f22290i, this.f22291j, this.f22292k, this.f22293l, this.f22294m, dVar);
        }

        /* renamed from: k */
        public final Object m30447k(Object obj, Object obj2) {
            return m30448i(obj, (d) obj2).m30446s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0155, code lost:
            if (r10 != null) goto L36;
         */
        /* JADX WARN: Removed duplicated region for block: B:29:0x013a  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x018b  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0191  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x01ca  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0223  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m30446s(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 560
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p257l.C6768e.C6769a.m30446s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.acsreply.AcsReplyManager", f = "AcsReplyManager.kt", l = {98}, m = "trackReplyFromAcs")
    /* renamed from: e.a.a.l.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/a/l/e$b.class */
    public static final class C6770b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f22295d;

        /* renamed from: e */
        public int f22296e;

        /* renamed from: g */
        public Object f22298g;

        /* renamed from: h */
        public Object f22299h;

        /* renamed from: i */
        public Object f22300i;

        /* renamed from: j */
        public Object f22301j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6770b(d dVar) {
            super(dVar);
            C6768e.this = r4;
        }

        /* renamed from: s */
        public final Object m30445s(Object obj) {
            this.f22295d = obj;
            this.f22296e |= Integer.MIN_VALUE;
            return C6768e.this.m30449b(null, 0, null, null, this);
        }
    }

    @Inject
    public C6768e(Provider<AbstractC8621z> provider, Provider<AbstractC5854d> provider2, Provider<AbstractC13497p> provider3, Provider<AbstractC6248w> provider4, @Named("IO") f fVar, Provider<AbstractC6708t> provider5, AbstractC19462a abstractC19462a, Provider<AbstractC6254b> provider6) {
        l.e(provider, "phoneNumberHelper");
        l.e(provider2, "draftSender");
        l.e(provider3, "multiSimManager");
        l.e(provider4, "readMessageStorage");
        l.e(fVar, "asyncContext");
        l.e(provider5, "transportManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(provider6, "translator");
        this.f22278a = provider;
        this.f22279b = provider2;
        this.f22280c = provider3;
        this.f22281d = provider4;
        this.f22282e = fVar;
        this.f22283f = provider5;
        this.f22284g = abstractC19462a;
        this.f22285h = provider6;
    }

    /* renamed from: a */
    public final Object m30450a(String str, String str2, int i, String str3, Integer num, d<? super o<Long, Long, Boolean>> dVar) {
        c0 c0Var = new c0();
        Participant m35458a = Participant.m35458a(str2, (AbstractC8621z) this.f22278a.get(), ((AbstractC8621z) this.f22278a.get()).mo28189b());
        l.d(m35458a, "Participant.buildFromAdd…t().getDefaultSimToken())");
        c0Var.a = m35458a;
        return s1.a.a.a.v0.f.d.a4(this.f22282e, new C6769a(c0Var, i, str, str3, num, null), dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cd, code lost:
        if (r18 != null) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0091  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m30449b(java.lang.String r15, int r16, java.lang.String r17, java.lang.Integer r18, s1.w.d<? super s1.s> r19) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p257l.C6768e.m30449b(java.lang.String, int, java.lang.String, java.lang.Integer, s1.w.d):java.lang.Object");
    }
}
