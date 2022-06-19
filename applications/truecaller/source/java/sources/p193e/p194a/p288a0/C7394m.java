package p193e.p194a.p288a0;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.a0.m */
/* loaded from: classes12-dex2jar.jar:e/a/a0/m.class */
public final class C7394m extends AbstractC19316a implements AbstractC7393l {

    /* renamed from: b */
    public final int f23524b = 1;

    /* renamed from: c */
    public final String f23525c = "spam_categories";

    @Inject
    public C7394m(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "spam_categories", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f23524b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f23525c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 1) {
            remove("etag");
        }
    }
}
