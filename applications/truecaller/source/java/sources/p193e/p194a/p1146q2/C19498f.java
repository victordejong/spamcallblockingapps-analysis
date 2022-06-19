package p193e.p194a.p1146q2;

import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import org.apache.avro.generic.GenericRecord;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19580x;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.z.c.l;
/* renamed from: e.a.q2.f */
/* loaded from: classes4-dex2jar.jar:e/a/q2/f.class */
public final class C19498f implements AbstractC19462a {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC19463a0> f54111a;

    /* renamed from: b */
    public final AbstractC19494d f54112b;

    /* renamed from: c */
    public final AbstractC19230g f54113c;

    @Inject
    public C19498f(AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC19494d abstractC19494d, AbstractC19230g abstractC19230g) {
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC19494d, "firebaseAnalyticsWrapper");
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f54111a = abstractC19854f;
        this.f54112b = abstractC19494d;
        this.f54113c = abstractC19230g;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19462a
    /* renamed from: a */
    public void mo13275a(GenericRecord genericRecord) {
        l.e(genericRecord, "event");
        this.f54111a.mo11854a().mo13111a(genericRecord);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19462a
    /* renamed from: b */
    public void mo13274b(AbstractC19549v abstractC19549v) {
        l.e(abstractC19549v, "event");
        AbstractC19580x mo9106a = abstractC19549v.mo9106a();
        if (mo9106a instanceof AbstractC19580x.C19583c) {
            return;
        }
        if (!(mo9106a instanceof AbstractC19580x.C19585e)) {
            m13270f(mo9106a);
            return;
        }
        for (AbstractC19580x abstractC19580x : ((AbstractC19580x.C19585e) mo9106a).f54430a) {
            m13270f(abstractC19580x);
        }
    }

    @Override // p193e.p194a.p1146q2.AbstractC19462a
    /* renamed from: c */
    public void mo13273c(String str) {
        l.e(str, AnalyticsConstants.TOKEN);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19462a
    /* renamed from: d */
    public void mo13272d(Bundle bundle) {
        l.e(bundle, "payload");
    }

    @Override // p193e.p194a.p1146q2.AbstractC19462a
    /* renamed from: e */
    public void mo13271e(AbstractC19502g abstractC19502g) {
        l.e(abstractC19502g, "event");
    }

    /* renamed from: f */
    public final void m13270f(AbstractC19580x abstractC19580x) {
        if (!(abstractC19580x instanceof AbstractC19580x.C19583c) && !(abstractC19580x instanceof AbstractC19580x.C19581a)) {
            if (abstractC19580x instanceof AbstractC19580x.C19585e) {
                if (this.f54113c.mo13788i()) {
                    throw new IllegalArgumentException("MultiSpec should not contain MultiSpec.");
                }
            } else if (abstractC19580x instanceof AbstractC19580x.C19584d) {
                mo13275a(((AbstractC19580x.C19584d) abstractC19580x).f54429a);
            } else if (!(abstractC19580x instanceof AbstractC19580x.C19582b)) {
            } else {
                AbstractC19580x.C19582b c19582b = (AbstractC19580x.C19582b) abstractC19580x;
                this.f54112b.mo13284a(c19582b.f54426a, c19582b.f54427b);
            }
        }
    }
}
