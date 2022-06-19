package androidx.core.p024f;

import android.text.SpannableStringBuilder;
import java.util.Locale;
/* renamed from: androidx.core.f.a */
/* loaded from: classes-dex2jar.jar:androidx/core/f/a.class */
public final class C0503a {

    /* renamed from: f */
    private final boolean f1912f;

    /* renamed from: g */
    private final int f1913g;

    /* renamed from: h */
    private final AbstractC0510d f1914h;

    /* renamed from: a */
    static final AbstractC0510d f1907a = C0511e.f1941c;

    /* renamed from: d */
    private static final String f1910d = Character.toString(8206);

    /* renamed from: e */
    private static final String f1911e = Character.toString(8207);

    /* renamed from: b */
    static final C0503a f1908b = new C0503a(false, 2, f1907a);

    /* renamed from: c */
    static final C0503a f1909c = new C0503a(true, 2, f1907a);

    /* renamed from: androidx.core.f.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/a$a.class */
    public static final class C0504a {

        /* renamed from: a */
        private boolean f1915a;

        /* renamed from: b */
        private int f1916b;

        /* renamed from: c */
        private AbstractC0510d f1917c;

        public C0504a() {
            m20682a(C0503a.m20688a(Locale.getDefault()));
        }

        /* renamed from: a */
        private void m20682a(boolean z) {
            this.f1915a = z;
            this.f1917c = C0503a.f1907a;
            this.f1916b = 2;
        }

        /* renamed from: b */
        private static C0503a m20681b(boolean z) {
            return z ? C0503a.f1909c : C0503a.f1908b;
        }

        /* renamed from: a */
        public C0503a m20683a() {
            return (this.f1916b == 2 && this.f1917c == C0503a.f1907a) ? m20681b(this.f1915a) : new C0503a(this.f1915a, this.f1916b, this.f1917c);
        }
    }

    /* renamed from: androidx.core.f.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/f/a$b.class */
    public static class C0505b {

        /* renamed from: a */
        private static final byte[] f1918a = new byte[1792];

        /* renamed from: b */
        private final CharSequence f1919b;

        /* renamed from: c */
        private final boolean f1920c;

        /* renamed from: d */
        private final int f1921d;

        /* renamed from: e */
        private int f1922e;

        /* renamed from: f */
        private char f1923f;

        static {
            for (int i = 0; i < 1792; i++) {
                f1918a[i] = Character.getDirectionality(i);
            }
        }

        C0505b(CharSequence charSequence, boolean z) {
            this.f1919b = charSequence;
            this.f1920c = z;
            this.f1921d = charSequence.length();
        }

        /* renamed from: a */
        private static byte m20679a(char c) {
            return c < 1792 ? f1918a[c] : Character.getDirectionality(c);
        }

        /* renamed from: e */
        private byte m20675e() {
            byte b;
            int i = this.f1922e;
            while (true) {
                if (this.f1922e >= this.f1921d) {
                    this.f1922e = i;
                    this.f1923f = (char) 60;
                    b = 13;
                    break;
                }
                CharSequence charSequence = this.f1919b;
                int i2 = this.f1922e;
                this.f1922e = i2 + 1;
                this.f1923f = charSequence.charAt(i2);
                if (this.f1923f == '>') {
                    b = 12;
                    break;
                } else if (this.f1923f == '\"' || this.f1923f == '\'') {
                    char c = this.f1923f;
                    while (this.f1922e < this.f1921d) {
                        CharSequence charSequence2 = this.f1919b;
                        int i3 = this.f1922e;
                        this.f1922e = i3 + 1;
                        char charAt = charSequence2.charAt(i3);
                        this.f1923f = charAt;
                        if (charAt == c) {
                            break;
                        }
                    }
                }
            }
            return b;
        }

        /* renamed from: f */
        private byte m20674f() {
            byte b;
            int i = this.f1922e;
            while (this.f1922e > 0) {
                CharSequence charSequence = this.f1919b;
                int i2 = this.f1922e - 1;
                this.f1922e = i2;
                this.f1923f = charSequence.charAt(i2);
                if (this.f1923f == '<') {
                    b = 12;
                    break;
                } else if (this.f1923f == '>') {
                    break;
                } else if (this.f1923f == '\"' || this.f1923f == '\'') {
                    char c = this.f1923f;
                    while (this.f1922e > 0) {
                        CharSequence charSequence2 = this.f1919b;
                        int i3 = this.f1922e - 1;
                        this.f1922e = i3;
                        char charAt = charSequence2.charAt(i3);
                        this.f1923f = charAt;
                        if (charAt == c) {
                            break;
                        }
                    }
                }
            }
            this.f1922e = i;
            this.f1923f = (char) 62;
            b = 13;
            return b;
        }

        /* renamed from: g */
        private byte m20673g() {
            while (this.f1922e < this.f1921d) {
                CharSequence charSequence = this.f1919b;
                int i = this.f1922e;
                this.f1922e = i + 1;
                char charAt = charSequence.charAt(i);
                this.f1923f = charAt;
                if (charAt == ';') {
                    return (byte) 12;
                }
            }
            return (byte) 12;
        }

        /* renamed from: h */
        private byte m20672h() {
            byte b;
            int i = this.f1922e;
            while (this.f1922e > 0) {
                CharSequence charSequence = this.f1919b;
                int i2 = this.f1922e - 1;
                this.f1922e = i2;
                this.f1923f = charSequence.charAt(i2);
                if (this.f1923f != '&') {
                    if (this.f1923f == ';') {
                        break;
                    }
                } else {
                    b = 12;
                    break;
                }
            }
            this.f1922e = i;
            this.f1923f = (char) 59;
            b = 13;
            return b;
        }

        /* renamed from: a */
        int m20680a() {
            int i;
            this.f1922e = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (this.f1922e < this.f1921d && i2 == 0) {
                switch (m20677c()) {
                    case 0:
                        if (i4 != 0) {
                            i2 = i4;
                            break;
                        } else {
                            i = -1;
                            return i;
                        }
                    case 1:
                    case 2:
                        if (i4 != 0) {
                            i2 = i4;
                            break;
                        } else {
                            i = 1;
                            return i;
                        }
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    default:
                        i2 = i4;
                        break;
                    case 9:
                        break;
                    case 14:
                    case 15:
                        i4++;
                        i3 = -1;
                        break;
                    case 16:
                    case 17:
                        i4++;
                        i3 = 1;
                        break;
                    case 18:
                        i4--;
                        i3 = 0;
                        break;
                }
            }
            if (i2 == 0) {
                i = 0;
            } else {
                int i5 = i4;
                if (i3 != 0) {
                    i = i3;
                } else {
                    while (true) {
                        if (this.f1922e > 0) {
                            switch (m20676d()) {
                                case 14:
                                case 15:
                                    i = -1;
                                    if (i2 == i5) {
                                        break;
                                    } else {
                                        i5--;
                                        break;
                                    }
                                case 16:
                                case 17:
                                    if (i2 != i5) {
                                        i5--;
                                        break;
                                    } else {
                                        i = 1;
                                        break;
                                    }
                                case 18:
                                    i5++;
                                    break;
                            }
                        } else {
                            i = 0;
                        }
                    }
                }
            }
            return i;
        }

        /* renamed from: b */
        int m20678b() {
            int i;
            this.f1922e = this.f1921d;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = 0;
                if (this.f1922e > 0) {
                    switch (m20676d()) {
                        case 0:
                            if (i3 != 0) {
                                if (i2 != 0) {
                                    break;
                                } else {
                                    i2 = i3;
                                    break;
                                }
                            } else {
                                i = -1;
                                break;
                            }
                        case 1:
                        case 2:
                            if (i3 != 0) {
                                if (i2 != 0) {
                                    break;
                                } else {
                                    i2 = i3;
                                    break;
                                }
                            } else {
                                i = 1;
                                break;
                            }
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        default:
                            if (i2 != 0) {
                                break;
                            } else {
                                i2 = i3;
                                break;
                            }
                        case 9:
                            break;
                        case 14:
                        case 15:
                            if (i2 != i3) {
                                i3--;
                                break;
                            } else {
                                i = -1;
                                break;
                            }
                        case 16:
                        case 17:
                            if (i2 != i3) {
                                i3--;
                                break;
                            } else {
                                i = 1;
                                break;
                            }
                        case 18:
                            i3++;
                            break;
                    }
                }
            }
            return i;
        }

        /* renamed from: c */
        byte m20677c() {
            byte b;
            this.f1923f = this.f1919b.charAt(this.f1922e);
            if (Character.isHighSurrogate(this.f1923f)) {
                int codePointAt = Character.codePointAt(this.f1919b, this.f1922e);
                this.f1922e += Character.charCount(codePointAt);
                b = Character.getDirectionality(codePointAt);
            } else {
                this.f1922e++;
                byte m20679a = m20679a(this.f1923f);
                b = m20679a;
                if (this.f1920c) {
                    if (this.f1923f == '<') {
                        b = m20675e();
                    } else {
                        b = m20679a;
                        if (this.f1923f == '&') {
                            b = m20673g();
                        }
                    }
                }
            }
            return b;
        }

        /* renamed from: d */
        byte m20676d() {
            byte b;
            this.f1923f = this.f1919b.charAt(this.f1922e - 1);
            if (Character.isLowSurrogate(this.f1923f)) {
                int codePointBefore = Character.codePointBefore(this.f1919b, this.f1922e);
                this.f1922e -= Character.charCount(codePointBefore);
                b = Character.getDirectionality(codePointBefore);
            } else {
                this.f1922e--;
                byte m20679a = m20679a(this.f1923f);
                b = m20679a;
                if (this.f1920c) {
                    if (this.f1923f == '>') {
                        b = m20674f();
                    } else {
                        b = m20679a;
                        if (this.f1923f == ';') {
                            b = m20672h();
                        }
                    }
                }
            }
            return b;
        }
    }

    C0503a(boolean z, int i, AbstractC0510d abstractC0510d) {
        this.f1912f = z;
        this.f1913g = i;
        this.f1914h = abstractC0510d;
    }

    /* renamed from: a */
    public static C0503a m20692a() {
        return new C0504a().m20683a();
    }

    /* renamed from: a */
    private String m20690a(CharSequence charSequence, AbstractC0510d abstractC0510d) {
        boolean mo20655a = abstractC0510d.mo20655a(charSequence, 0, charSequence.length());
        return (this.f1912f || (!mo20655a && m20686b(charSequence) != 1)) ? (!this.f1912f || (mo20655a && m20686b(charSequence) != -1)) ? "" : f1911e : f1910d;
    }

    /* renamed from: a */
    static boolean m20688a(Locale locale) {
        boolean z = true;
        if (C0518f.m20652a(locale) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private static int m20686b(CharSequence charSequence) {
        return new C0505b(charSequence, false).m20678b();
    }

    /* renamed from: b */
    private String m20685b(CharSequence charSequence, AbstractC0510d abstractC0510d) {
        boolean mo20655a = abstractC0510d.mo20655a(charSequence, 0, charSequence.length());
        return (this.f1912f || (!mo20655a && m20684c(charSequence) != 1)) ? (!this.f1912f || (mo20655a && m20684c(charSequence) != -1)) ? "" : f1911e : f1910d;
    }

    /* renamed from: c */
    private static int m20684c(CharSequence charSequence) {
        return new C0505b(charSequence, false).m20680a();
    }

    /* renamed from: a */
    public CharSequence m20691a(CharSequence charSequence) {
        return m20689a(charSequence, this.f1914h, true);
    }

    /* renamed from: a */
    public CharSequence m20689a(CharSequence charSequence, AbstractC0510d abstractC0510d, boolean z) {
        SpannableStringBuilder spannableStringBuilder;
        if (charSequence == null) {
            spannableStringBuilder = null;
        } else {
            boolean mo20655a = abstractC0510d.mo20655a(charSequence, 0, charSequence.length());
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            if (m20687b() && z) {
                spannableStringBuilder2.append((CharSequence) m20685b(charSequence, mo20655a ? C0511e.f1940b : C0511e.f1939a));
            }
            if (mo20655a != this.f1912f) {
                spannableStringBuilder2.append(mo20655a ? (char) 8235 : (char) 8234);
                spannableStringBuilder2.append(charSequence);
                spannableStringBuilder2.append((char) 8236);
            } else {
                spannableStringBuilder2.append(charSequence);
            }
            if (z) {
                spannableStringBuilder2.append((CharSequence) m20690a(charSequence, mo20655a ? C0511e.f1940b : C0511e.f1939a));
            }
            spannableStringBuilder = spannableStringBuilder2;
        }
        return spannableStringBuilder;
    }

    /* renamed from: b */
    public boolean m20687b() {
        return (this.f1913g & 2) != 0;
    }
}
