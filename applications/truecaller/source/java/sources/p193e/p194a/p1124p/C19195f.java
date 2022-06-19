package p193e.p194a.p1124p;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.p183ui.TruecallerInit;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.p.f */
/* loaded from: classes9-dex2jar.jar:e/a/p/f.class */
public final class C19195f implements AbstractC19194e {

    /* renamed from: a */
    public final Context f53565a;

    @Inject
    public C19195f(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53565a = context;
    }

    @Override // p193e.p194a.p1124p.AbstractC19194e
    /* renamed from: F0 */
    public void mo13883F0() {
        TruecallerInit.m34567Va(this.f53565a, "calls", true, null);
    }
}
