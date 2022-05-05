package p459j.p460a.p474c0.p499h;

import com.google.firebase.perf.metrics.Trace;
import kotlin.Metadata;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018�� \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0011\u001a\u00020\u0010R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n��¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/messaging/util/SmsLogsPerformanceTracer;", "", "()V", "<set-?>", "", "isFirstSync", "()Z", "setFirstSync", "(Z)V", "timeProbe", "Lgogolook/callgogolook2/util/debug/TimeProbe;", "trace", "Lcom/google/firebase/perf/metrics/Trace;", "getDuration", "", "start", "", "stop", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.h.o0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/o0.class */
public final class C12193o0 {

    /* renamed from: d */
    public static final C12194a f27354d = new C12194a(null);

    /* renamed from: a */
    public boolean f27355a;

    /* renamed from: b */
    public Trace f27356b;

    /* renamed from: c */
    public C13930d f27357c = new C13930d();

    /* renamed from: j.a.c0.h.o0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/o0$a.class */
    public static final class C12194a {
        public C12194a() {
        }

        public /* synthetic */ C12194a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final void m6842a(int i, int i2) {
            C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
            aVar.m1808a("version", (Integer) 1);
            aVar.m1808a("action", Integer.valueOf(i));
            aVar.m1808a("duration", Integer.valueOf(i2));
            C14296p.m1830a("whoscall_sms_performance", aVar.m1811a());
        }
    }

    /* renamed from: a */
    public final long m6846a() {
        return this.f27357c.m3025a();
    }

    /* renamed from: a */
    public final void m6845a(boolean z) {
        this.f27355a = z;
        Trace a = C10062a.m13511c().m13516a(z ? "sms_log_load_first_time" : "sms_log_load");
        C15149k.m383a((Object) a, "FirebasePerformance.getI…OG_LOAD\n                )");
        this.f27356b = a;
        Trace trace = this.f27356b;
        if (trace != null) {
            trace.start();
            this.f27357c.m3018e();
            return;
        }
        C15149k.m373d("trace");
        throw null;
    }

    /* renamed from: b */
    public final boolean m6844b() {
        return this.f27355a;
    }

    /* renamed from: c */
    public final void m6843c() {
        if (this.f27357c.m3019d()) {
            Trace trace = this.f27356b;
            if (trace != null) {
                trace.stop();
                this.f27357c.m3017f();
                return;
            }
            C15149k.m373d("trace");
            throw null;
        }
    }
}
