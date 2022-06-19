package p193e.p194a.p1129p5;

import com.google.firebase.perf.metrics.Trace;
import com.razorpay.AnalyticsConstants;
import e.m.d.z.c;
import java.util.Objects;
import s1.a.a.a.v0.f.d;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.p5.k */
/* loaded from: classes15-dex2jar.jar:e/a/p5/k.class */
public final class C19238k implements AbstractC19247m0 {

    /* renamed from: e.a.p5.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/k$a.class */
    public static final class C19239a implements AbstractC19244l0 {

        /* renamed from: a */
        public final Trace f53606a;

        public C19239a(Trace trace) {
            l.e(trace, "trace");
            this.f53606a = trace;
        }

        @Override // p193e.p194a.p1129p5.AbstractC19244l0
        /* renamed from: a */
        public void mo13753a(String str, int i) {
            l.e(str, "counter");
            this.f53606a.incrementMetric(str, i);
        }

        @Override // p193e.p194a.p1129p5.AbstractC19244l0
        /* renamed from: b */
        public void mo13752b(String str, String str2) {
            l.e(str, AnalyticsConstants.NAME);
            l.e(str2, "value");
            this.f53606a.putAttribute(str, str2);
        }

        @Override // p193e.p194a.p1129p5.AbstractC19244l0
        public void start() {
            this.f53606a.start();
        }

        @Override // p193e.p194a.p1129p5.AbstractC19244l0
        public void stop() {
            this.f53606a.stop();
        }
    }

    @Override // p193e.p194a.p1129p5.AbstractC19247m0
    /* renamed from: a */
    public AbstractC19244l0 mo13749a(String str) {
        CharSequence charSequence;
        String str2;
        l.e(str, AnalyticsConstants.NAME);
        l.e(str, "str");
        String obj = v.h0(str).toString();
        int length = obj.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                charSequence = "";
                break;
            }
            char charAt = obj.charAt(i);
            if (!(d.t2(charAt) || charAt == '_')) {
                charSequence = obj.subSequence(i, obj.length());
                break;
            }
            i++;
        }
        String obj2 = charSequence.toString();
        if (str.length() <= 100) {
            str2 = obj2;
        } else {
            Objects.requireNonNull(obj2, "null cannot be cast to non-null type java.lang.String");
            str2 = obj2.substring(0, 99);
            l.d(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        Trace a = c.a(str2);
        l.d(a, "FirebasePerformance.startTrace(traceNameOf(name))");
        return new C19239a(a);
    }
}
