package org.mistergroup.shouldianswer.model;

import java.util.NoSuchElementException;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
/* renamed from: org.mistergroup.shouldianswer.model.m */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/m.class */
public enum EnumC2439m {
    NONE(0),
    TELEMARKETER(1),
    DEPT_COLLECTOR(2),
    SILENT_CALL(3),
    NUISANCE_CALL(4),
    UNSOLICITED_CALL(5),
    CALL_CENTRE(6),
    FAX_MACHINE(7),
    NON_PROFIT(8),
    POLITICAL(9),
    SCAM(10),
    PRANK(11),
    SMS(12),
    SURVEY(13),
    OTHER(14),
    FINANCE_SERVICE(15),
    COMPANY(16),
    SERVICE(17),
    ROBOCALL(18),
    SAFE_PERSONAL(100),
    SAFE_COMPANY(101),
    SAFE_NONPROFIT(102);
    

    /* renamed from: y */
    private final int f7142y;

    /* renamed from: w */
    public static final C2440a f7139w = new C2440a(null);

    /* renamed from: z */
    private static final EnumC2439m[] f7141z = {SAFE_NONPROFIT, SAFE_PERSONAL, SAFE_COMPANY};

    /* renamed from: org.mistergroup.shouldianswer.model.m$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/m$a.class */
    public static final class C2440a {
        private C2440a() {
        }

        public /* synthetic */ C2440a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final String m1015a(EnumC2439m enumC2439m) {
            C1694h.m3117b(enumC2439m, "category");
            MyApp m1802a = MyApp.f5480c.m1802a();
            switch (enumC2439m) {
                case TELEMARKETER:
                    String string = m1802a.getString(2131755201);
                    C1694h.m3122a((Object) string, "context.getString(R.string.category_telemarketer)");
                    return string;
                case DEPT_COLLECTOR:
                    String string2 = m1802a.getString(2131755187);
                    C1694h.m3122a((Object) string2, "context.getString(R.stri….category_dept_collector)");
                    return string2;
                case SILENT_CALL:
                    String string3 = m1802a.getString(2131755198);
                    C1694h.m3122a((Object) string3, "context.getString(R.string.category_silent)");
                    return string3;
                case NUISANCE_CALL:
                    String string4 = m1802a.getString(2131755191);
                    C1694h.m3122a((Object) string4, "context.getString(R.string.category_nuisance)");
                    return string4;
                case UNSOLICITED_CALL:
                    String string5 = m1802a.getString(2131755202);
                    C1694h.m3122a((Object) string5, "context.getString(R.string.category_unsolicited)");
                    return string5;
                case CALL_CENTRE:
                    String string6 = m1802a.getString(2131755185);
                    C1694h.m3122a((Object) string6, "context.getString(R.string.category_callcentre)");
                    return string6;
                case FAX_MACHINE:
                    String string7 = m1802a.getString(2131755188);
                    C1694h.m3122a((Object) string7, "context.getString(R.string.category_fax)");
                    return string7;
                case NON_PROFIT:
                    String string8 = m1802a.getString(2131755190);
                    C1694h.m3122a((Object) string8, "context.getString(R.string.category_nonprofit)");
                    return string8;
                case POLITICAL:
                    String string9 = m1802a.getString(2131755193);
                    C1694h.m3122a((Object) string9, "context.getString(R.string.category_political)");
                    return string9;
                case SCAM:
                    String string10 = m1802a.getString(2131755196);
                    C1694h.m3122a((Object) string10, "context.getString(R.string.category_scam)");
                    return string10;
                case PRANK:
                    String string11 = m1802a.getString(2131755194);
                    C1694h.m3122a((Object) string11, "context.getString(R.string.category_prank)");
                    return string11;
                case SMS:
                    String string12 = m1802a.getString(2131755199);
                    C1694h.m3122a((Object) string12, "context.getString(R.string.category_sms)");
                    return string12;
                case SURVEY:
                    String string13 = m1802a.getString(2131755200);
                    C1694h.m3122a((Object) string13, "context.getString(R.string.category_survey)");
                    return string13;
                case OTHER:
                    String string14 = m1802a.getString(2131755192);
                    C1694h.m3122a((Object) string14, "context.getString(R.string.category_other)");
                    return string14;
                case FINANCE_SERVICE:
                    String string15 = m1802a.getString(2131755189);
                    C1694h.m3122a((Object) string15, "context.getString(R.stri…tegory_financial_service)");
                    return string15;
                case COMPANY:
                    String string16 = m1802a.getString(2131755186);
                    C1694h.m3122a((Object) string16, "context.getString(R.string.category_company)");
                    return string16;
                case SERVICE:
                    String string17 = m1802a.getString(2131755197);
                    C1694h.m3122a((Object) string17, "context.getString(R.string.category_service)");
                    return string17;
                case ROBOCALL:
                    String string18 = m1802a.getString(2131755195);
                    C1694h.m3122a((Object) string18, "context.getString(R.string.category_robocall)");
                    return string18;
                case SAFE_PERSONAL:
                    String string19 = m1802a.getString(2131755436);
                    C1694h.m3122a((Object) string19, "context.getString(R.string.personal)");
                    return string19;
                case SAFE_COMPANY:
                    String string20 = m1802a.getString(2131755242);
                    C1694h.m3122a((Object) string20, "context.getString(R.string.company)");
                    return string20;
                case SAFE_NONPROFIT:
                    String string21 = m1802a.getString(2131755390);
                    C1694h.m3122a((Object) string21, "context.getString(R.string.non_profit)");
                    return string21;
                default:
                    return "";
            }
        }

        /* renamed from: a */
        public final EnumC2439m m1016a(int i) {
            EnumC2439m[] values;
            for (EnumC2439m enumC2439m : EnumC2439m.values()) {
                if (enumC2439m.m1019a() == i) {
                    return enumC2439m;
                }
            }
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }

        /* renamed from: a */
        public final EnumC2439m[] m1017a() {
            return EnumC2439m.f7141z;
        }
    }

    EnumC2439m(int i) {
        this.f7142y = i;
    }

    /* renamed from: a */
    public final int m1019a() {
        return this.f7142y;
    }
}
