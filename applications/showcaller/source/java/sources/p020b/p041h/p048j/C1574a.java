package p020b.p041h.p048j;

import android.text.SpannableStringBuilder;
import java.util.Locale;
/* renamed from: b.h.j.a */
/* loaded from: classes-dex2jar.jar:b/h/j/a.class */
public final class C1574a {

    /* renamed from: a */
    static final AbstractC1581d f6142a;

    /* renamed from: b */
    private static final String f6143b = Character.toString(8206);

    /* renamed from: c */
    private static final String f6144c = Character.toString(8207);

    /* renamed from: d */
    static final C1574a f6145d;

    /* renamed from: e */
    static final C1574a f6146e;

    /* renamed from: f */
    private final boolean f6147f;

    /* renamed from: g */
    private final int f6148g;

    /* renamed from: h */
    private final AbstractC1581d f6149h;

    /* renamed from: b.h.j.a$a */
    /* loaded from: classes-dex2jar.jar:b/h/j/a$a.class */
    public static final class C1575a {

        /* renamed from: a */
        private boolean f6150a;

        /* renamed from: b */
        private int f6151b;

        /* renamed from: c */
        private AbstractC1581d f6152c;

        public C1575a() {
            m29702c(C1574a.m29711e(Locale.getDefault()));
        }

        /* renamed from: b */
        private static C1574a m29703b(boolean z) {
            return z ? C1574a.f6146e : C1574a.f6145d;
        }

        /* renamed from: c */
        private void m29702c(boolean z) {
            this.f6150a = z;
            this.f6152c = C1574a.f6142a;
            this.f6151b = 2;
        }

        /* renamed from: a */
        public C1574a m29704a() {
            return (this.f6151b == 2 && this.f6152c == C1574a.f6142a) ? m29703b(this.f6150a) : new C1574a(this.f6150a, this.f6151b, this.f6152c);
        }
    }

    /* renamed from: b.h.j.a$b */
    /* loaded from: classes-dex2jar.jar:b/h/j/a$b.class */
    public static class C1576b {

        /* renamed from: a */
        private static final byte[] f6153a = new byte[1792];

        /* renamed from: b */
        private final CharSequence f6154b;

        /* renamed from: c */
        private final boolean f6155c;

        /* renamed from: d */
        private final int f6156d;

        /* renamed from: e */
        private int f6157e;

        /* renamed from: f */
        private char f6158f;

        static {
            for (int i = 0; i < 1792; i++) {
                f6153a[i] = Character.getDirectionality(i);
            }
        }

        C1576b(CharSequence charSequence, boolean z) {
            this.f6154b = charSequence;
            this.f6155c = z;
            this.f6156d = charSequence.length();
        }

        /* renamed from: c */
        private static byte m29699c(char c) {
            return c < 1792 ? f6153a[c] : Character.getDirectionality(c);
        }

        /* renamed from: f */
        private byte m29696f() {
            char charAt;
            int i = this.f6157e;
            do {
                int i2 = this.f6157e;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f6154b;
                int i3 = i2 - 1;
                this.f6157e = i3;
                charAt = charSequence.charAt(i3);
                this.f6158f = charAt;
                if (charAt == '&') {
                    return (byte) 12;
                }
            } while (charAt != ';');
            this.f6157e = i;
            this.f6158f = (char) 59;
            return (byte) 13;
        }

        /* renamed from: g */
        private byte m29695g() {
            char charAt;
            do {
                int i = this.f6157e;
                if (i >= this.f6156d) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f6154b;
                this.f6157e = i + 1;
                charAt = charSequence.charAt(i);
                this.f6158f = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        /* renamed from: h */
        private byte m29694h() {
            char charAt;
            int i = this.f6157e;
            while (true) {
                int i2 = this.f6157e;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f6154b;
                int i3 = i2 - 1;
                this.f6157e = i3;
                char charAt2 = charSequence.charAt(i3);
                this.f6158f = charAt2;
                if (charAt2 == '<') {
                    return (byte) 12;
                }
                if (charAt2 == '>') {
                    break;
                } else if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i4 = this.f6157e;
                        if (i4 > 0) {
                            CharSequence charSequence2 = this.f6154b;
                            int i5 = i4 - 1;
                            this.f6157e = i5;
                            charAt = charSequence2.charAt(i5);
                            this.f6158f = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
            this.f6157e = i;
            this.f6158f = (char) 62;
            return (byte) 13;
        }

        /* renamed from: i */
        private byte m29693i() {
            char charAt;
            int i = this.f6157e;
            while (true) {
                int i2 = this.f6157e;
                if (i2 >= this.f6156d) {
                    this.f6157e = i;
                    this.f6158f = (char) 60;
                    return (byte) 13;
                }
                CharSequence charSequence = this.f6154b;
                this.f6157e = i2 + 1;
                char charAt2 = charSequence.charAt(i2);
                this.f6158f = charAt2;
                if (charAt2 == '>') {
                    return (byte) 12;
                }
                if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i3 = this.f6157e;
                        if (i3 < this.f6156d) {
                            CharSequence charSequence2 = this.f6154b;
                            this.f6157e = i3 + 1;
                            charAt = charSequence2.charAt(i3);
                            this.f6158f = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
        }

        /* renamed from: a */
        byte m29701a() {
            char charAt = this.f6154b.charAt(this.f6157e - 1);
            this.f6158f = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.f6154b, this.f6157e);
                this.f6157e -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f6157e--;
            byte m29699c = m29699c(this.f6158f);
            byte b = m29699c;
            if (this.f6155c) {
                char c = this.f6158f;
                if (c == '>') {
                    b = m29694h();
                } else {
                    b = m29699c;
                    if (c == ';') {
                        b = m29696f();
                    }
                }
            }
            return b;
        }

        /* renamed from: b */
        byte m29700b() {
            char charAt = this.f6154b.charAt(this.f6157e);
            this.f6158f = charAt;
            if (Character.isHighSurrogate(charAt)) {
                int codePointAt = Character.codePointAt(this.f6154b, this.f6157e);
                this.f6157e += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.f6157e++;
            byte m29699c = m29699c(this.f6158f);
            byte b = m29699c;
            if (this.f6155c) {
                char c = this.f6158f;
                if (c == '<') {
                    b = m29693i();
                } else {
                    b = m29699c;
                    if (c == '&') {
                        b = m29695g();
                    }
                }
            }
            return b;
        }

        /* renamed from: d */
        int m29698d() {
            this.f6157e = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.f6157e < this.f6156d && i == 0) {
                byte m29700b = m29700b();
                if (m29700b != 0) {
                    if (m29700b == 1 || m29700b == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (m29700b != 9) {
                        switch (m29700b) {
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
            while (this.f6157e > 0) {
                switch (m29701a()) {
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
        int m29697e() {
            this.f6157e = this.f6156d;
            int i = 0;
            int i2 = 0;
            while (this.f6157e > 0) {
                byte m29701a = m29701a();
                if (m29701a != 0) {
                    if (m29701a == 1 || m29701a == 2) {
                        if (i == 0) {
                            return 1;
                        }
                        if (i2 == 0) {
                            i2 = i;
                        }
                    } else if (m29701a != 9) {
                        switch (m29701a) {
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
    }

    static {
        AbstractC1581d abstractC1581d = C1582e.f6176c;
        f6142a = abstractC1581d;
        f6145d = new C1574a(false, 2, abstractC1581d);
        f6146e = new C1574a(true, 2, abstractC1581d);
    }

    C1574a(boolean z, int i, AbstractC1581d abstractC1581d) {
        this.f6147f = z;
        this.f6148g = i;
        this.f6149h = abstractC1581d;
    }

    /* renamed from: a */
    private static int m29715a(CharSequence charSequence) {
        return new C1576b(charSequence, false).m29698d();
    }

    /* renamed from: b */
    private static int m29714b(CharSequence charSequence) {
        return new C1576b(charSequence, false).m29697e();
    }

    /* renamed from: c */
    public static C1574a m29713c() {
        return new C1575a().m29704a();
    }

    /* renamed from: e */
    static boolean m29711e(Locale locale) {
        boolean z = true;
        if (C1589f.m29671b(locale) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    private String m29710f(CharSequence charSequence, AbstractC1581d abstractC1581d) {
        boolean mo29675a = abstractC1581d.mo29675a(charSequence, 0, charSequence.length());
        return (this.f6147f || (!mo29675a && m29714b(charSequence) != 1)) ? this.f6147f ? (!mo29675a || m29714b(charSequence) == -1) ? f6144c : "" : "" : f6143b;
    }

    /* renamed from: g */
    private String m29709g(CharSequence charSequence, AbstractC1581d abstractC1581d) {
        boolean mo29675a = abstractC1581d.mo29675a(charSequence, 0, charSequence.length());
        return (this.f6147f || (!mo29675a && m29715a(charSequence) != 1)) ? this.f6147f ? (!mo29675a || m29715a(charSequence) == -1) ? f6144c : "" : "" : f6143b;
    }

    /* renamed from: d */
    public boolean m29712d() {
        return (this.f6148g & 2) != 0;
    }

    /* renamed from: h */
    public CharSequence m29708h(CharSequence charSequence) {
        return m29707i(charSequence, this.f6149h, true);
    }

    /* renamed from: i */
    public CharSequence m29707i(CharSequence charSequence, AbstractC1581d abstractC1581d, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean mo29675a = abstractC1581d.mo29675a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (m29712d() && z) {
            spannableStringBuilder.append((CharSequence) m29709g(charSequence, mo29675a ? C1582e.f6175b : C1582e.f6174a));
        }
        if (mo29675a != this.f6147f) {
            spannableStringBuilder.append(mo29675a ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append((CharSequence) m29710f(charSequence, mo29675a ? C1582e.f6175b : C1582e.f6174a));
        }
        return spannableStringBuilder;
    }

    /* renamed from: j */
    public String m29706j(String str) {
        return m29705k(str, this.f6149h, true);
    }

    /* renamed from: k */
    public String m29705k(String str, AbstractC1581d abstractC1581d, boolean z) {
        if (str == null) {
            return null;
        }
        return m29707i(str, abstractC1581d, z).toString();
    }
}
