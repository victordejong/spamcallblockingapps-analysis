package org.mistergroup.shouldianswer.model;

import java.util.NoSuchElementException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
/* renamed from: org.mistergroup.shouldianswer.model.ag */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ag.class */
public enum EnumC2395ag {
    UNKNOWN(0),
    POSITIVE(1),
    NEGATIVE(2),
    NEUTRAL(3);
    

    /* renamed from: e */
    public static final C2396a f6924e = new C2396a(null);

    /* renamed from: g */
    private final int f6926g;

    /* renamed from: org.mistergroup.shouldianswer.model.ag$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/ag$a.class */
    public static final class C2396a {
        private C2396a() {
        }

        public /* synthetic */ C2396a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final String m1313a(EnumC2395ag enumC2395ag) {
            String str;
            MyApp m1802a = MyApp.f5480c.m1802a();
            if (enumC2395ag == null) {
                String string = m1802a.getString(2131755455);
                C1694h.m3122a((Object) string, "context.getString(R.string.rating_unknown)");
                return string;
            }
            int i = C2397ah.f6927a[enumC2395ag.ordinal()];
            if (i == 1) {
                str = m1802a.getString(2131755455);
                C1694h.m3122a((Object) str, "context.getString(R.string.rating_unknown)");
            } else if (i == 2) {
                str = m1802a.getString(2131755454);
                C1694h.m3122a((Object) str, "context.getString(R.string.rating_positive)");
            } else if (i == 3) {
                str = m1802a.getString(2131755452);
                C1694h.m3122a((Object) str, "context.getString(R.string.rating_negative)");
            } else if (i != 4) {
                throw new NoWhenBranchMatchedException();
            } else {
                str = m1802a.getString(2131755453);
                C1694h.m3122a((Object) str, "context.getString(R.string.rating_neutral)");
            }
            return str;
        }

        /* renamed from: a */
        public final EnumC2395ag m1314a(int i) {
            EnumC2395ag[] values;
            for (EnumC2395ag enumC2395ag : EnumC2395ag.values()) {
                if (enumC2395ag.m1315a() == i) {
                    return enumC2395ag;
                }
            }
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }

        /* renamed from: b */
        public final int m1312b(EnumC2395ag enumC2395ag) {
            int i;
            C1694h.m3117b(enumC2395ag, "v");
            int i2 = C2397ah.f6928b[enumC2395ag.ordinal()];
            if (i2 == 1) {
                i = 2131230988;
            } else if (i2 == 2) {
                i = 2131230984;
            } else if (i2 == 3) {
                i = 2131230986;
            } else if (i2 != 4) {
                throw new NoWhenBranchMatchedException();
            } else {
                i = 2131230990;
            }
            return i;
        }

        /* renamed from: c */
        public final int m1311c(EnumC2395ag enumC2395ag) {
            int i;
            C1694h.m3117b(enumC2395ag, "v");
            int i2 = C2397ah.f6929c[enumC2395ag.ordinal()];
            if (i2 == 1) {
                i = 2131230987;
            } else if (i2 == 2) {
                i = 2131230983;
            } else if (i2 == 3) {
                i = 2131230985;
            } else if (i2 != 4) {
                throw new NoWhenBranchMatchedException();
            } else {
                i = 2131230989;
            }
            return i;
        }
    }

    EnumC2395ag(int i) {
        this.f6926g = i;
    }

    /* renamed from: a */
    public final int m1315a() {
        return this.f6926g;
    }
}
