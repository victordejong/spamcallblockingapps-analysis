package androidx.core.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/text/BidiFormatter.class */
public final class BidiFormatter {

    /* renamed from: d */
    static final TextDirectionHeuristicCompat f3156d = TextDirectionHeuristicsCompat.f3191c;

    /* renamed from: e */
    private static final String f3157e = Character.toString(8206);

    /* renamed from: f */
    private static final String f3158f = Character.toString(8207);

    /* renamed from: g */
    static final BidiFormatter f3159g = new BidiFormatter(false, 2, f3156d);

    /* renamed from: h */
    static final BidiFormatter f3160h = new BidiFormatter(true, 2, f3156d);

    /* renamed from: a */
    private final boolean f3161a;

    /* renamed from: b */
    private final int f3162b;

    /* renamed from: c */
    private final TextDirectionHeuristicCompat f3163c;

    /* loaded from: classes-dex2jar.jar:androidx/core/text/BidiFormatter$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private boolean f3164a;

        /* renamed from: b */
        private int f3165b;

        /* renamed from: c */
        private TextDirectionHeuristicCompat f3166c;

        public Builder() {
            m19387c(BidiFormatter.m19396e(Locale.getDefault()));
        }

        /* renamed from: b */
        private static BidiFormatter m19388b(boolean z) {
            return z ? BidiFormatter.f3160h : BidiFormatter.f3159g;
        }

        /* renamed from: c */
        private void m19387c(boolean z) {
            this.f3164a = z;
            this.f3166c = BidiFormatter.f3156d;
            this.f3165b = 2;
        }

        /* renamed from: a */
        public BidiFormatter m19389a() {
            return (this.f3165b == 2 && this.f3166c == BidiFormatter.f3156d) ? m19388b(this.f3164a) : new BidiFormatter(this.f3164a, this.f3165b, this.f3166c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/core/text/BidiFormatter$DirectionalityEstimator.class */
    public static class DirectionalityEstimator {

        /* renamed from: f */
        private static final byte[] f3167f = new byte[1792];

        /* renamed from: a */
        private final CharSequence f3168a;

        /* renamed from: b */
        private final boolean f3169b;

        /* renamed from: c */
        private final int f3170c;

        /* renamed from: d */
        private int f3171d;

        /* renamed from: e */
        private char f3172e;

        static {
            for (int i = 0; i < 1792; i++) {
                f3167f[i] = Character.getDirectionality(i);
            }
        }

        DirectionalityEstimator(CharSequence charSequence, boolean z) {
            this.f3168a = charSequence;
            this.f3169b = z;
            this.f3170c = charSequence.length();
        }

        /* renamed from: c */
        private static byte m19384c(char c) {
            return c < 1792 ? f3167f[c] : Character.getDirectionality(c);
        }

        /* renamed from: f */
        private byte m19381f() {
            char charAt;
            int i = this.f3171d;
            do {
                int i2 = this.f3171d;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f3168a;
                int i3 = i2 - 1;
                this.f3171d = i3;
                charAt = charSequence.charAt(i3);
                this.f3172e = charAt;
                if (charAt == '&') {
                    return (byte) 12;
                }
            } while (charAt != ';');
            this.f3171d = i;
            this.f3172e = (char) 59;
            return (byte) 13;
        }

        /* renamed from: g */
        private byte m19380g() {
            char charAt;
            do {
                int i = this.f3171d;
                if (i >= this.f3170c) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f3168a;
                this.f3171d = i + 1;
                charAt = charSequence.charAt(i);
                this.f3172e = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        /* renamed from: h */
        private byte m19379h() {
            char charAt;
            int i = this.f3171d;
            while (true) {
                int i2 = this.f3171d;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f3168a;
                int i3 = i2 - 1;
                this.f3171d = i3;
                char charAt2 = charSequence.charAt(i3);
                this.f3172e = charAt2;
                if (charAt2 == '<') {
                    return (byte) 12;
                }
                if (charAt2 == '>') {
                    break;
                } else if (charAt2 == '\"' || charAt2 == '\'') {
                    char c = this.f3172e;
                    do {
                        int i4 = this.f3171d;
                        if (i4 > 0) {
                            CharSequence charSequence2 = this.f3168a;
                            int i5 = i4 - 1;
                            this.f3171d = i5;
                            charAt = charSequence2.charAt(i5);
                            this.f3172e = charAt;
                        }
                    } while (charAt != c);
                }
            }
            this.f3171d = i;
            this.f3172e = (char) 62;
            return (byte) 13;
        }

        /* renamed from: i */
        private byte m19378i() {
            char charAt;
            int i = this.f3171d;
            while (true) {
                int i2 = this.f3171d;
                if (i2 < this.f3170c) {
                    CharSequence charSequence = this.f3168a;
                    this.f3171d = i2 + 1;
                    char charAt2 = charSequence.charAt(i2);
                    this.f3172e = charAt2;
                    if (charAt2 == '>') {
                        return (byte) 12;
                    }
                    if (charAt2 == '\"' || charAt2 == '\'') {
                        char c = this.f3172e;
                        do {
                            int i3 = this.f3171d;
                            if (i3 < this.f3170c) {
                                CharSequence charSequence2 = this.f3168a;
                                this.f3171d = i3 + 1;
                                charAt = charSequence2.charAt(i3);
                                this.f3172e = charAt;
                            }
                        } while (charAt != c);
                    }
                } else {
                    this.f3171d = i;
                    this.f3172e = (char) 60;
                    return (byte) 13;
                }
            }
        }

        /* renamed from: a */
        byte m19386a() {
            char charAt = this.f3168a.charAt(this.f3171d - 1);
            this.f3172e = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.f3168a, this.f3171d);
                this.f3171d -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f3171d--;
            byte c = m19384c(this.f3172e);
            byte b = c;
            if (this.f3169b) {
                char c2 = this.f3172e;
                if (c2 == '>') {
                    b = m19379h();
                } else {
                    b = c;
                    if (c2 == ';') {
                        b = m19381f();
                    }
                }
            }
            return b;
        }

        /* renamed from: b */
        byte m19385b() {
            char charAt = this.f3168a.charAt(this.f3171d);
            this.f3172e = charAt;
            if (Character.isHighSurrogate(charAt)) {
                int codePointAt = Character.codePointAt(this.f3168a, this.f3171d);
                this.f3171d += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.f3171d++;
            byte c = m19384c(this.f3172e);
            byte b = c;
            if (this.f3169b) {
                char c2 = this.f3172e;
                if (c2 == '<') {
                    b = m19378i();
                } else {
                    b = c;
                    if (c2 == '&') {
                        b = m19380g();
                    }
                }
            }
            return b;
        }

        /* renamed from: d */
        int m19383d() {
            this.f3171d = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.f3171d < this.f3170c && i == 0) {
                byte b = m19385b();
                if (b != 0) {
                    if (b == 1 || b == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (b != 9) {
                        switch (b) {
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
            while (this.f3171d > 0) {
                switch (m19386a()) {
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
        int m19382e() {
            this.f3171d = this.f3170c;
            int i = 0;
            int i2 = 0;
            while (this.f3171d > 0) {
                byte a = m19386a();
                if (a != 0) {
                    if (a == 1 || a == 2) {
                        if (i == 0) {
                            return 1;
                        }
                        if (i2 == 0) {
                            i2 = i;
                        }
                    } else if (a != 9) {
                        switch (a) {
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

    BidiFormatter(boolean z, int i, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.f3161a = z;
        this.f3162b = i;
        this.f3163c = textDirectionHeuristicCompat;
    }

    /* renamed from: a */
    private static int m19400a(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).m19383d();
    }

    /* renamed from: b */
    private static int m19399b(CharSequence charSequence) {
        return new DirectionalityEstimator(charSequence, false).m19382e();
    }

    /* renamed from: c */
    public static BidiFormatter m19398c() {
        return new Builder().m19389a();
    }

    /* renamed from: e */
    static boolean m19396e(Locale locale) {
        boolean z = true;
        if (TextUtilsCompat.m19354b(locale) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    private String m19395f(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean a = textDirectionHeuristicCompat.mo19358a(charSequence, 0, charSequence.length());
        return (this.f3161a || (!a && m19399b(charSequence) != 1)) ? this.f3161a ? (!a || m19399b(charSequence) == -1) ? f3158f : "" : "" : f3157e;
    }

    /* renamed from: g */
    private String m19394g(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean a = textDirectionHeuristicCompat.mo19358a(charSequence, 0, charSequence.length());
        return (this.f3161a || (!a && m19400a(charSequence) != 1)) ? this.f3161a ? (!a || m19400a(charSequence) == -1) ? f3158f : "" : "" : f3157e;
    }

    /* renamed from: d */
    public boolean m19397d() {
        return (this.f3162b & 2) != 0;
    }

    /* renamed from: h */
    public CharSequence m19393h(CharSequence charSequence) {
        return m19392i(charSequence, this.f3163c, true);
    }

    /* renamed from: i */
    public CharSequence m19392i(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean a = textDirectionHeuristicCompat.mo19358a(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (m19397d() && z) {
            spannableStringBuilder.append((CharSequence) m19394g(charSequence, a ? TextDirectionHeuristicsCompat.f3190b : TextDirectionHeuristicsCompat.f3189a));
        }
        if (a != this.f3161a) {
            spannableStringBuilder.append(a ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append((CharSequence) m19395f(charSequence, a ? TextDirectionHeuristicsCompat.f3190b : TextDirectionHeuristicsCompat.f3189a));
        }
        return spannableStringBuilder;
    }

    /* renamed from: j */
    public String m19391j(String str) {
        return m19390k(str, this.f3163c, true);
    }

    /* renamed from: k */
    public String m19390k(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z) {
        if (str == null) {
            return null;
        }
        return m19392i(str, textDirectionHeuristicCompat, z).toString();
    }
}
