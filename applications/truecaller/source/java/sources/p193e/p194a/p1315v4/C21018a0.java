package p193e.p194a.p1315v4;

import android.app.Activity;
import com.razorpay.AnalyticsConstants;
import java.util.Locale;
import javax.inject.Inject;
import p193e.p194a.p372b0.p417k.C8502h;
import s1.z.c.l;
/* renamed from: e.a.v4.a0 */
/* loaded from: classes12-dex2jar.jar:e/a/v4/a0.class */
public final class C21018a0 {

    /* renamed from: a */
    public final Activity f59025a;

    @Inject
    public C21018a0(Activity activity) {
        l.e(activity, "activity");
        this.f59025a = activity;
    }

    /* renamed from: a */
    public Locale m10414a() {
        Locale locale = C8502h.f26287b;
        l.d(locale, "LocaleManager.getAppLocale()");
        return locale;
    }

    /* renamed from: b */
    public void m10413b(Locale locale) {
        l.e(locale, AnalyticsConstants.LOCALE);
        C8502h.m28436b(this.f59025a, locale);
    }
}
