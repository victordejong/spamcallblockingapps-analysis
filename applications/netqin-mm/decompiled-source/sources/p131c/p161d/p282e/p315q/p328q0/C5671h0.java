package p131c.p161d.p282e.p315q.p328q0;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import p131c.p161d.p282e.p315q.p328q0.p332t3.AbstractC5814a;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5872m;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6251a;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p542a0.AbstractC9644g;
/* renamed from: c.d.e.q.q0.h0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/h0.class */
public class C5671h0 implements FirebaseInAppMessagingDisplayCallbacks {

    /* renamed from: j */
    public static boolean f18760j;

    /* renamed from: a */
    public final C5825w0 f18761a;

    /* renamed from: b */
    public final AbstractC5814a f18762b;

    /* renamed from: c */
    public final C5705n3 f18763c;

    /* renamed from: d */
    public final C5695l3 f18764d;

    /* renamed from: e */
    public final AbstractC5872m f18765e;

    /* renamed from: f */
    public final C5719q2 f18766f;

    /* renamed from: g */
    public final C5701n f18767g;

    /* renamed from: h */
    public final AbstractC5863i f18768h;

    /* renamed from: i */
    public final String f18769i;

    @VisibleForTesting
    public C5671h0(C5825w0 w0Var, AbstractC5814a aVar, C5705n3 n3Var, C5695l3 l3Var, C5686k kVar, AbstractC5872m mVar, C5719q2 q2Var, C5701n nVar, AbstractC5863i iVar, String str) {
        this.f18761a = w0Var;
        this.f18762b = aVar;
        this.f18763c = n3Var;
        this.f18764d = l3Var;
        this.f18765e = mVar;
        this.f18766f = q2Var;
        this.f18767g = nVar;
        this.f18768h = iVar;
        this.f18769i = str;
        f18760j = false;
    }

    /* renamed from: a */
    public static <T> Task<T> m23308a(AbstractC9833i<T> iVar, AbstractC9845s sVar) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        taskCompletionSource.getClass();
        iVar.m1891b((AbstractC9644g) C5820v.m22967a(taskCompletionSource)).m1889b((AbstractC9838m) AbstractC9833i.m1893a(CallableC5824w.m22963a(taskCompletionSource))).m1881e(C5828x.m22946a(taskCompletionSource)).m1888b(sVar).m1892b();
        return taskCompletionSource.m8600a();
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9838m m23310a(TaskCompletionSource taskCompletionSource, Throwable th) throws Exception {
        if (th instanceof Exception) {
            taskCompletionSource.m8599a((Exception) th);
        } else {
            taskCompletionSource.m8599a((Exception) new RuntimeException(th));
        }
        return AbstractC9833i.m1880f();
    }

    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks
    /* renamed from: a */
    public Task<Void> mo7322a() {
        if (!m23301c() || f18760j) {
            m23307a("message impression to metrics logger");
            return new TaskCompletionSource().m8600a();
        }
        C5694l2.m23216a("Attempting to record: message impression to metrics logger");
        return m23308a(m23304b().m2113a(AbstractC9637a.m2108b(C5832y.m22942a(this))).m2113a(m23300d()).m2104d(), this.f18763c.m23180a());
    }

    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks
    /* renamed from: a */
    public Task<Void> mo7321a(C5842a aVar) {
        if (m23301c()) {
            return aVar.m22914a() == null ? mo7320a(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType.CLICK) : m23303b(aVar);
        }
        m23307a("message click to metrics logger");
        return new TaskCompletionSource().m8600a();
    }

    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks
    /* renamed from: a */
    public Task<Void> mo7320a(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType inAppMessagingDismissType) {
        if (m23301c()) {
            C5694l2.m23216a("Attempting to record: message dismissal to metrics logger");
            return m23309a(AbstractC9637a.m2108b(C5633a0.m23366a(this, inAppMessagingDismissType)));
        }
        m23307a("message dismissal to metrics logger");
        return new TaskCompletionSource().m8600a();
    }

    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks
    /* renamed from: a */
    public Task<Void> mo7319a(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        if (m23301c()) {
            C5694l2.m23216a("Attempting to record: render error to metrics logger");
            return m23308a(m23304b().m2113a(AbstractC9637a.m2108b(C5646c0.m23343a(this, inAppMessagingErrorReason))).m2113a(m23300d()).m2104d(), this.f18763c.m23180a());
        }
        m23307a("render error to metrics logger");
        return new TaskCompletionSource().m8600a();
    }

    /* renamed from: a */
    public final Task<Void> m23309a(AbstractC9637a aVar) {
        if (!f18760j) {
            mo7322a();
        }
        return m23308a(aVar.m2104d(), this.f18763c.m23180a());
    }

    /* renamed from: a */
    public final void m23307a(String str) {
        m23306a(str, (AbstractC9833i<String>) null);
    }

    /* renamed from: a */
    public final void m23306a(String str, AbstractC9833i<String> iVar) {
        if (iVar != null) {
            C5694l2.m23216a(String.format("Not recording: %s. Reason: %s", str, iVar));
        } else if (this.f18768h.m22863a().m22889c()) {
            C5694l2.m23216a(String.format("Not recording: %s. Reason: Message is test message", str));
        } else if (!this.f18767g.m23187a()) {
            C5694l2.m23216a(String.format("Not recording: %s. Reason: Data collection is disabled", str));
        } else {
            C5694l2.m23216a(String.format("Not recording: %s", str));
        }
    }

    /* renamed from: b */
    public final Task<Void> m23303b(C5842a aVar) {
        C5694l2.m23216a("Attempting to record: message click to metrics logger");
        return m23309a(AbstractC9637a.m2108b(C5640b0.m23351a(this, aVar)));
    }

    /* renamed from: b */
    public final AbstractC9637a m23304b() {
        String a = this.f18768h.m22863a().m22891a();
        C5694l2.m23216a("Attempting to record message impression in impression store for id: " + a);
        C5825w0 w0Var = this.f18761a;
        C6251a.C6253b x = C6251a.m21748x();
        x.m21747a(this.f18762b.mo22976a());
        x.m21746a(a);
        AbstractC9637a a2 = w0Var.m22957a(x.mo6937a()).m2117a(C5651d0.m23334a()).m2118a(C5656e0.m23330a());
        AbstractC9637a aVar = a2;
        if (C5678i2.m23255b(this.f18769i)) {
            aVar = this.f18764d.m23203a(this.f18765e).m2117a(C5661f0.m23325a()).m2118a(C5666g0.m23320a()).m2109b().m2113a(a2);
        }
        return aVar;
    }

    /* renamed from: c */
    public final boolean m23301c() {
        return this.f18767g.m23187a();
    }

    /* renamed from: d */
    public final AbstractC9637a m23300d() {
        return AbstractC9637a.m2108b(C5837z.m22924a());
    }
}
