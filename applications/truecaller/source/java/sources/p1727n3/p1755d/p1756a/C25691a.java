package p1727n3.p1755d.p1756a;

import android.os.Bundle;
/* renamed from: n3.d.a.a */
/* loaded from: classes-dex2jar.jar:n3/d/a/a.class */
public final class C25691a {

    /* renamed from: a */
    public final Integer f71976a;

    /* renamed from: b */
    public final Integer f71977b;

    /* renamed from: n3.d.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/d/a/a$a.class */
    public static final class C25692a {

        /* renamed from: a */
        public Integer f71978a;

        /* renamed from: b */
        public Integer f71979b;

        /* renamed from: a */
        public C25691a m3052a() {
            return new C25691a(this.f71978a, this.f71979b, null, null);
        }
    }

    public C25691a(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f71976a = num;
        this.f71977b = num2;
    }

    /* renamed from: a */
    public Bundle m3053a() {
        Bundle bundle = new Bundle();
        Integer num = this.f71976a;
        if (num != null) {
            bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
        }
        Integer num2 = this.f71977b;
        if (num2 != null) {
            bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", num2.intValue());
        }
        return bundle;
    }
}
