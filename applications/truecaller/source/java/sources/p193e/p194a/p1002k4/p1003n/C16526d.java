package p193e.p194a.p1002k4.p1003n;

import android.os.Bundle;
import java.util.Map;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import s1.z.c.l;
/* renamed from: e.a.k4.n.d */
/* loaded from: classes11-dex2jar.jar:e/a/k4/n/d.class */
public final class C16526d implements AbstractC16523a {

    /* renamed from: a */
    public final AbstractC19494d f46457a;

    public C16526d(AbstractC19494d abstractC19494d) {
        l.e(abstractC19494d, "firebaseAnalyticsWrapper");
        this.f46457a = abstractC19494d;
    }

    @Override // p193e.p194a.p1002k4.p1003n.AbstractC16523a
    /* renamed from: a */
    public void mo17273a(AbstractC16528f abstractC16528f) {
        l.e(abstractC16528f, "event");
        AbstractC19494d abstractC19494d = this.f46457a;
        String m17272a = abstractC16528f.m17272a();
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : abstractC16528f.m17271b().entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        abstractC19494d.mo13284a(m17272a, bundle);
    }
}
