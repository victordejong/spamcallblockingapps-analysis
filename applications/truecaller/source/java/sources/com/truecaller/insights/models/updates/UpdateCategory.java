package com.truecaller.insights.models.updates;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b.\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/¨\u00060"}, d2 = {"Lcom/truecaller/insights/models/updates/UpdateCategory;", "", "", "label", "Ljava/lang/String;", "getLabel", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "ChequeStatus", "Finance", "LoanUpdate", "Transfer", "Travel", "Event", "PaymentReminder", "MobileRecharge", "Appointment", "Delivery", "Rx", "School", "TaxReturns", "Vaccine", "Weather", "PaymentSuccessful", "MobileBalance", "Investments", "MobileData", "SecurityAlert", "CallNotification", "VoiceMail", "LowBalance", "MissedCall", "Betting", "MissedCalls", "Offers", "TransactionDeclined", "TransactionSuccessful", "TransactionPending", "TransactionProcessing", "PaymentReceived", "LoanApproved", "LoanDue", "LoanOverdue", "LoanClosed", "BeneficiaryCredited", "insights_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/updates/UpdateCategory.class */
public enum UpdateCategory {
    ChequeStatus("Cheque status"),
    Finance("Finance"),
    LoanUpdate("Loan update"),
    Transfer("Transfer"),
    Travel("Travel"),
    Event("Event"),
    PaymentReminder("Payment reminder"),
    MobileRecharge("Mobile recharge"),
    Appointment("Appointment"),
    Delivery("Delivery"),
    Rx("Rx"),
    School("School"),
    TaxReturns("Tax returns"),
    Vaccine("Vaccine"),
    Weather("Weather"),
    PaymentSuccessful("Payment successful"),
    MobileBalance("Mobile balance"),
    Investments("Investments"),
    MobileData("Mobile data"),
    SecurityAlert("Security alert"),
    CallNotification("Call notification"),
    VoiceMail("Voice mail"),
    LowBalance("Low balance"),
    MissedCall("Missed call"),
    Betting("Betting"),
    MissedCalls("Missed calls"),
    Offers("Offers"),
    TransactionDeclined("Transaction declined"),
    TransactionSuccessful("Transaction successful"),
    TransactionPending("Transaction pending"),
    TransactionProcessing("Transaction processing"),
    PaymentReceived("Payment received"),
    LoanApproved("Loan approved"),
    LoanDue("Loan due"),
    LoanOverdue("Loan overdue"),
    LoanClosed("Loan closed"),
    BeneficiaryCredited("Beneficiary credited");
    
    public static final C4072a Companion = new C4072a(null);
    private static final Map<String, UpdateCategory> map;
    private final String label;

    /* renamed from: com.truecaller.insights.models.updates.UpdateCategory$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/updates/UpdateCategory$a.class */
    public static final class C4072a {
        public C4072a(f fVar) {
        }

        /* renamed from: a */
        public final UpdateCategory m35221a(String str) {
            l.e(str, "type");
            Map map = UpdateCategory.map;
            Locale locale = Locale.ENGLISH;
            l.d(locale, "Locale.ENGLISH");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return (UpdateCategory) map.get(lowerCase);
        }
    }

    static {
        UpdateCategory[] values = values();
        int m3942Y1 = C25225a.m3942Y1(37);
        if (m3942Y1 < 16) {
            m3942Y1 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(m3942Y1);
        for (UpdateCategory updateCategory : values) {
            String str = updateCategory.label;
            Locale locale = Locale.ENGLISH;
            l.d(locale, "Locale.ENGLISH");
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            linkedHashMap.put(lowerCase, updateCategory);
        }
        map = linkedHashMap;
    }

    UpdateCategory(String str) {
        this.label = str;
    }

    public final String getLabel() {
        return this.label;
    }
}
