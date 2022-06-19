package p193e.p1538j;

import android.os.Handler;
import com.facebook.GraphRequest;
import com.facebook.internal.C1172r0;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bJ\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bJ\u0006\u0010\u0014\u001a\u00020\u0011R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, d2 = {"Lcom/facebook/RequestProgress;", "", "callbackHandler", "Landroid/os/Handler;", "request", "Lcom/facebook/GraphRequest;", "(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V", "lastReportedProgress", "", "<set-?>", "maxProgress", "getMaxProgress", "()J", "progress", "getProgress", "threshold", "addProgress", "", "size", "addToMax", "reportProgress", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.u0 */
/* loaded from: classes2-dex2jar.jar:e/j/u0.class */
public final class C23264u0 {

    /* renamed from: a */
    public final Handler f64382a;

    /* renamed from: b */
    public final GraphRequest f64383b;

    /* renamed from: c */
    public final long f64384c = C23228f0.f64298h.get();

    /* renamed from: d */
    public long f64385d;

    /* renamed from: e */
    public long f64386e;

    /* renamed from: f */
    public long f64387f;

    public C23264u0(Handler handler, GraphRequest graphRequest) {
        l.e(graphRequest, "request");
        this.f64382a = handler;
        this.f64383b = graphRequest;
        C23228f0 c23228f0 = C23228f0.f64291a;
        C1172r0 c1172r0 = C1172r0.f3203a;
        C1172r0.m41649f();
    }

    /* renamed from: a */
    public final void m7317a() {
        final long j = this.f64385d;
        if (j > this.f64386e) {
            final GraphRequest.AbstractC0922b abstractC0922b = this.f64383b.f2555h;
            final long j2 = this.f64387f;
            if (j2 <= 0 || !(abstractC0922b instanceof GraphRequest.AbstractC0926f)) {
                return;
            }
            Handler handler = this.f64382a;
            if ((handler == null ? null : Boolean.valueOf(handler.post(new Runnable() { // from class: e.j.s
                @Override // java.lang.Runnable
                public final void run() {
                    ((GraphRequest.AbstractC0926f) GraphRequest.AbstractC0922b.this).m41990b(j, j2);
                }
            }))) == null) {
                ((GraphRequest.AbstractC0926f) abstractC0922b).m41990b(j, j2);
            }
            this.f64386e = this.f64385d;
        }
    }
}
