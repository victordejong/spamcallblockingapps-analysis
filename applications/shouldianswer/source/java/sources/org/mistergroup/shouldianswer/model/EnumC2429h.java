package org.mistergroup.shouldianswer.model;

import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
/* renamed from: org.mistergroup.shouldianswer.model.h */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/h.class */
public enum EnumC2429h {
    NONE(0),
    UNALLOWED_NOT_IN_CONTACTS(7),
    NEGATIVE_COMMUNITY_RATING(2),
    PREMIUM_RATE(3),
    FOREIGN(4),
    HIDDEN(5),
    UNALLOWED_ALL(6),
    NEGATIVE_USER_RATING(8),
    EXCEPTION(9),
    EXCEPTION_MASK(10),
    EXCEPTION_CONTACT(11),
    EXCEPTION_GROUP(12);
    

    /* renamed from: m */
    public static final C2430a f7065m = new C2430a(null);

    /* renamed from: o */
    private final int f7067o;

    /* renamed from: org.mistergroup.shouldianswer.model.h$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/h$a.class */
    public static final class C2430a {
        private C2430a() {
        }

        public /* synthetic */ C2430a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final String m1050a(EnumC2429h enumC2429h) {
            C1694h.m3117b(enumC2429h, "v");
            MyApp m1802a = MyApp.f5480c.m1802a();
            switch (enumC2429h) {
                case UNALLOWED_NOT_IN_CONTACTS:
                    String string = m1802a.getString(2131755166);
                    C1694h.m3122a((Object) string, "context.getString(R.stri…k_reason_not_in_contacts)");
                    return string;
                case NEGATIVE_COMMUNITY_RATING:
                    String string2 = m1802a.getString(2131755164);
                    C1694h.m3122a((Object) string2, "context.getString(R.stri…egative_community_rating)");
                    return string2;
                case PREMIUM_RATE:
                    String string3 = m1802a.getString(2131755167);
                    C1694h.m3122a((Object) string3, "context.getString(R.string.block_reason_premium)");
                    return string3;
                case FOREIGN:
                    String string4 = m1802a.getString(2131755161);
                    C1694h.m3122a((Object) string4, "context.getString(R.string.block_reason_foreign)");
                    return string4;
                case HIDDEN:
                    String string5 = m1802a.getString(2131755162);
                    C1694h.m3122a((Object) string5, "context.getString(R.string.block_reason_hidden)");
                    return string5;
                case UNALLOWED_ALL:
                    String string6 = m1802a.getString(2131755168);
                    C1694h.m3122a((Object) string6, "context.getString(R.stri…ock_reason_unallowed_any)");
                    return string6;
                case NEGATIVE_USER_RATING:
                    String string7 = m1802a.getString(2131755165);
                    C1694h.m3122a((Object) string7, "context.getString(R.stri…on_negative_local_rating)");
                    return string7;
                case EXCEPTION_MASK:
                    String string8 = m1802a.getString(2131755163);
                    C1694h.m3122a((Object) string8, "context.getString(R.stri…eason_masked_number_list)");
                    return string8;
                case EXCEPTION_CONTACT:
                    String string9 = m1802a.getString(2131755158);
                    C1694h.m3122a((Object) string9, "context.getString(R.stri…son_blocked_contact_list)");
                    return string9;
                case EXCEPTION_GROUP:
                    String string10 = m1802a.getString(2131755159);
                    C1694h.m3122a((Object) string10, "context.getString(R.stri…eason_blocked_group_list)");
                    return string10;
                case EXCEPTION:
                    String string11 = m1802a.getString(2131755160);
                    C1694h.m3122a((Object) string11, "context.getString(R.string.block_reason_exception)");
                    return string11;
                default:
                    return "Unknown";
            }
        }
    }

    EnumC2429h(int i) {
        this.f7067o = i;
    }

    /* renamed from: a */
    public final int m1051a() {
        return this.f7067o;
    }
}
