package androidx.browser.p014a;

import android.os.Bundle;
/* renamed from: androidx.browser.a.a */
/* loaded from: classes-dex2jar.jar:androidx/browser/a/a.class */
public final class C0390a {

    /* renamed from: a */
    public final Integer f1600a;

    /* renamed from: b */
    public final Integer f1601b;

    /* renamed from: c */
    public final Integer f1602c;

    /* renamed from: androidx.browser.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/a/a$a.class */
    public static final class C0391a {

        /* renamed from: a */
        private Integer f1603a;

        /* renamed from: b */
        private Integer f1604b;

        /* renamed from: c */
        private Integer f1605c;

        /* renamed from: a */
        public C0390a m21067a() {
            return new C0390a(this.f1603a, this.f1604b, this.f1605c);
        }
    }

    C0390a(Integer num, Integer num2, Integer num3) {
        this.f1600a = num;
        this.f1601b = num2;
        this.f1602c = num3;
    }

    /* renamed from: a */
    public Bundle m21068a() {
        Bundle bundle = new Bundle();
        if (this.f1600a != null) {
            bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", this.f1600a.intValue());
        }
        if (this.f1601b != null) {
            bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", this.f1601b.intValue());
        }
        if (this.f1602c != null) {
            bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", this.f1602c.intValue());
        }
        return bundle;
    }
}
