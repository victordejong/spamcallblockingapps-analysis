package p193e.p194a.p1275v.p1309p;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p372b0.p430q.AbstractC8597j0;
import s1.z.c.l;
/* renamed from: e.a.v.p.k */
/* loaded from: classes8-dex2jar.jar:e/a/v/p/k.class */
public final class C20937k {

    /* renamed from: a */
    public final Context f58882a;

    /* renamed from: b */
    public final AbstractC20934i f58883b;

    /* renamed from: c */
    public final AbstractC8597j0 f58884c;

    /* renamed from: d */
    public final C20879a f58885d;

    @Inject
    public C20937k(Context context, AbstractC20934i abstractC20934i, AbstractC8597j0 abstractC8597j0, C20879a c20879a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC20934i, "detailsOptionsMenuDelegate");
        l.e(abstractC8597j0, "tcSearchUrlCreator");
        l.e(c20879a, "detailsViewAnalytics");
        this.f58882a = context;
        this.f58883b = abstractC20934i;
        this.f58884c = abstractC8597j0;
        this.f58885d = c20879a;
    }
}
