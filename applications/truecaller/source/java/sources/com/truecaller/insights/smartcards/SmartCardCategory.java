package com.truecaller.insights.smartcards;

import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\"\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#¨\u0006$"}, d2 = {"Lcom/truecaller/insights/smartcards/SmartCardCategory;", "", "", AnalyticsConstants.KEY, "Ljava/lang/String;", "getKey", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "Transaction", "Loan", "Travel", "Flight", "Bus", "Train", "Event", "Bill", "Recharge", "Appointment", "Delivery", "Prescription", "School", "Tax", "Vaccine", "WeatherAlert", "Balance", "Investments", "DataUsage", "SecurityAlert", "MissedCall", "VoiceMail", "Betting", "Promotion", "OTP", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/smartcards/SmartCardCategory.class */
public enum SmartCardCategory {
    Transaction("Transaction"),
    Loan("Loan"),
    Travel("Travel"),
    Flight("Flight"),
    Bus("Bus"),
    Train("Train"),
    Event("Event"),
    Bill("Bill"),
    Recharge("Recharge"),
    Appointment("Appointment"),
    Delivery("Delivery"),
    Prescription("Prescription"),
    School("School"),
    Tax("Tax"),
    Vaccine("Vaccine"),
    WeatherAlert("Weather alert"),
    Balance("Balance"),
    Investments("Investments"),
    DataUsage("Data usage"),
    SecurityAlert("Security alert"),
    MissedCall("Missed call"),
    VoiceMail("Voice mail"),
    Betting("Betting"),
    Promotion("Promotion"),
    OTP("OTP");
    
    public static final C4077a Companion = new C4077a(null);
    private static final Map<String, SmartCardCategory> map;
    private final String key;

    /* renamed from: com.truecaller.insights.smartcards.SmartCardCategory$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/smartcards/SmartCardCategory$a.class */
    public static final class C4077a {
        public C4077a(f fVar) {
        }

        /* renamed from: a */
        public final SmartCardCategory m35209a(String str) {
            l.e(str, "type");
            Map map = SmartCardCategory.map;
            Locale locale = Locale.ENGLISH;
            l.d(locale, "Locale.ENGLISH");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return (SmartCardCategory) map.get(lowerCase);
        }
    }

    static {
        SmartCardCategory[] values = values();
        int m3942Y1 = C25225a.m3942Y1(25);
        if (m3942Y1 < 16) {
            m3942Y1 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(m3942Y1);
        for (SmartCardCategory smartCardCategory : values) {
            String str = smartCardCategory.key;
            Locale locale = Locale.ENGLISH;
            l.d(locale, "Locale.ENGLISH");
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            linkedHashMap.put(lowerCase, smartCardCategory);
        }
        map = linkedHashMap;
    }

    SmartCardCategory(String str) {
        this.key = str;
    }

    public final String getKey() {
        return this.key;
    }
}
