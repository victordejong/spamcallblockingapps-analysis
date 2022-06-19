package androidx.core.p035d;

import android.text.SpannableStringBuilder;
import java.util.Locale;
/* renamed from: androidx.core.d.a */
/* loaded from: classes-dex2jar.jar:androidx/core/d/a.class */
public final class C0811a {

    /* renamed from: a */
    static final AbstractC0818d f3509a;

    /* renamed from: b */
    static final C0811a f3510b;

    /* renamed from: c */
    static final C0811a f3511c;

    /* renamed from: d */
    private static final String f3512d = Character.toString(8206);

    /* renamed from: e */
    private static final String f3513e = Character.toString(8207);

    /* renamed from: f */
    private final boolean f3514f;

    /* renamed from: g */
    private final int f3515g;

    /* renamed from: h */
    private final AbstractC0818d f3516h;

    /* renamed from: androidx.core.d.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/a$a.class */
    public static final class C0812a {

        /* renamed from: a */
        private boolean f3517a;

        /* renamed from: b */
        private int f3518b;

        /* renamed from: c */
        private AbstractC0818d f3519c;

        public C0812a() {
            m44436a(C0811a.m44439b(Locale.getDefault()));
        }

        public C0812a(Locale locale) {
            m44436a(C0811a.m44439b(locale));
        }

        public C0812a(boolean z) {
            m44436a(z);
        }

        /* renamed from: a */
        private void m44436a(boolean z) {
            this.f3517a = z;
            this.f3519c = C0811a.f3509a;
            this.f3518b = 2;
        }

        /* renamed from: b */
        private static C0811a m44435b(boolean z) {
            return z ? C0811a.f3511c : C0811a.f3510b;
        }

        /* renamed from: a */
        public final C0811a m44437a() {
            return (this.f3518b == 2 && this.f3519c == C0811a.f3509a) ? m44435b(this.f3517a) : new C0811a(this.f3517a, this.f3518b, this.f3519c);
        }
    }

    /* renamed from: androidx.core.d.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/a$b.class */
    public static final class C0813b {

        /* renamed from: a */
        private static final byte[] f3520a = new byte[1792];

        /* renamed from: b */
        private final CharSequence f3521b;

        /* renamed from: c */
        private final boolean f3522c;

        /* renamed from: d */
        private final int f3523d;

        /* renamed from: e */
        private int f3524e;

        /* renamed from: f */
        private char f3525f;

        static {
            for (int i = 0; i < 1792; i++) {
                f3520a[i] = Character.getDirectionality(i);
            }
        }

        C0813b(CharSequence charSequence, boolean z) {
            this.f3521b = charSequence;
            this.f3522c = z;
            this.f3523d = charSequence.length();
        }

        /* renamed from: a */
        private static byte m44433a(char c) {
            return c < 1792 ? f3520a[c] : Character.getDirectionality(c);
        }

        /* renamed from: c */
        private byte m44431c() {
            char charAt = this.f3521b.charAt(this.f3524e);
            this.f3525f = charAt;
            if (Character.isHighSurrogate(charAt)) {
                int codePointAt = Character.codePointAt(this.f3521b, this.f3524e);
                this.f3524e += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.f3524e++;
            byte m44433a = m44433a(this.f3525f);
            byte b = m44433a;
            if (this.f3522c) {
                char c = this.f3525f;
                if (c == '<') {
                    b = m44429e();
                } else {
                    b = m44433a;
                    if (c == '&') {
                        b = m44427g();
                    }
                }
            }
            return b;
        }

        /* renamed from: d */
        private byte m44430d() {
            char charAt = this.f3521b.charAt(this.f3524e - 1);
            this.f3525f = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.f3521b, this.f3524e);
                this.f3524e -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f3524e--;
            byte m44433a = m44433a(this.f3525f);
            byte b = m44433a;
            if (this.f3522c) {
                char c = this.f3525f;
                if (c == '>') {
                    b = m44428f();
                } else {
                    b = m44433a;
                    if (c == ';') {
                        b = m44426h();
                    }
                }
            }
            return b;
        }

        /* renamed from: e */
        private byte m44429e() {
            char charAt;
            int i = this.f3524e;
            while (true) {
                int i2 = this.f3524e;
                if (i2 >= this.f3523d) {
                    this.f3524e = i;
                    this.f3525f = (char) 60;
                    return (byte) 13;
                }
                CharSequence charSequence = this.f3521b;
                this.f3524e = i2 + 1;
                char charAt2 = charSequence.charAt(i2);
                this.f3525f = charAt2;
                if (charAt2 == '>') {
                    return (byte) 12;
                }
                if (charAt2 == '\"' || charAt2 == '\'') {
                    do {
                        int i3 = this.f3524e;
                        if (i3 < this.f3523d) {
                            CharSequence charSequence2 = this.f3521b;
                            this.f3524e = i3 + 1;
                            charAt = charSequence2.charAt(i3);
                            this.f3525f = charAt;
                        }
                    } while (charAt != charAt2);
                }
            }
        }

        /* renamed from: f */
        private byte m44428f() {
            char charAt;
            int i = this.f3524e;
            while (true) {
                int i2 = this.f3524e;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f3521b;
                int i3 = i2 - 1;
                this.f3524e = i3;
                char charAt2 = charSequence.charAt(i3);
                this.f3525f = charAt2;
                if (charAt2 != '<') {
                    if (charAt2 == '>') {
                        break;
                    } else if (charAt2 == '\"' || charAt2 == '\'') {
                        do {
                            int i4 = this.f3524e;
                            if (i4 > 0) {
                                CharSequence charSequence2 = this.f3521b;
                                int i5 = i4 - 1;
                                this.f3524e = i5;
                                charAt = charSequence2.charAt(i5);
                                this.f3525f = charAt;
                            }
                        } while (charAt != charAt2);
                    }
                } else {
                    return (byte) 12;
                }
            }
            this.f3524e = i;
            this.f3525f = (char) 62;
            return (byte) 13;
        }

        /* renamed from: g */
        private byte m44427g() {
            char charAt;
            do {
                int i = this.f3524e;
                if (i >= this.f3523d) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f3521b;
                this.f3524e = i + 1;
                charAt = charSequence.charAt(i);
                this.f3525f = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        /* renamed from: h */
        private byte m44426h() {
            char charAt;
            int i = this.f3524e;
            do {
                int i2 = this.f3524e;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f3521b;
                int i3 = i2 - 1;
                this.f3524e = i3;
                charAt = charSequence.charAt(i3);
                this.f3525f = charAt;
                if (charAt == '&') {
                    return (byte) 12;
                }
            } while (charAt != ';');
            this.f3524e = i;
            this.f3525f = (char) 59;
            return (byte) 13;
        }

        /* renamed from: a */
        final int m44434a() {
            this.f3524e = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.f3524e < this.f3523d && i == 0) {
                byte m44431c = m44431c();
                if (m44431c != 0) {
                    if (m44431c == 1 || m44431c == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (m44431c != 9) {
                        switch (m44431c) {
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
            while (this.f3524e > 0) {
                switch (m44430d()) {
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
        final int m44432b() {
            this.f3524e = this.f3523d;
            int i = 0;
            int i2 = 0;
            while (this.f3524e > 0) {
                byte m44430d = m44430d();
                if (m44430d != 0) {
                    if (m44430d == 1 || m44430d == 2) {
                        if (i == 0) {
                            return 1;
                        }
                        if (i2 == 0) {
                            i2 = i;
                        }
                    } else if (m44430d != 9) {
                        switch (m44430d) {
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
        AbstractC0818d abstractC0818d = C0819e.f3545c;
        f3509a = abstractC0818d;
        f3510b = new C0811a(false, 2, abstractC0818d);
        f3511c = new C0811a(true, 2, abstractC0818d);
    }

    C0811a(boolean z, int i, AbstractC0818d abstractC0818d) {
        this.f3514f = z;
        this.f3515g = i;
        this.f3516h = abstractC0818d;
    }

    /* renamed from: a */
    public static C0811a m44449a() {
        return new C0812a().m44437a();
    }

    /* renamed from: a */
    public static C0811a m44443a(Locale locale) {
        return new C0812a(locale).m44437a();
    }

    /* renamed from: a */
    private CharSequence m44446a(CharSequence charSequence, AbstractC0818d abstractC0818d, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean mo44417a = abstractC0818d.mo44417a(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (m44442b()) {
            spannableStringBuilder.append((CharSequence) m44440b(charSequence, mo44417a ? C0819e.f3544b : C0819e.f3543a));
        }
        if (mo44417a != this.f3514f) {
            spannableStringBuilder.append(mo44417a ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        spannableStringBuilder.append((CharSequence) m44447a(charSequence, mo44417a ? C0819e.f3544b : C0819e.f3543a));
        return spannableStringBuilder;
    }

    /* renamed from: a */
    private String m44447a(CharSequence charSequence, AbstractC0818d abstractC0818d) {
        boolean mo44417a = abstractC0818d.mo44417a(charSequence, charSequence.length());
        return (this.f3514f || (!mo44417a && m44441b(charSequence) != 1)) ? this.f3514f ? (!mo44417a || m44441b(charSequence) == -1) ? f3513e : "" : "" : f3512d;
    }

    /* renamed from: b */
    private static int m44441b(CharSequence charSequence) {
        return new C0813b(charSequence, false).m44432b();
    }

    /* renamed from: b */
    private String m44440b(CharSequence charSequence, AbstractC0818d abstractC0818d) {
        boolean mo44417a = abstractC0818d.mo44417a(charSequence, charSequence.length());
        return (this.f3514f || (!mo44417a && m44438c(charSequence) != 1)) ? this.f3514f ? (!mo44417a || m44438c(charSequence) == -1) ? f3513e : "" : "" : f3512d;
    }

    /* renamed from: b */
    private boolean m44442b() {
        return (this.f3515g & 2) != 0;
    }

    /* renamed from: b */
    static boolean m44439b(Locale locale) {
        return C0826f.m44415a(locale) == 1;
    }

    /* renamed from: c */
    private static int m44438c(CharSequence charSequence) {
        return new C0813b(charSequence, false).m44434a();
    }

    /* renamed from: a */
    public final CharSequence m44448a(CharSequence charSequence) {
        return m44446a(charSequence, this.f3516h, true);
    }

    /* renamed from: a */
    public final String m44445a(String str) {
        return m44444a(str, this.f3516h);
    }

    /* renamed from: a */
    public final String m44444a(String str, AbstractC0818d abstractC0818d) {
        if (str == null) {
            return null;
        }
        return m44446a(str, abstractC0818d, true).toString();
    }
}
