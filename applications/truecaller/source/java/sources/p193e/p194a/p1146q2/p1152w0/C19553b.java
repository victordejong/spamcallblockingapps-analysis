package p193e.p194a.p1146q2.p1152w0;

import android.os.Build;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19562a;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19563b;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19565d;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19566e;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19569h;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19571j;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19572k;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19577n;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p717f.p733y.C13794x;
import q3.a.i0;
import q3.a.j0;
import s1.g;
import s1.i;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.q2.w0.b */
/* loaded from: classes5-dex2jar.jar:e/a/q2/w0/b.class */
public final class C19553b implements AbstractC19552a, i0 {

    /* renamed from: a */
    public boolean f54339a;

    /* renamed from: b */
    public final g f54340b = C25225a.m3978P1(C19555b.f54355b);

    /* renamed from: c */
    public final f f54341c;

    /* renamed from: d */
    public final f f54342d;

    /* renamed from: e */
    public final a<AbstractC19854f<AbstractC19463a0>> f54343e;

    /* renamed from: f */
    public final a<AbstractC19566e> f54344f;

    /* renamed from: g */
    public final a<AbstractC13706b> f54345g;

    /* renamed from: h */
    public final a<AbstractC19572k> f54346h;

    /* renamed from: i */
    public final AbstractC19569h f54347i;

    /* renamed from: j */
    public final a<AbstractC19562a> f54348j;

    /* renamed from: k */
    public final a<AbstractC19563b> f54349k;

    /* renamed from: l */
    public final a<AbstractC19565d> f54350l;

    @e(c = "com.truecaller.analytics.call.CallAnalyticsImpl", f = "CallAnalytics.kt", l = {189}, m = "afterCallScreenToLog")
    /* renamed from: e.a.q2.w0.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/w0/b$a.class */
    public static final class C19554a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f54351d;

        /* renamed from: e */
        public int f54352e;

        /* renamed from: g */
        public Object f54354g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19554a(d dVar) {
            super(dVar);
            C19553b.this = r4;
        }

        /* renamed from: s */
        public final Object m13169s(Object obj) {
            this.f54351d = obj;
            this.f54352e |= Integer.MIN_VALUE;
            return C19553b.this.m13170e(null, null, null, null, this);
        }
    }

    /* renamed from: e.a.q2.w0.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/w0/b$b.class */
    public static final class C19555b extends m implements s1.z.b.a<ConcurrentHashMap<C13794x, AbstractC19571j>> {

        /* renamed from: b */
        public static final C19555b f54355b = new C19555b();

        public C19555b() {
            super(0);
        }

        public Object invoke() {
            return new ConcurrentHashMap(2);
        }
    }

    @Inject
    public C19553b(@Named("IO") f fVar, @Named("UI") f fVar2, a<AbstractC19854f<AbstractC19463a0>> aVar, a<AbstractC19566e> aVar2, a<AbstractC13706b> aVar3, a<AbstractC19572k> aVar4, AbstractC19569h abstractC19569h, a<AbstractC19562a> aVar5, a<AbstractC19563b> aVar6, a<AbstractC19565d> aVar7) {
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(aVar, "eventsTracker");
        l.e(aVar2, "numberNormalizer");
        l.e(aVar3, "inCallUI");
        l.e(aVar4, "callListenerFactory");
        l.e(abstractC19569h, "initPointProvider");
        l.e(aVar5, "acsHelper");
        l.e(aVar6, "contactHelper");
        l.e(aVar7, "contextCallHelper");
        this.f54341c = fVar;
        this.f54342d = fVar2;
        this.f54343e = aVar;
        this.f54344f = aVar2;
        this.f54345g = aVar3;
        this.f54346h = aVar4;
        this.f54347i = abstractC19569h;
        this.f54348j = aVar5;
        this.f54349k = aVar6;
        this.f54350l = aVar7;
    }

    /* renamed from: c */
    public static final String m13172c(C19553b c19553b, AbstractC19577n abstractC19577n) {
        String str;
        Objects.requireNonNull(c19553b);
        if (abstractC19577n instanceof AbstractC19577n.C19579b) {
            str = ((AbstractC19577n.C19579b) abstractC19577n).f54424b;
        } else if (!(abstractC19577n instanceof AbstractC19577n.C19578a)) {
            throw new i();
        } else {
            str = "unknown";
        }
        return str;
    }

    /* renamed from: d */
    public static final ConcurrentHashMap m13171d(C19553b c19553b) {
        return (ConcurrentHashMap) c19553b.f54340b.getValue();
    }

    @Override // p193e.p194a.p1146q2.p1152w0.AbstractC19552a
    /* renamed from: a */
    public void mo13174a() {
        if (Build.VERSION.SDK_INT < 24 || this.f54339a) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C19556c(this, ((AbstractC13706b) this.f54345g.get()).mo21253p(), null), 3, (Object) null);
        this.f54339a = true;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.AbstractC19552a
    /* renamed from: b */
    public void mo13173b(String str, String str2) {
        l.e(str2, "initPoint");
        this.f54347i.mo13155a(str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ec  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m13170e(java.lang.String r8, com.truecaller.analytics.call.CallDirection r9, com.truecaller.analytics.call.CallAnswered r10, java.lang.String r11, s1.w.d<? super java.lang.String> r12) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.p1152w0.C19553b.m13170e(java.lang.String, com.truecaller.analytics.call.CallDirection, com.truecaller.analytics.call.CallAnswered, java.lang.String, s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f54341c;
    }
}
