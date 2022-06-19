package p193e.p194a.p1011l.p1012a;

import com.appsflyer.AppsFlyerProperties;
import com.razorpay.AnalyticsConstants;
import java.text.NumberFormat;
import java.util.Currency;
import java.util.Locale;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.l.a.f0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/f0.class */
public final class C16575f0 implements AbstractC16571e0 {

    /* renamed from: a */
    public final Locale f46574a;

    @Inject
    public C16575f0(Locale locale) {
        l.e(locale, AnalyticsConstants.LOCALE);
        this.f46574a = locale;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16571e0
    /* renamed from: a */
    public String mo17231a(String str, long j) {
        l.e(str, AppsFlyerProperties.CURRENCY_CODE);
        Currency currency = Currency.getInstance(str);
        NumberFormat currencyInstance = NumberFormat.getCurrencyInstance(this.f46574a);
        l.d(currencyInstance, "this");
        currencyInstance.setCurrency(currency);
        currencyInstance.setMinimumFractionDigits(0);
        currencyInstance.setMaximumFractionDigits(2);
        String format = currencyInstance.format(j / 1000000.0d);
        l.d(format, "NumberFormat.getCurrency…iv(1000000.00))\n        }");
        return format;
    }
}
