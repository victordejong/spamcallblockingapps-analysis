package p193e.p1512i.p1516b;

import android.content.SharedPreferences;
import com.criteo.publisher.annotation.Internal;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1523l2.C22977a;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1530s1.AbstractC23068a;
import p193e.p1512i.p1516b.p1533u2.AbstractC23127q;
import p193e.p1512i.p1516b.p1533u2.C23130t;
import s1.z.c.l;
@Internal
/* renamed from: e.i.b.c2 */
/* loaded from: classes-dex2jar.jar:e/i/b/c2.class */
public abstract class AbstractC22928c2 {

    /* renamed from: a */
    public final AbstractC23068a f63605a;

    /* renamed from: b */
    public final C23161y1 f63606b;

    /* renamed from: c */
    public final C22977a f63607c;

    public AbstractC22928c2(AbstractC23068a abstractC23068a, C23161y1 c23161y1, C22977a c22977a) {
        l.f(abstractC23068a, "bidLifecycleListener");
        l.f(c23161y1, "bidManager");
        l.f(c22977a, "consentData");
        this.f63605a = abstractC23068a;
        this.f63606b = c23161y1;
        this.f63607c = c22977a;
    }

    /* renamed from: a */
    public void mo7428a(AbstractC23127q abstractC23127q, C23130t c23130t) {
        l.f(abstractC23127q, "cdbRequest");
        l.f(c23130t, "cdbResponse");
        Boolean bool = c23130t.f64065c;
        if (bool != null) {
            C22977a c22977a = this.f63607c;
            l.b(bool, "it");
            boolean booleanValue = bool.booleanValue();
            SharedPreferences.Editor edit = c22977a.f63701a.edit();
            edit.putBoolean("CRTO_ConsentGiven", booleanValue);
            edit.apply();
        }
        C23161y1 c23161y1 = this.f63606b;
        int i = c23130t.f64064b;
        Objects.requireNonNull(c23161y1);
        if (i > 0) {
            c23161y1.f64129a.m7586a(new C23019f(0, C22128a.m8599l2("Silent mode is enabled, no requests will be fired for the next ", i, " seconds"), null, null, 13));
            c23161y1.f64132d.set(c23161y1.f64134f.mo7355a() + (i * 1000));
        }
        this.f63605a.mo7383d(abstractC23127q, c23130t);
    }

    /* renamed from: b */
    public void mo7621b(AbstractC23127q abstractC23127q, Exception exc) {
        l.f(abstractC23127q, "cdbRequest");
        l.f(exc, "exception");
        this.f63605a.mo7384c(abstractC23127q, exc);
    }
}
