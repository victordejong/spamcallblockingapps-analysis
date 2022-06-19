package p193e.p194a.p1011l.p1025p2;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.l.p2.e0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/e0.class */
public final class C17062e0 {

    /* renamed from: a */
    public final Context f47835a;

    /* renamed from: b */
    public final C17087f0 f47836b;

    /* renamed from: c */
    public final AbstractC17197v0 f47837c;

    /* renamed from: d */
    public final C17030a1 f47838d;

    @Inject
    public C17062e0(Context context, C17087f0 c17087f0, AbstractC17197v0 abstractC17197v0, C17030a1 c17030a1) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c17087f0, "expireDateHelper");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c17030a1, "subscriptionProblemHelper");
        this.f47835a = context;
        this.f47836b = c17087f0;
        this.f47837c = abstractC17197v0;
        this.f47838d = c17030a1;
    }

    /* renamed from: a */
    public final C17049d0 m16589a() {
        if (this.f47837c.mo16403R1()) {
            String string = this.f47835a.getString(this.f47836b.m16546b() ? 2131887222 : 2131887221, m16588b(this.f47837c.mo16409G1()));
            l.d(string, "context.getString(\n     …       date\n            )");
            return new C17049d0(string, this.f47836b.m16547a());
        }
        String string2 = this.f47835a.getString(this.f47837c.mo16404P() == 1 && !this.f47838d.m16620c() ? 2131887223 : this.f47836b.m16546b() ? 2131887220 : 2131887219, m16588b(this.f47837c.mo16391w0()));
        l.d(string2, "context.getString(stringRes, date)");
        return new C17049d0(string2, this.f47836b.m16547a());
    }

    /* renamed from: b */
    public final String m16588b(long j) {
        String format = new SimpleDateFormat("dd MMM yyyy", Locale.getDefault()).format(new Date(j));
        l.d(format, "SimpleDateFormat(PREMIUM…ormat(Date(dateToFormat))");
        return format;
    }
}
