package p193e.p194a.p1080o.p1097b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.o.b.p */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/p.class */
public final class C18749p extends AbstractC19316a implements AbstractC18746o {

    /* renamed from: b */
    public final int f52682b = 1;

    /* renamed from: c */
    public final String f52683c = "context_call_settings";

    @Inject
    public C18749p(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "context_call_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f52682b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f52683c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
    }
}
