package com.google.i18n.phonenumbers;

import java.io.Serializable;
/* renamed from: com.google.i18n.phonenumbers.i */
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/i.class */
public final class C5065i {

    /* renamed from: com.google.i18n.phonenumbers.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/i$a.class */
    public static class C5066a implements Serializable {

        /* renamed from: a */
        private boolean f21457a;

        /* renamed from: c */
        private boolean f21459c;

        /* renamed from: e */
        private boolean f21461e;

        /* renamed from: g */
        private boolean f21463g;

        /* renamed from: i */
        private boolean f21465i;

        /* renamed from: k */
        private boolean f21467k;

        /* renamed from: m */
        private boolean f21469m;

        /* renamed from: o */
        private boolean f21471o;

        /* renamed from: b */
        private int f21458b = 0;

        /* renamed from: d */
        private long f21460d = 0;

        /* renamed from: f */
        private String f21462f = "";

        /* renamed from: h */
        private boolean f21464h = false;

        /* renamed from: j */
        private int f21466j = 1;

        /* renamed from: l */
        private String f21468l = "";

        /* renamed from: p */
        private String f21472p = "";

        /* renamed from: n */
        private EnumC5067a f21470n = EnumC5067a.UNSPECIFIED;

        /* renamed from: com.google.i18n.phonenumbers.i$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/i$a$a.class */
        public enum EnumC5067a {
            FROM_NUMBER_WITH_PLUS_SIGN,
            FROM_NUMBER_WITH_IDD,
            FROM_NUMBER_WITHOUT_PLUS_SIGN,
            FROM_DEFAULT_COUNTRY,
            UNSPECIFIED
        }

        /* renamed from: a */
        public int m1631a() {
            return this.f21458b;
        }

        /* renamed from: a */
        public C5066a m1630a(int i) {
            this.f21457a = true;
            this.f21458b = i;
            return this;
        }

        /* renamed from: a */
        public C5066a m1629a(long j) {
            this.f21459c = true;
            this.f21460d = j;
            return this;
        }

        /* renamed from: a */
        public C5066a m1628a(EnumC5067a enumC5067a) {
            if (enumC5067a == null) {
                throw new NullPointerException();
            }
            this.f21469m = true;
            this.f21470n = enumC5067a;
            return this;
        }

        /* renamed from: a */
        public C5066a m1626a(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.f21461e = true;
            this.f21462f = str;
            return this;
        }

        /* renamed from: a */
        public C5066a m1625a(boolean z) {
            this.f21463g = true;
            this.f21464h = z;
            return this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x007d, code lost:
            if (m1609n() != r6.m1609n()) goto L27;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m1627a(com.google.i18n.phonenumbers.C5065i.C5066a r6) {
            /*
                r5 = this;
                r0 = 1
                r7 = r0
                r0 = r6
                if (r0 != 0) goto La
                r0 = 0
                r8 = r0
            L8:
                r0 = r8
                return r0
            La:
                r0 = r7
                r8 = r0
                r0 = r5
                r1 = r6
                if (r0 == r1) goto L8
                r0 = r5
                int r0 = r0.f21458b
                r1 = r6
                int r1 = r1.f21458b
                if (r0 != r1) goto L80
                r0 = r5
                long r0 = r0.f21460d
                r1 = r6
                long r1 = r1.f21460d
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L80
                r0 = r5
                java.lang.String r0 = r0.f21462f
                r1 = r6
                java.lang.String r1 = r1.f21462f
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L80
                r0 = r5
                boolean r0 = r0.f21464h
                r1 = r6
                boolean r1 = r1.f21464h
                if (r0 != r1) goto L80
                r0 = r5
                int r0 = r0.f21466j
                r1 = r6
                int r1 = r1.f21466j
                if (r0 != r1) goto L80
                r0 = r5
                java.lang.String r0 = r0.f21468l
                r1 = r6
                java.lang.String r1 = r1.f21468l
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L80
                r0 = r5
                com.google.i18n.phonenumbers.i$a$a r0 = r0.f21470n
                r1 = r6
                com.google.i18n.phonenumbers.i$a$a r1 = r1.f21470n
                if (r0 != r1) goto L80
                r0 = r5
                java.lang.String r0 = r0.f21472p
                r1 = r6
                java.lang.String r1 = r1.f21472p
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L80
                r0 = r7
                r8 = r0
                r0 = r5
                boolean r0 = r0.m1609n()
                r1 = r6
                boolean r1 = r1.m1609n()
                if (r0 == r1) goto L8
            L80:
                r0 = 0
                r8 = r0
                goto L8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.C5065i.C5066a.m1627a(com.google.i18n.phonenumbers.i$a):boolean");
        }

        /* renamed from: b */
        public long m1624b() {
            return this.f21460d;
        }

        /* renamed from: b */
        public C5066a m1623b(int i) {
            this.f21465i = true;
            this.f21466j = i;
            return this;
        }

        /* renamed from: b */
        public C5066a m1622b(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.f21467k = true;
            this.f21468l = str;
            return this;
        }

        /* renamed from: c */
        public C5066a m1620c(String str) {
            if (str == null) {
                throw new NullPointerException();
            }
            this.f21471o = true;
            this.f21472p = str;
            return this;
        }

        /* renamed from: c */
        public boolean m1621c() {
            return this.f21461e;
        }

        /* renamed from: d */
        public String m1619d() {
            return this.f21462f;
        }

        /* renamed from: e */
        public boolean m1618e() {
            return this.f21463g;
        }

        public boolean equals(Object obj) {
            return (obj instanceof C5066a) && m1627a((C5066a) obj);
        }

        /* renamed from: f */
        public boolean m1617f() {
            return this.f21464h;
        }

        /* renamed from: g */
        public boolean m1616g() {
            return this.f21465i;
        }

        /* renamed from: h */
        public int m1615h() {
            return this.f21466j;
        }

        public int hashCode() {
            int i = 1231;
            int m1631a = m1631a();
            int hashCode = Long.valueOf(m1624b()).hashCode();
            int hashCode2 = m1619d().hashCode();
            int i2 = m1617f() ? 1231 : 1237;
            int m1615h = m1615h();
            int hashCode3 = m1613j().hashCode();
            int hashCode4 = m1611l().hashCode();
            int hashCode5 = m1608o().hashCode();
            if (!m1609n()) {
                i = 1237;
            }
            return ((((((((((i2 + ((((((m1631a + 2173) * 53) + hashCode) * 53) + hashCode2) * 53)) * 53) + m1615h) * 53) + hashCode3) * 53) + hashCode4) * 53) + hashCode5) * 53) + i;
        }

        /* renamed from: i */
        public boolean m1614i() {
            return this.f21467k;
        }

        /* renamed from: j */
        public String m1613j() {
            return this.f21468l;
        }

        /* renamed from: k */
        public boolean m1612k() {
            return this.f21469m;
        }

        /* renamed from: l */
        public EnumC5067a m1611l() {
            return this.f21470n;
        }

        /* renamed from: m */
        public C5066a m1610m() {
            this.f21469m = false;
            this.f21470n = EnumC5067a.UNSPECIFIED;
            return this;
        }

        /* renamed from: n */
        public boolean m1609n() {
            return this.f21471o;
        }

        /* renamed from: o */
        public String m1608o() {
            return this.f21472p;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Country Code: ").append(this.f21458b);
            sb.append(" National Number: ").append(this.f21460d);
            if (m1618e() && m1617f()) {
                sb.append(" Leading Zero(s): true");
            }
            if (m1616g()) {
                sb.append(" Number of leading zeros: ").append(this.f21466j);
            }
            if (m1621c()) {
                sb.append(" Extension: ").append(this.f21462f);
            }
            if (m1612k()) {
                sb.append(" Country Code Source: ").append(this.f21470n);
            }
            if (m1609n()) {
                sb.append(" Preferred Domestic Carrier Code: ").append(this.f21472p);
            }
            return sb.toString();
        }
    }
}
