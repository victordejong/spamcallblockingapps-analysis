package p000;

import android.os.Bundle;
/* renamed from: c3 */
/* loaded from: classes-dex2jar.jar:c3.class */
public final class C0282c3 {

    /* renamed from: a */
    public final Integer f2134a;

    /* renamed from: b */
    public final Integer f2135b;

    /* renamed from: c */
    public final Integer f2136c;

    /* renamed from: d */
    public final Integer f2137d;

    /* renamed from: c3$a */
    /* loaded from: classes-dex2jar.jar:c3$a.class */
    public static final class C0283a {

        /* renamed from: a */
        public Integer f2138a;

        /* renamed from: b */
        public Integer f2139b;

        /* renamed from: c */
        public Integer f2140c;

        /* renamed from: d */
        public Integer f2141d;

        /* renamed from: a */
        public C0282c3 m5464a() {
            return new C0282c3(this.f2138a, this.f2139b, this.f2140c, this.f2141d);
        }
    }

    public C0282c3(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f2134a = num;
        this.f2135b = num2;
        this.f2136c = num3;
        this.f2137d = num4;
    }

    /* renamed from: a */
    public Bundle m5465a() {
        Bundle bundle = new Bundle();
        Integer num = this.f2134a;
        if (num != null) {
            bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
        }
        Integer num2 = this.f2135b;
        if (num2 != null) {
            bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", num2.intValue());
        }
        Integer num3 = this.f2136c;
        if (num3 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", num3.intValue());
        }
        Integer num4 = this.f2137d;
        if (num4 != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR", num4.intValue());
        }
        return bundle;
    }
}
