package com.applovin.impl.mediation.debugger.p045ui.p050d;

import android.content.Context;
import android.text.SpannedString;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.C1491f;
import com.applovin.sdk.C1583R;
/* renamed from: com.applovin.impl.mediation.debugger.ui.d.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/d/c.class */
public class C1169c {

    /* renamed from: b */
    public EnumC1172b f4226b;

    /* renamed from: c */
    public boolean f4227c;

    /* renamed from: d */
    public SpannedString f4228d;

    /* renamed from: e */
    public SpannedString f4229e;

    /* renamed from: f */
    public String f4230f;

    /* renamed from: g */
    public String f4231g;

    /* renamed from: h */
    public int f4232h;

    /* renamed from: i */
    public int f4233i;

    /* renamed from: j */
    public int f4234j;

    /* renamed from: k */
    public int f4235k;

    /* renamed from: l */
    public int f4236l;

    /* renamed from: m */
    public int f4237m;

    /* renamed from: n */
    public boolean f4238n;

    /* renamed from: com.applovin.impl.mediation.debugger.ui.d.c$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/d/c$a.class */
    public static class C1171a {

        /* renamed from: a */
        public final EnumC1172b f4239a;

        /* renamed from: b */
        public boolean f4240b;

        /* renamed from: c */
        public SpannedString f4241c;

        /* renamed from: d */
        public SpannedString f4242d;

        /* renamed from: e */
        public String f4243e;

        /* renamed from: f */
        public String f4244f;

        /* renamed from: g */
        public int f4245g = 0;

        /* renamed from: h */
        public int f4246h = 0;

        /* renamed from: i */
        public int f4247i = -16777216;

        /* renamed from: j */
        public int f4248j = -16777216;

        /* renamed from: k */
        public int f4249k = 0;

        /* renamed from: l */
        public int f4250l = 0;

        /* renamed from: m */
        public boolean f4251m;

        public C1171a(EnumC1172b enumC1172b) {
            this.f4239a = enumC1172b;
        }

        /* renamed from: a */
        public C1171a m6241a(int i) {
            this.f4246h = i;
            return this;
        }

        /* renamed from: a */
        public C1171a m6240a(Context context) {
            this.f4246h = C1583R.C1585drawable.applovin_ic_disclosure_arrow;
            this.f4250l = C1491f.m5077a(C1583R.C1584color.applovin_sdk_disclosureButtonColor, context);
            return this;
        }

        /* renamed from: a */
        public C1171a m6239a(SpannedString spannedString) {
            this.f4241c = spannedString;
            return this;
        }

        /* renamed from: a */
        public C1171a m6238a(String str) {
            return m6239a(!TextUtils.isEmpty(str) ? new SpannedString(str) : null);
        }

        /* renamed from: a */
        public C1171a m6237a(boolean z) {
            this.f4240b = z;
            return this;
        }

        /* renamed from: a */
        public C1169c m6242a() {
            return new C1169c(this);
        }

        /* renamed from: b */
        public C1171a m6236b(int i) {
            this.f4248j = i;
            return this;
        }

        /* renamed from: b */
        public C1171a m6235b(SpannedString spannedString) {
            this.f4242d = spannedString;
            return this;
        }

        /* renamed from: b */
        public C1171a m6234b(String str) {
            return m6235b(!TextUtils.isEmpty(str) ? new SpannedString(str) : null);
        }

        /* renamed from: b */
        public C1171a m6233b(boolean z) {
            this.f4251m = z;
            return this;
        }

        /* renamed from: c */
        public C1171a m6232c(int i) {
            this.f4250l = i;
            return this;
        }

        /* renamed from: c */
        public C1171a m6231c(String str) {
            this.f4243e = str;
            return this;
        }

        /* renamed from: d */
        public C1171a m6230d(String str) {
            this.f4244f = str;
            return this;
        }
    }

    /* renamed from: com.applovin.impl.mediation.debugger.ui.d.c$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/d/c$b.class */
    public enum EnumC1172b {
        SECTION(0),
        SECTION_CENTERED(1),
        SIMPLE(2),
        DETAIL(3),
        RIGHT_DETAIL(4),
        COUNT(5);
        

        /* renamed from: g */
        private final int f4259g;

        EnumC1172b(int i) {
            this.f4259g = i;
        }

        /* renamed from: a */
        public int m6229a() {
            return this.f4259g;
        }

        /* renamed from: b */
        public int m6228b() {
            if (this == SECTION) {
                return C1583R.layout.list_section;
            }
            if (this == SECTION_CENTERED) {
                return C1583R.layout.list_section_centered;
            }
            if (this == SIMPLE) {
                return 17367043;
            }
            return this == DETAIL ? C1583R.layout.list_item_detail : C1583R.layout.list_item_right_detail;
        }
    }

    private C1169c(C1171a c1171a) {
        this.f4232h = 0;
        this.f4233i = 0;
        this.f4234j = -16777216;
        this.f4235k = -16777216;
        this.f4236l = 0;
        this.f4237m = 0;
        this.f4226b = c1171a.f4239a;
        this.f4227c = c1171a.f4240b;
        this.f4228d = c1171a.f4241c;
        this.f4229e = c1171a.f4242d;
        this.f4230f = c1171a.f4243e;
        this.f4231g = c1171a.f4244f;
        this.f4232h = c1171a.f4245g;
        this.f4233i = c1171a.f4246h;
        this.f4234j = c1171a.f4247i;
        this.f4235k = c1171a.f4248j;
        this.f4236l = c1171a.f4249k;
        this.f4237m = c1171a.f4250l;
        this.f4238n = c1171a.f4251m;
    }

    public C1169c(EnumC1172b enumC1172b) {
        this.f4232h = 0;
        this.f4233i = 0;
        this.f4234j = -16777216;
        this.f4235k = -16777216;
        this.f4236l = 0;
        this.f4237m = 0;
        this.f4226b = enumC1172b;
    }

    /* renamed from: a */
    public static C1171a m6256a(EnumC1172b enumC1172b) {
        return new C1171a(enumC1172b);
    }

    /* renamed from: h */
    public static int m6250h() {
        return EnumC1172b.COUNT.m6229a();
    }

    /* renamed from: p */
    public static C1171a m6243p() {
        return m6256a(EnumC1172b.RIGHT_DETAIL);
    }

    /* renamed from: b */
    public boolean mo6255b() {
        return this.f4227c;
    }

    /* renamed from: c */
    public int mo6254c() {
        return this.f4235k;
    }

    /* renamed from: c_ */
    public SpannedString mo6253c_() {
        return this.f4229e;
    }

    /* renamed from: d_ */
    public boolean mo6252d_() {
        return this.f4238n;
    }

    /* renamed from: e */
    public int mo6251e() {
        return this.f4232h;
    }

    /* renamed from: f */
    public int mo6213f() {
        return this.f4233i;
    }

    /* renamed from: g */
    public int mo6212g() {
        return this.f4237m;
    }

    /* renamed from: i */
    public int m6249i() {
        return this.f4226b.m6229a();
    }

    /* renamed from: j */
    public int m6248j() {
        return this.f4226b.m6228b();
    }

    /* renamed from: k */
    public SpannedString m6247k() {
        return this.f4228d;
    }

    /* renamed from: l */
    public String m6246l() {
        return this.f4230f;
    }

    /* renamed from: m */
    public String mo6211m() {
        return this.f4231g;
    }

    /* renamed from: n */
    public int m6245n() {
        return this.f4234j;
    }

    /* renamed from: o */
    public int m6244o() {
        return this.f4236l;
    }
}
