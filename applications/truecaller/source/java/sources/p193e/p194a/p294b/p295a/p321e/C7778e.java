package p193e.p194a.p294b.p295a.p321e;

import android.os.Bundle;
import java.util.Map;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import s1.z.c.l;
/* renamed from: e.a.b.a.e.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/e/e.class */
public final class C7778e implements AbstractC7775b {

    /* renamed from: a */
    public final AbstractC19494d f24237a;

    public C7778e(AbstractC19494d abstractC19494d) {
        l.e(abstractC19494d, "firebaseAnalyticsWrapper");
        this.f24237a = abstractC19494d;
    }

    @Override // p193e.p194a.p294b.p295a.p321e.AbstractC7775b
    /* renamed from: a */
    public void mo29295a(AbstractC7761a abstractC7761a) {
        l.e(abstractC7761a, "event");
        AbstractC19494d abstractC19494d = this.f24237a;
        String m29297a = abstractC7761a.m29297a();
        Bundle bundle = new Bundle();
        for (Map.Entry<String, String> entry : abstractC7761a.m29296b().entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        abstractC19494d.mo13284a(m29297a, bundle);
    }
}
