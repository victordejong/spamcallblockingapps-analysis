package p193e.p194a.p195a.p244k.p255y;

import android.content.Context;
import android.telephony.SmsManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.multisim.SimInfo;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p712e4.AbstractC13490i;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p712e4.C13498q;
import p193e.p194a.p712e4.C13505t;
import s1.z.c.l;
/* renamed from: e.a.a.k.y.l */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/y/l.class */
public final class C6741l {

    /* renamed from: a */
    public final Context f22199a;

    /* renamed from: b */
    public final AbstractC19868j f22200b;

    public C6741l(Context context, AbstractC19868j abstractC19868j) {
        l.e(context, "appContext");
        l.e(abstractC19868j, "mThread");
        this.f22199a = context;
        this.f22200b = abstractC19868j;
    }

    /* renamed from: a */
    public final AbstractC19854f<AbstractC6740k> m30502a(String str, AbstractC13497p abstractC13497p) {
        l.e(str, "simToken");
        l.e(abstractC13497p, "multiSimManager");
        SimInfo mo21719v = abstractC13497p.mo21719v(str);
        AbstractC13490i mo21726i = abstractC13497p.mo21726i(str);
        l.d(mo21726i, "multiSimManager.getCarrierConfiguration(simToken)");
        Context context = this.f22199a;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC13497p, "multiSimManager");
        l.e(str, "simToken");
        if (!(abstractC13497p instanceof C13498q) && !(abstractC13497p instanceof C13505t)) {
            throw new IllegalArgumentException(abstractC13497p.getClass().getCanonicalName() + " is not supported");
        }
        SmsManager mo21733w = abstractC13497p.mo21733w(str);
        l.d(mo21733w, "multiSimManager.getSmsManager(simToken)");
        AbstractC19854f<AbstractC6740k> mo11838a = this.f22200b.mo11838a(AbstractC6740k.class, new C6742m(this.f22199a, mo21719v, mo21726i, new C6726c(context, mo21733w)));
        l.d(mo11838a, "mThread.bind(MmsSender::class.java, sender)");
        return mo11838a;
    }
}
