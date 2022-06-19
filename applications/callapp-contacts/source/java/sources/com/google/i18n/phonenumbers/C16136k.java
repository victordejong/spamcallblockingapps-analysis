package com.google.i18n.phonenumbers;

import java.io.Serializable;
import java.util.Objects;
/* renamed from: com.google.i18n.phonenumbers.k */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/k.class */
public final class C16136k {

    /* renamed from: com.google.i18n.phonenumbers.k$a */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/k$a.class */
    public static class C16137a implements Serializable {

        /* renamed from: c */
        public boolean f57031c;

        /* renamed from: g */
        boolean f57035g;

        /* renamed from: i */
        boolean f57037i;

        /* renamed from: k */
        boolean f57039k;

        /* renamed from: m */
        private boolean f57041m;

        /* renamed from: n */
        private boolean f57042n;

        /* renamed from: o */
        private boolean f57043o;

        /* renamed from: p */
        private boolean f57044p;

        /* renamed from: a */
        public int f57029a = 0;

        /* renamed from: b */
        public long f57030b = 0;

        /* renamed from: d */
        public String f57032d = "";

        /* renamed from: e */
        boolean f57033e = false;

        /* renamed from: f */
        int f57034f = 1;

        /* renamed from: h */
        String f57036h = "";

        /* renamed from: l */
        String f57040l = "";

        /* renamed from: j */
        EnumC16138a f57038j = EnumC16138a.UNSPECIFIED;

        /* renamed from: com.google.i18n.phonenumbers.k$a$a */
        /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/k$a$a.class */
        public enum EnumC16138a {
            FROM_NUMBER_WITH_PLUS_SIGN,
            FROM_NUMBER_WITH_IDD,
            FROM_NUMBER_WITHOUT_PLUS_SIGN,
            FROM_DEFAULT_COUNTRY,
            UNSPECIFIED
        }

        /* renamed from: a */
        public final C16137a m7777a() {
            this.f57031c = false;
            this.f57032d = "";
            return this;
        }

        /* renamed from: a */
        public final C16137a m7776a(int i) {
            this.f57041m = true;
            this.f57029a = i;
            return this;
        }

        /* renamed from: a */
        public final C16137a m7775a(long j) {
            this.f57042n = true;
            this.f57030b = j;
            return this;
        }

        /* renamed from: a */
        public final C16137a m7774a(EnumC16138a enumC16138a) {
            Objects.requireNonNull(enumC16138a);
            this.f57037i = true;
            this.f57038j = enumC16138a;
            return this;
        }

        /* renamed from: a */
        public final C16137a m7773a(C16137a c16137a) {
            if (c16137a.f57041m) {
                m7776a(c16137a.f57029a);
            }
            if (c16137a.f57042n) {
                m7775a(c16137a.f57030b);
            }
            if (c16137a.f57031c) {
                m7772a(c16137a.f57032d);
            }
            if (c16137a.f57043o) {
                m7771a(c16137a.f57033e);
            }
            if (c16137a.f57044p) {
                m7769b(c16137a.f57034f);
            }
            if (c16137a.f57035g) {
                m7767b(c16137a.f57036h);
            }
            if (c16137a.f57037i) {
                m7774a(c16137a.f57038j);
            }
            if (c16137a.f57039k) {
                m7766c(c16137a.f57040l);
            }
            return this;
        }

        /* renamed from: a */
        public final C16137a m7772a(String str) {
            Objects.requireNonNull(str);
            this.f57031c = true;
            this.f57032d = str;
            return this;
        }

        /* renamed from: a */
        public final C16137a m7771a(boolean z) {
            this.f57043o = true;
            this.f57033e = z;
            return this;
        }

        /* renamed from: b */
        public final C16137a m7770b() {
            this.f57037i = false;
            this.f57038j = EnumC16138a.UNSPECIFIED;
            return this;
        }

        /* renamed from: b */
        public final C16137a m7769b(int i) {
            this.f57044p = true;
            this.f57034f = i;
            return this;
        }

        /* renamed from: b */
        public final C16137a m7767b(String str) {
            Objects.requireNonNull(str);
            this.f57035g = true;
            this.f57036h = str;
            return this;
        }

        /* renamed from: b */
        public final boolean m7768b(C16137a c16137a) {
            if (c16137a == null) {
                return false;
            }
            if (this == c16137a) {
                return true;
            }
            return this.f57029a == c16137a.f57029a && this.f57030b == c16137a.f57030b && this.f57032d.equals(c16137a.f57032d) && this.f57033e == c16137a.f57033e && this.f57034f == c16137a.f57034f && this.f57036h.equals(c16137a.f57036h) && this.f57038j == c16137a.f57038j && this.f57040l.equals(c16137a.f57040l) && this.f57039k == c16137a.f57039k;
        }

        /* renamed from: c */
        public final C16137a m7766c(String str) {
            Objects.requireNonNull(str);
            this.f57039k = true;
            this.f57040l = str;
            return this;
        }

        public boolean equals(Object obj) {
            return (obj instanceof C16137a) && m7768b((C16137a) obj);
        }

        public int hashCode() {
            int i = this.f57029a;
            int hashCode = Long.valueOf(this.f57030b).hashCode();
            int hashCode2 = this.f57032d.hashCode();
            int i2 = 1231;
            int i3 = this.f57033e ? 1231 : 1237;
            int i4 = this.f57034f;
            int hashCode3 = this.f57036h.hashCode();
            int hashCode4 = this.f57038j.hashCode();
            int hashCode5 = this.f57040l.hashCode();
            if (!this.f57039k) {
                i2 = 1237;
            }
            return ((((((((((((((((i + 2173) * 53) + hashCode) * 53) + hashCode2) * 53) + i3) * 53) + i4) * 53) + hashCode3) * 53) + hashCode4) * 53) + hashCode5) * 53) + i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Country Code: ");
            sb.append(this.f57029a);
            sb.append(" National Number: ");
            sb.append(this.f57030b);
            if (this.f57043o && this.f57033e) {
                sb.append(" Leading Zero(s): true");
            }
            if (this.f57044p) {
                sb.append(" Number of leading zeros: ");
                sb.append(this.f57034f);
            }
            if (this.f57031c) {
                sb.append(" Extension: ");
                sb.append(this.f57032d);
            }
            if (this.f57037i) {
                sb.append(" Country Code Source: ");
                sb.append(this.f57038j);
            }
            if (this.f57039k) {
                sb.append(" Preferred Domestic Carrier Code: ");
                sb.append(this.f57040l);
            }
            return sb.toString();
        }
    }

    private C16136k() {
    }
}
