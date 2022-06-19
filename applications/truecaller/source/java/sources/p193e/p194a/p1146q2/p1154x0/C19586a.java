package p193e.p194a.p1146q2.p1154x0;

import com.truecaller.analytics.call.CallDirection;
import com.truecaller.settings.CallingSettings;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19093r;
import p193e.p194a.p1114o5.AbstractC19128x1;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19562a;
import p193e.p194a.p1272u3.C20592g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.q2.x0.a */
/* loaded from: classes5-dex2jar.jar:e/a/q2/x0/a.class */
public final class C19586a implements AbstractC19562a {

    /* renamed from: a */
    public final f f54431a;

    /* renamed from: b */
    public final C20592g f54432b;

    /* renamed from: c */
    public final CallingSettings f54433c;

    /* renamed from: d */
    public final AbstractC19022f0 f54434d;

    /* renamed from: e */
    public final AbstractC19128x1 f54435e;

    /* renamed from: f */
    public final AbstractC19093r f54436f;

    /* renamed from: g */
    public final C19595f f54437g;

    @e(c = "com.truecaller.analytics.callanalytics.CallAnalyticsACSHelperImpl$shouldShowAcs$2", f = "CallAnalyticsACSHelperImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.q2.x0.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/x0/a$a.class */
    public static final class C19587a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f54439f;

        /* renamed from: g */
        public final /* synthetic */ CallDirection f54440g;

        /* renamed from: h */
        public final /* synthetic */ boolean f54441h;

        /* renamed from: i */
        public final /* synthetic */ boolean f54442i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19587a(String str, CallDirection callDirection, boolean z, boolean z2, d dVar) {
            super(2, dVar);
            C19586a.this = r5;
            this.f54439f = str;
            this.f54440g = callDirection;
            this.f54441h = z;
            this.f54442i = z2;
        }

        /* renamed from: i */
        public final d<s> m13136i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19587a(this.f54439f, this.f54440g, this.f54441h, this.f54442i, dVar);
        }

        /* renamed from: k */
        public final Object m13135k(Object obj, Object obj2) {
            return m13136i(obj, (d) obj2).m13134s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:51:0x012e, code lost:
            if (r0.f10453b != com.truecaller.blocking.FilterAction.FILTER_BLACKLISTED) goto L53;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m13134s(java.lang.Object r4) {
            /*
                Method dump skipped, instructions count: 317
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.p1154x0.C19586a.C19587a.m13134s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C19586a(@Named("IO") f fVar, C20592g c20592g, CallingSettings callingSettings, AbstractC19022f0 abstractC19022f0, AbstractC19128x1 abstractC19128x1, AbstractC19093r abstractC19093r, C19595f c19595f) {
        l.e(fVar, "asyncContext");
        l.e(c20592g, "featuresRegistry");
        l.e(callingSettings, "callingSettings");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19128x1, "usageChecker");
        l.e(abstractC19093r, "contactManagerSync");
        l.e(c19595f, "callAnalyticsUtil");
        this.f54431a = fVar;
        this.f54432b = c20592g;
        this.f54433c = callingSettings;
        this.f54434d = abstractC19022f0;
        this.f54435e = abstractC19128x1;
        this.f54436f = abstractC19093r;
        this.f54437g = c19595f;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19562a
    /* renamed from: a */
    public Object mo13137a(String str, CallDirection callDirection, boolean z, boolean z2, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f54431a, new C19587a(str, callDirection, z, z2, null), dVar);
    }
}
