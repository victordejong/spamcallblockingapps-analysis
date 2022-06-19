package p193e.p194a.p1146q2.p1154x0;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.blocking.FilterMatch;
import java.util.Locale;
import javax.inject.Inject;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p837h0.AbstractC14835j;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.q2.x0.f */
/* loaded from: classes5-dex2jar.jar:e/a/q2/x0/f.class */
public final class C19595f {

    /* renamed from: a */
    public final Context f54462a;

    /* renamed from: b */
    public final AbstractC14835j f54463b;

    @Inject
    public C19595f(Context context, AbstractC14835j abstractC14835j) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC14835j, "filterManager");
        this.f54462a = context;
        this.f54463b = abstractC14835j;
    }

    /* renamed from: a */
    public final FilterMatch m13119a(String str) {
        String str2;
        TelephonyManager m13541j0 = C19291g.m13541j0(this.f54462a);
        String networkCountryIso = m13541j0.getNetworkCountryIso();
        String str3 = null;
        if (networkCountryIso != null) {
            Locale locale = Locale.ENGLISH;
            l.d(locale, "Locale.ENGLISH");
            str2 = networkCountryIso.toUpperCase(locale);
            l.d(str2, "(this as java.lang.String).toUpperCase(locale)");
        } else {
            str2 = null;
        }
        String simCountryIso = m13541j0.getSimCountryIso();
        if (simCountryIso != null) {
            Locale locale2 = Locale.ENGLISH;
            l.d(locale2, "Locale.ENGLISH");
            str3 = simCountryIso.toUpperCase(locale2);
            l.d(str3, "(this as java.lang.String).toUpperCase(locale)");
        }
        FilterMatch mo19590f = this.f54463b.mo19590f(str, null, null, (String) h.c(str2, str3), false, true);
        l.d(mo19590f, "filterManager.findFilter…o), false, true\n        )");
        return mo19590f;
    }
}
