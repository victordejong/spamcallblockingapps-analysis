package androidx.core.p021e;

import android.text.SpannableStringBuilder;
import java.util.Locale;
/* renamed from: androidx.core.e.a */
/* loaded from: classes-dex2jar.jar:androidx/core/e/a.class */
public final class C0479a {

    /* renamed from: f */
    private final boolean f1761f;

    /* renamed from: g */
    private final int f1762g;

    /* renamed from: h */
    private final AbstractC0486d f1763h;

    /* renamed from: a */
    static final AbstractC0486d f1756a = C0487e.f1790c;

    /* renamed from: d */
    private static final String f1759d = Character.toString(8206);

    /* renamed from: e */
    private static final String f1760e = Character.toString(8207);

    /* renamed from: b */
    static final C0479a f1757b = new C0479a(false, 2, f1756a);

    /* renamed from: c */
    static final C0479a f1758c = new C0479a(true, 2, f1756a);

    /* renamed from: androidx.core.e.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/a$a.class */
    public static final class C0480a {

        /* renamed from: a */
        private boolean f1764a;

        /* renamed from: b */
        private int f1765b;

        /* renamed from: c */
        private AbstractC0486d f1766c;

        public C0480a() {
            m6502a(C0479a.m6508a(Locale.getDefault()));
        }

        /* renamed from: a */
        private void m6502a(boolean z) {
            this.f1764a = z;
            this.f1766c = C0479a.f1756a;
            this.f1765b = 2;
        }

        /* renamed from: b */
        private static C0479a m6501b(boolean z) {
            return z ? C0479a.f1758c : C0479a.f1757b;
        }

        /* renamed from: a */
        public C0479a m6503a() {
            return (this.f1765b == 2 && this.f1766c == C0479a.f1756a) ? m6501b(this.f1764a) : new C0479a(this.f1764a, this.f1765b, this.f1766c);
        }
    }

    /* renamed from: androidx.core.e.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/e/a$b.class */
    public static class C0481b {

        /* renamed from: a */
        private static final byte[] f1767a = new byte[1792];

        /* renamed from: b */
        private final CharSequence f1768b;

        /* renamed from: c */
        private final boolean f1769c;

        /* renamed from: d */
        private final int f1770d;

        /* renamed from: e */
        private int f1771e;

        /* renamed from: f */
        private char f1772f;

        static {
            for (int i = 0; i < 1792; i++) {
                f1767a[i] = Character.getDirectionality(i);
            }
        }

        C0481b(CharSequence charSequence, boolean z) {
            this.f1768b = charSequence;
            this.f1769c = z;
            this.f1770d = charSequence.length();
        }

        /* renamed from: a */
        private static byte m6499a(char c) {
            return c < 1792 ? f1767a[c] : Character.getDirectionality(c);
        }

        /* renamed from: e */
        private byte m6495e() {
            char charAt;
            int i = this.f1771e;
            while (true) {
                int i2 = this.f1771e;
                if (i2 >= this.f1770d) {
                    this.f1771e = i;
                    this.f1772f = (char) 60;
                    return (byte) 13;
                }
                CharSequence charSequence = this.f1768b;
                this.f1771e = i2 + 1;
                this.f1772f = charSequence.charAt(i2);
                char c = this.f1772f;
                if (c == '>') {
                    return (byte) 12;
                }
                if (c == '\"' || c == '\'') {
                    char c2 = this.f1772f;
                    do {
                        int i3 = this.f1771e;
                        if (i3 < this.f1770d) {
                            CharSequence charSequence2 = this.f1768b;
                            this.f1771e = i3 + 1;
                            charAt = charSequence2.charAt(i3);
                            this.f1772f = charAt;
                        }
                    } while (charAt != c2);
                }
            }
        }

        /* renamed from: f */
        private byte m6494f() {
            char charAt;
            int i = this.f1771e;
            while (true) {
                int i2 = this.f1771e;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f1768b;
                int i3 = i2 - 1;
                this.f1771e = i3;
                this.f1772f = charSequence.charAt(i3);
                char c = this.f1772f;
                if (c == '<') {
                    return (byte) 12;
                }
                if (c == '>') {
                    break;
                } else if (c == '\"' || c == '\'') {
                    char c2 = this.f1772f;
                    do {
                        int i4 = this.f1771e;
                        if (i4 > 0) {
                            CharSequence charSequence2 = this.f1768b;
                            int i5 = i4 - 1;
                            this.f1771e = i5;
                            charAt = charSequence2.charAt(i5);
                            this.f1772f = charAt;
                        }
                    } while (charAt != c2);
                }
            }
            this.f1771e = i;
            this.f1772f = (char) 62;
            return (byte) 13;
        }

        /* renamed from: g */
        private byte m6493g() {
            char charAt;
            do {
                int i = this.f1771e;
                if (i >= this.f1770d) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f1768b;
                this.f1771e = i + 1;
                charAt = charSequence.charAt(i);
                this.f1772f = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        /* renamed from: h */
        private byte m6492h() {
            char c;
            int i = this.f1771e;
            do {
                int i2 = this.f1771e;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f1768b;
                int i3 = i2 - 1;
                this.f1771e = i3;
                this.f1772f = charSequence.charAt(i3);
                c = this.f1772f;
                if (c == '&') {
                    return (byte) 12;
                }
            } while (c != ';');
            this.f1771e = i;
            this.f1772f = (char) 59;
            return (byte) 13;
        }

        /* renamed from: a */
        int m6500a() {
            this.f1771e = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.f1771e < this.f1770d && i == 0) {
                byte m6497c = m6497c();
                if (m6497c != 0) {
                    if (m6497c == 1 || m6497c == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (m6497c != 9) {
                        switch (m6497c) {
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
            while (this.f1771e > 0) {
                switch (m6496d()) {
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

        /* renamed from: b */
        int m6498b() {
            this.f1771e = this.f1770d;
            int i = 0;
            int i2 = 0;
            while (this.f1771e > 0) {
                byte m6496d = m6496d();
                if (m6496d != 0) {
                    if (m6496d == 1 || m6496d == 2) {
                        if (i2 == 0) {
                            return 1;
                        }
                        if (i == 0) {
                            i = i2;
                        }
                    } else if (m6496d != 9) {
                        switch (m6496d) {
                            case 14:
                            case 15:
                                if (i == i2) {
                                    return -1;
                                }
                                i2--;
                                break;
                            case 16:
                            case 17:
                                if (i == i2) {
                                    return 1;
                                }
                                i2--;
                                break;
                            case 18:
                                i2++;
                                break;
                            default:
                                if (i != 0) {
                                    break;
                                } else {
                                    i = i2;
                                    break;
                                }
                        }
                    } else {
                        continue;
                    }
                } else if (i2 == 0) {
                    return -1;
                } else {
                    if (i == 0) {
                        i = i2;
                    }
                }
            }
            return 0;
        }

        /* renamed from: c */
        byte m6497c() {
            this.f1772f = this.f1768b.charAt(this.f1771e);
            if (Character.isHighSurrogate(this.f1772f)) {
                int codePointAt = Character.codePointAt(this.f1768b, this.f1771e);
                this.f1771e += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.f1771e++;
            byte m6499a = m6499a(this.f1772f);
            byte b = m6499a;
            if (this.f1769c) {
                char c = this.f1772f;
                if (c == '<') {
                    b = m6495e();
                } else {
                    b = m6499a;
                    if (c == '&') {
                        b = m6493g();
                    }
                }
            }
            return b;
        }

        /* renamed from: d */
        byte m6496d() {
            this.f1772f = this.f1768b.charAt(this.f1771e - 1);
            if (Character.isLowSurrogate(this.f1772f)) {
                int codePointBefore = Character.codePointBefore(this.f1768b, this.f1771e);
                this.f1771e -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f1771e--;
            byte m6499a = m6499a(this.f1772f);
            byte b = m6499a;
            if (this.f1769c) {
                char c = this.f1772f;
                if (c == '>') {
                    b = m6494f();
                } else {
                    b = m6499a;
                    if (c == ';') {
                        b = m6492h();
                    }
                }
            }
            return b;
        }
    }

    C0479a(boolean z, int i, AbstractC0486d abstractC0486d) {
        this.f1761f = z;
        this.f1762g = i;
        this.f1763h = abstractC0486d;
    }

    /* renamed from: a */
    public static C0479a m6512a() {
        return new C0480a().m6503a();
    }

    /* renamed from: a */
    private String m6510a(CharSequence charSequence, AbstractC0486d abstractC0486d) {
        boolean mo6475a = abstractC0486d.mo6475a(charSequence, 0, charSequence.length());
        return (this.f1761f || (!mo6475a && m6506b(charSequence) != 1)) ? this.f1761f ? (!mo6475a || m6506b(charSequence) == -1) ? f1760e : "" : "" : f1759d;
    }

    /* renamed from: a */
    static boolean m6508a(Locale locale) {
        boolean z = true;
        if (C0494f.m6472a(locale) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private static int m6506b(CharSequence charSequence) {
        return new C0481b(charSequence, false).m6498b();
    }

    /* renamed from: b */
    private String m6505b(CharSequence charSequence, AbstractC0486d abstractC0486d) {
        boolean mo6475a = abstractC0486d.mo6475a(charSequence, 0, charSequence.length());
        return (this.f1761f || (!mo6475a && m6504c(charSequence) != 1)) ? this.f1761f ? (!mo6475a || m6504c(charSequence) == -1) ? f1760e : "" : "" : f1759d;
    }

    /* renamed from: c */
    private static int m6504c(CharSequence charSequence) {
        return new C0481b(charSequence, false).m6500a();
    }

    /* renamed from: a */
    public CharSequence m6511a(CharSequence charSequence) {
        return m6509a(charSequence, this.f1763h, true);
    }

    /* renamed from: a */
    public CharSequence m6509a(CharSequence charSequence, AbstractC0486d abstractC0486d, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean mo6475a = abstractC0486d.mo6475a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (m6507b() && z) {
            spannableStringBuilder.append((CharSequence) m6505b(charSequence, mo6475a ? C0487e.f1789b : C0487e.f1788a));
        }
        if (mo6475a != this.f1761f) {
            spannableStringBuilder.append(mo6475a ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append((CharSequence) m6510a(charSequence, mo6475a ? C0487e.f1789b : C0487e.f1788a));
        }
        return spannableStringBuilder;
    }

    /* renamed from: b */
    public boolean m6507b() {
        return (this.f1762g & 2) != 0;
    }
}
