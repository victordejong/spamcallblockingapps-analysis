package p000;

import android.text.SpannableStringBuilder;
import java.util.Locale;
/* renamed from: ba */
/* loaded from: classes-dex2jar.jar:ba.class */
public final class C0237ba {

    /* renamed from: d */
    public static final AbstractC1356ea f1851d;

    /* renamed from: e */
    public static final String f1852e = Character.toString(8206);

    /* renamed from: f */
    public static final String f1853f = Character.toString(8207);

    /* renamed from: g */
    public static final C0237ba f1854g;

    /* renamed from: h */
    public static final C0237ba f1855h;

    /* renamed from: a */
    public final boolean f1856a;

    /* renamed from: b */
    public final int f1857b;

    /* renamed from: c */
    public final AbstractC1356ea f1858c;

    /* renamed from: ba$a */
    /* loaded from: classes-dex2jar.jar:ba$a.class */
    public static final class C0238a {

        /* renamed from: a */
        public boolean f1859a;

        /* renamed from: b */
        public int f1860b;

        /* renamed from: c */
        public AbstractC1356ea f1861c;

        public C0238a() {
            m5699c(C0237ba.m5708e(Locale.getDefault()));
        }

        /* renamed from: b */
        public static C0237ba m5700b(boolean z) {
            return z ? C0237ba.f1855h : C0237ba.f1854g;
        }

        /* renamed from: a */
        public C0237ba m5701a() {
            return (this.f1860b == 2 && this.f1861c == C0237ba.f1851d) ? m5700b(this.f1859a) : new C0237ba(this.f1859a, this.f1860b, this.f1861c);
        }

        /* renamed from: c */
        public final void m5699c(boolean z) {
            this.f1859a = z;
            this.f1861c = C0237ba.f1851d;
            this.f1860b = 2;
        }
    }

    /* renamed from: ba$b */
    /* loaded from: classes-dex2jar.jar:ba$b.class */
    public static class C0239b {

        /* renamed from: f */
        public static final byte[] f1862f = new byte[1792];

        /* renamed from: a */
        public final CharSequence f1863a;

        /* renamed from: b */
        public final boolean f1864b;

        /* renamed from: c */
        public final int f1865c;

        /* renamed from: d */
        public int f1866d;

        /* renamed from: e */
        public char f1867e;

        static {
            for (int i = 0; i < 1792; i++) {
                f1862f[i] = Character.getDirectionality(i);
            }
        }

        public C0239b(CharSequence charSequence, boolean z) {
            this.f1863a = charSequence;
            this.f1864b = z;
            this.f1865c = charSequence.length();
        }

        /* renamed from: c */
        public static byte m5696c(char c) {
            return c < 1792 ? f1862f[c] : Character.getDirectionality(c);
        }

        /* renamed from: a */
        public byte m5698a() {
            char charAt = this.f1863a.charAt(this.f1866d - 1);
            this.f1867e = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.f1863a, this.f1866d);
                this.f1866d -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f1866d--;
            byte m5696c = m5696c(this.f1867e);
            byte b = m5696c;
            if (this.f1864b) {
                char c = this.f1867e;
                if (c == '>') {
                    b = m5691h();
                } else {
                    b = m5696c;
                    if (c == ';') {
                        b = m5693f();
                    }
                }
            }
            return b;
        }

        /* renamed from: b */
        public byte m5697b() {
            char charAt = this.f1863a.charAt(this.f1866d);
            this.f1867e = charAt;
            if (Character.isHighSurrogate(charAt)) {
                int codePointAt = Character.codePointAt(this.f1863a, this.f1866d);
                this.f1866d += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.f1866d++;
            byte m5696c = m5696c(this.f1867e);
            byte b = m5696c;
            if (this.f1864b) {
                char c = this.f1867e;
                if (c == '<') {
                    b = m5690i();
                } else {
                    b = m5696c;
                    if (c == '&') {
                        b = m5692g();
                    }
                }
            }
            return b;
        }

        /* renamed from: d */
        public int m5695d() {
            this.f1866d = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.f1866d < this.f1865c && i == 0) {
                byte m5697b = m5697b();
                if (m5697b != 0) {
                    if (m5697b == 1 || m5697b == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (m5697b != 9) {
                        switch (m5697b) {
                            case 14:
                            case 15:
                                i3++;
                                i2 = -1;
                                break;
                            case 16:
                            case 17:
                                i3++;
                                i2 = 1;
                                break;
                            case 18:
                                i3--;
                                i2 = 0;
                                break;
                        }
                    }
                } else if (i3 == 0) {
                    return -1;
                }
                i = i3;
            }
            if (i == 0) {
                return 0;
            }
            if (i2 != 0) {
                return i2;
            }
            while (this.f1866d > 0) {
                switch (m5698a()) {
                    case 14:
                    case 15:
                        if (i == i3) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i == i3) {
                            return 1;
                        }
                        break;
                    case 18:
                        i3++;
                        continue;
                }
                i3--;
            }
            return 0;
        }

        /* renamed from: e */
        public int m5694e() {
            this.f1866d = this.f1865c;
            int i = 0;
            int i2 = 0;
            while (this.f1866d > 0) {
                byte m5698a = m5698a();
                if (m5698a != 0) {
                    if (m5698a == 1 || m5698a == 2) {
                        if (i == 0) {
                            return 1;
                        }
                        if (i2 == 0) {
                            i2 = i;
                        }
                    } else if (m5698a != 9) {
                        switch (m5698a) {
                            case 14:
                            case 15:
                                if (i2 == i) {
                                    return -1;
                                }
                                i--;
                                break;
                            case 16:
                            case 17:
                                if (i2 == i) {
                                    return 1;
                                }
                                i--;
                                break;
                            case 18:
                                i++;
                                break;
                            default:
                                if (i2 != 0) {
                                    break;
                                } else {
                                    i2 = i;
                                    break;
                                }
                        }
                    } else {
                        continue;
                    }
                } else if (i == 0) {
                    return -1;
                } else {
                    if (i2 == 0) {
                        i2 = i;
                    }
                }
            }
            return 0;
        }

        /* renamed from: f */
        public final byte m5693f() {
            char charAt;
            int i = this.f1866d;
            do {
                int i2 = this.f1866d;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f1863a;
                int i3 = i2 - 1;
                this.f1866d = i3;
                charAt = charSequence.charAt(i3);
                this.f1867e = charAt;
                if (charAt == '&') {
                    return (byte) 12;
                }
            } while (charAt != ';');
            this.f1866d = i;
            this.f1867e = (char) 59;
            return (byte) 13;
        }

        /* renamed from: g */
        public final byte m5692g() {
            char charAt;
            do {
                int i = this.f1866d;
                if (i >= this.f1865c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f1863a;
                this.f1866d = i + 1;
                charAt = charSequence.charAt(i);
                this.f1867e = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        /* renamed from: h */
        public final byte m5691h() {
            char charAt;
            int i = this.f1866d;
            while (true) {
                int i2 = this.f1866d;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f1863a;
                int i3 = i2 - 1;
                this.f1866d = i3;
                char charAt2 = charSequence.charAt(i3);
                this.f1867e = charAt2;
                if (charAt2 == '<') {
                    return (byte) 12;
                }
                if (charAt2 == '>') {
                    break;
                } else if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i4 = this.f1866d;
                        if (i4 > 0) {
                            CharSequence charSequence2 = this.f1863a;
                            int i5 = i4 - 1;
                            this.f1866d = i5;
                            charAt = charSequence2.charAt(i5);
                            this.f1867e = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
            this.f1866d = i;
            this.f1867e = (char) 62;
            return (byte) 13;
        }

        /* renamed from: i */
        public final byte m5690i() {
            char charAt;
            int i = this.f1866d;
            while (true) {
                int i2 = this.f1866d;
                if (i2 >= this.f1865c) {
                    this.f1866d = i;
                    this.f1867e = (char) 60;
                    return (byte) 13;
                }
                CharSequence charSequence = this.f1863a;
                this.f1866d = i2 + 1;
                char charAt2 = charSequence.charAt(i2);
                this.f1867e = charAt2;
                if (charAt2 == '>') {
                    return (byte) 12;
                }
                if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i3 = this.f1866d;
                        if (i3 < this.f1865c) {
                            CharSequence charSequence2 = this.f1863a;
                            this.f1866d = i3 + 1;
                            charAt = charSequence2.charAt(i3);
                            this.f1867e = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
        }
    }

    static {
        AbstractC1356ea abstractC1356ea = C1406fa.f6552c;
        f1851d = abstractC1356ea;
        f1854g = new C0237ba(false, 2, abstractC1356ea);
        f1855h = new C0237ba(true, 2, abstractC1356ea);
    }

    public C0237ba(boolean z, int i, AbstractC1356ea abstractC1356ea) {
        this.f1856a = z;
        this.f1857b = i;
        this.f1858c = abstractC1356ea;
    }

    /* renamed from: a */
    public static int m5712a(CharSequence charSequence) {
        return new C0239b(charSequence, false).m5695d();
    }

    /* renamed from: b */
    public static int m5711b(CharSequence charSequence) {
        return new C0239b(charSequence, false).m5694e();
    }

    /* renamed from: c */
    public static C0237ba m5710c() {
        return new C0238a().m5701a();
    }

    /* renamed from: e */
    public static boolean m5708e(Locale locale) {
        boolean z = true;
        if (ga.b(locale) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m5709d() {
        return (this.f1857b & 2) != 0;
    }

    /* renamed from: f */
    public final String m5707f(CharSequence charSequence, AbstractC1356ea abstractC1356ea) {
        boolean m2188a = abstractC1356ea.m2188a(charSequence, 0, charSequence.length());
        return (this.f1856a || (!m2188a && m5711b(charSequence) != 1)) ? this.f1856a ? (!m2188a || m5711b(charSequence) == -1) ? f1853f : "" : "" : f1852e;
    }

    /* renamed from: g */
    public final String m5706g(CharSequence charSequence, AbstractC1356ea abstractC1356ea) {
        boolean m2188a = abstractC1356ea.m2188a(charSequence, 0, charSequence.length());
        return (this.f1856a || (!m2188a && m5712a(charSequence) != 1)) ? this.f1856a ? (!m2188a || m5712a(charSequence) == -1) ? f1853f : "" : "" : f1852e;
    }

    /* renamed from: h */
    public CharSequence m5705h(CharSequence charSequence) {
        return m5704i(charSequence, this.f1858c, true);
    }

    /* renamed from: i */
    public CharSequence m5704i(CharSequence charSequence, AbstractC1356ea abstractC1356ea, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean m2188a = abstractC1356ea.m2188a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (m5709d() && z) {
            spannableStringBuilder.append((CharSequence) m5706g(charSequence, m2188a ? C1406fa.f6551b : C1406fa.f6550a));
        }
        if (m2188a != this.f1856a) {
            spannableStringBuilder.append(m2188a ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append((CharSequence) m5707f(charSequence, m2188a ? C1406fa.f6551b : C1406fa.f6550a));
        }
        return spannableStringBuilder;
    }

    /* renamed from: j */
    public String m5703j(String str) {
        return m5702k(str, this.f1858c, true);
    }

    /* renamed from: k */
    public String m5702k(String str, AbstractC1356ea abstractC1356ea, boolean z) {
        if (str == null) {
            return null;
        }
        return m5704i(str, abstractC1356ea, z).toString();
    }
}
