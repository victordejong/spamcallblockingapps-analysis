package p193e.p194a.p1392y2.p1394q;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.background_work.StandaloneActionWorker;
import e.m.d.y.n;
import p1727n3.p1834m0.AbstractC26844s;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.EnumC26674a;
import s1.k;
import s1.z.c.l;
import w3.b.a.i;
/* renamed from: e.a.y2.q.c */
/* loaded from: classes5-dex2jar.jar:e/a/y2/q/c.class */
public final class C21782c {
    /* renamed from: a */
    public static final AbstractC26844s m9085a(AbstractC26857y abstractC26857y, String str, Context context) {
        return m9083c(abstractC26857y, str, context, null, null, 12);
    }

    /* renamed from: b */
    public static final AbstractC26844s m9084b(AbstractC26857y abstractC26857y, String str, Context context, k<? extends EnumC26674a, i> kVar, C26829f c26829f) {
        l.e(abstractC26857y, "$this$scheduleOneOffWorkAction");
        l.e(str, "actionName");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(kVar, "backoffConfig");
        return StandaloneActionWorker.m35891s(str, kVar, c26829f, context, abstractC26857y);
    }

    /* renamed from: c */
    public static /* synthetic */ AbstractC26844s m9083c(AbstractC26857y abstractC26857y, String str, Context context, k kVar, C26829f c26829f, int i) {
        if ((i & 4) != 0) {
            kVar = n.g0();
        }
        return m9084b(abstractC26857y, str, context, kVar, null);
    }
}
