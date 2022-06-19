package p193e.p194a.p1080o.p1097b;

import com.amazon.device.ads.DTBMetricsConfiguration;
import javax.inject.Inject;
import javax.inject.Named;
import q3.a.i0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.o.b.b0 */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/b0.class */
public final class C18701b0 implements AbstractC18764z, i0 {

    /* renamed from: a */
    public final AbstractC18756v f52564a;

    /* renamed from: b */
    public final f f52565b;

    /* renamed from: c */
    public final AbstractC18705d f52566c;

    /* renamed from: d */
    public final AbstractC18732i0 f52567d;

    @Inject
    public C18701b0(AbstractC18756v abstractC18756v, @Named("UI") f fVar, AbstractC18705d abstractC18705d, AbstractC18732i0 abstractC18732i0) {
        l.e(abstractC18756v, "incomingCallContextRepository");
        l.e(fVar, "coroutineContext");
        l.e(abstractC18705d, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC18732i0, "midCallReasonNotificationStateHolder");
        this.f52564a = abstractC18756v;
        this.f52565b = fVar;
        this.f52566c = abstractC18705d;
        this.f52567d = abstractC18732i0;
    }

    public f getCoroutineContext() {
        return this.f52565b;
    }
}
