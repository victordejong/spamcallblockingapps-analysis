package p193e.p194a.p1011l.p1020g;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1025p2.AbstractC17168r0;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.l.g.s */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/s.class */
public final class C16912s {

    /* renamed from: a */
    public final AbstractC17168r0 f47492a;

    /* renamed from: b */
    public final Context f47493b;

    /* renamed from: c */
    public final AbstractC15275e f47494c;

    /* renamed from: d */
    public final C16913t f47495d;

    /* renamed from: e */
    public final AbstractC8621z f47496e;

    /* renamed from: f */
    public final f f47497f;

    @Inject
    public C16912s(AbstractC17168r0 abstractC17168r0, Context context, AbstractC15275e abstractC15275e, C16913t c16913t, AbstractC8621z abstractC8621z, @Named("IO") f fVar) {
        l.e(abstractC17168r0, "premiumRepository");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC15275e, "notificationManager");
        l.e(c16913t, "goldGiftPromoUtils");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(fVar, "ioContext");
        this.f47492a = abstractC17168r0;
        this.f47493b = context;
        this.f47494c = abstractC15275e;
        this.f47495d = c16913t;
        this.f47496e = abstractC8621z;
        this.f47497f = fVar;
    }
}
