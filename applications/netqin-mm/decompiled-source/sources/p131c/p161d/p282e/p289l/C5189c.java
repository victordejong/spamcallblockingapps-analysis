package p131c.p161d.p282e.p289l;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.C5197e;
import p131c.p161d.p282e.p289l.p290d.p293h.C5269l;
import p131c.p161d.p282e.p289l.p290d.p304p.C5429c;
/* renamed from: c.d.e.l.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/c.class */
public class C5189c {

    /* renamed from: c.d.e.l.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/c$a.class */
    public class CallableC5190a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ C5197e f17849a;

        /* renamed from: b */
        public final /* synthetic */ ExecutorService f17850b;

        /* renamed from: c */
        public final /* synthetic */ C5429c f17851c;

        /* renamed from: d */
        public final /* synthetic */ boolean f17852d;

        /* renamed from: e */
        public final /* synthetic */ C5269l f17853e;

        public CallableC5190a(C5197e eVar, ExecutorService executorService, C5429c cVar, boolean z, C5269l lVar) {
            this.f17849a = eVar;
            this.f17850b = executorService;
            this.f17851c = cVar;
            this.f17852d = z;
            this.f17853e = lVar;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            this.f17849a.m24289a(this.f17850b, this.f17851c);
            if (!this.f17852d) {
                return null;
            }
            this.f17853e.m24112b(this.f17851c);
            return null;
        }
    }

    public C5189c(C5269l lVar) {
    }

    /* renamed from: a */
    public static AbstractC5143a.AbstractC5144a m24320a(AbstractC5143a aVar, C5187a aVar2) {
        AbstractC5143a.AbstractC5144a a = aVar.mo23141a("clx", aVar2);
        AbstractC5143a.AbstractC5144a aVar3 = a;
        if (a == null) {
            C5192b.m24319a().m24317a("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            AbstractC5143a.AbstractC5144a a2 = aVar.mo23141a("crash", aVar2);
            aVar3 = a2;
            if (a2 != null) {
                C5192b.m24319a().m24311d("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
                aVar3 = a2;
            }
        }
        return aVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [c.d.e.l.a] */
    /* JADX WARN: Type inference failed for: r12v4, types: [c.d.e.l.d.f.e] */
    /* JADX WARN: Type inference failed for: r12v5, types: [c.d.e.l.d.f.b, c.d.e.l.d.f.c] */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p131c.p161d.p282e.p289l.C5189c m24321a(p131c.p161d.p282e.C5128c r10, p131c.p161d.p282e.p335s.AbstractC5898g r11, p131c.p161d.p282e.p289l.p290d.AbstractC5191a r12, p131c.p161d.p282e.p285j.p286a.AbstractC5143a r13) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p282e.p289l.C5189c.m24321a(c.d.e.c, c.d.e.s.g, c.d.e.l.d.a, c.d.e.j.a.a):c.d.e.l.c");
    }
}
