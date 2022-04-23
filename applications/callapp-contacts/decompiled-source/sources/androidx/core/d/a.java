package androidx.core.d;

import android.text.SpannableStringBuilder;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/d/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final d f1853a;

    /* renamed from: b  reason: collision with root package name */
    static final a f1854b;

    /* renamed from: c  reason: collision with root package name */
    static final a f1855c;

    /* renamed from: d  reason: collision with root package name */
    private static final String f1856d = Character.toString(8206);
    private static final String e = Character.toString(8207);
    private final boolean f;
    private final int g;
    private final d h;

    /* renamed from: androidx.core.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/a$a.class */
    public static final class C0046a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1857a;

        /* renamed from: b  reason: collision with root package name */
        private int f1858b;

        /* renamed from: c  reason: collision with root package name */
        private d f1859c;

        public C0046a() {
            a(a.b(Locale.getDefault()));
        }

        public C0046a(Locale locale) {
            a(a.b(locale));
        }

        public C0046a(boolean z) {
            a(z);
        }

        private void a(boolean z) {
            this.f1857a = z;
            this.f1859c = a.f1853a;
            this.f1858b = 2;
        }

        private static a b(boolean z) {
            return z ? a.f1855c : a.f1854b;
        }

        public final a a() {
            return (this.f1858b == 2 && this.f1859c == a.f1853a) ? b(this.f1857a) : new a(this.f1857a, this.f1858b, this.f1859c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/a$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static final byte[] f1860a = new byte[1792];

        /* renamed from: b  reason: collision with root package name */
        private final CharSequence f1861b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f1862c;

        /* renamed from: d  reason: collision with root package name */
        private final int f1863d;
        private int e;
        private char f;

        static {
            for (int i = 0; i < 1792; i++) {
                f1860a[i] = Character.getDirectionality(i);
            }
        }

        b(CharSequence charSequence, boolean z) {
            this.f1861b = charSequence;
            this.f1862c = z;
            this.f1863d = charSequence.length();
        }

        private static byte a(char c2) {
            return c2 < 1792 ? f1860a[c2] : Character.getDirectionality(c2);
        }

        private byte c() {
            char charAt = this.f1861b.charAt(this.e);
            this.f = charAt;
            if (Character.isHighSurrogate(charAt)) {
                int codePointAt = Character.codePointAt(this.f1861b, this.e);
                this.e += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.e++;
            byte a2 = a(this.f);
            byte b2 = a2;
            if (this.f1862c) {
                char c2 = this.f;
                if (c2 == '<') {
                    b2 = e();
                } else {
                    b2 = a2;
                    if (c2 == '&') {
                        b2 = g();
                    }
                }
            }
            return b2;
        }

        private byte d() {
            char charAt = this.f1861b.charAt(this.e - 1);
            this.f = charAt;
            if (Character.isLowSurrogate(charAt)) {
                int codePointBefore = Character.codePointBefore(this.f1861b, this.e);
                this.e -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.e--;
            byte a2 = a(this.f);
            byte b2 = a2;
            if (this.f1862c) {
                char c2 = this.f;
                if (c2 == '>') {
                    b2 = f();
                } else {
                    b2 = a2;
                    if (c2 == ';') {
                        b2 = h();
                    }
                }
            }
            return b2;
        }

        private byte e() {
            char charAt;
            int i = this.e;
            while (true) {
                int i2 = this.e;
                if (i2 < this.f1863d) {
                    CharSequence charSequence = this.f1861b;
                    this.e = i2 + 1;
                    char charAt2 = charSequence.charAt(i2);
                    this.f = charAt2;
                    if (charAt2 == '>') {
                        return (byte) 12;
                    }
                    if (charAt2 == '\"' || charAt2 == '\'') {
                        do {
                            int i3 = this.e;
                            if (i3 < this.f1863d) {
                                CharSequence charSequence2 = this.f1861b;
                                this.e = i3 + 1;
                                charAt = charSequence2.charAt(i3);
                                this.f = charAt;
                            }
                        } while (charAt != charAt2);
                    }
                } else {
                    this.e = i;
                    this.f = (char) 60;
                    return (byte) 13;
                }
            }
        }

        private byte f() {
            char charAt;
            int i = this.e;
            while (true) {
                int i2 = this.e;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f1861b;
                int i3 = i2 - 1;
                this.e = i3;
                char charAt2 = charSequence.charAt(i3);
                this.f = charAt2;
                if (charAt2 != '<') {
                    if (charAt2 == '>') {
                        break;
                    } else if (charAt2 == '\"' || charAt2 == '\'') {
                        do {
                            int i4 = this.e;
                            if (i4 > 0) {
                                CharSequence charSequence2 = this.f1861b;
                                int i5 = i4 - 1;
                                this.e = i5;
                                charAt = charSequence2.charAt(i5);
                                this.f = charAt;
                            }
                        } while (charAt != charAt2);
                    }
                } else {
                    return (byte) 12;
                }
            }
            this.e = i;
            this.f = (char) 62;
            return (byte) 13;
        }

        private byte g() {
            char charAt;
            do {
                int i = this.e;
                if (i >= this.f1863d) {
                    return (byte) 12;
                }
                CharSequence charSequence = this.f1861b;
                this.e = i + 1;
                charAt = charSequence.charAt(i);
                this.f = charAt;
            } while (charAt != ';');
            return (byte) 12;
        }

        private byte h() {
            char charAt;
            int i = this.e;
            do {
                int i2 = this.e;
                if (i2 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f1861b;
                int i3 = i2 - 1;
                this.e = i3;
                charAt = charSequence.charAt(i3);
                this.f = charAt;
                if (charAt == '&') {
                    return (byte) 12;
                }
            } while (charAt != ';');
            this.e = i;
            this.f = (char) 59;
            return (byte) 13;
        }

        final int a() {
            this.e = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.e < this.f1863d && i == 0) {
                byte c2 = c();
                if (c2 != 0) {
                    if (c2 == 1 || c2 == 2) {
                        if (i3 == 0) {
                            return 1;
                        }
                    } else if (c2 != 9) {
                        switch (c2) {
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
            while (this.e > 0) {
                switch (d()) {
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

        final int b() {
            this.e = this.f1863d;
            int i = 0;
            int i2 = 0;
            while (this.e > 0) {
                byte d2 = d();
                if (d2 != 0) {
                    if (d2 == 1 || d2 == 2) {
                        if (i == 0) {
                            return 1;
                        }
                        if (i2 == 0) {
                            i2 = i;
                        }
                    } else if (d2 != 9) {
                        switch (d2) {
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
        d dVar = e.f1880c;
        f1853a = dVar;
        f1854b = new a(false, 2, dVar);
        f1855c = new a(true, 2, dVar);
    }

    a(boolean z, int i, d dVar) {
        this.f = z;
        this.g = i;
        this.h = dVar;
    }

    public static a a() {
        return new C0046a().a();
    }

    public static a a(Locale locale) {
        return new C0046a(locale).a();
    }

    private CharSequence a(CharSequence charSequence, d dVar, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean a2 = dVar.a(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (b()) {
            spannableStringBuilder.append((CharSequence) b(charSequence, a2 ? e.f1879b : e.f1878a));
        }
        if (a2 != this.f) {
            spannableStringBuilder.append(a2 ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        spannableStringBuilder.append((CharSequence) a(charSequence, a2 ? e.f1879b : e.f1878a));
        return spannableStringBuilder;
    }

    private String a(CharSequence charSequence, d dVar) {
        boolean a2 = dVar.a(charSequence, charSequence.length());
        return (this.f || (!a2 && b(charSequence) != 1)) ? this.f ? (!a2 || b(charSequence) == -1) ? e : "" : "" : f1856d;
    }

    private static int b(CharSequence charSequence) {
        return new b(charSequence, false).b();
    }

    private String b(CharSequence charSequence, d dVar) {
        boolean a2 = dVar.a(charSequence, charSequence.length());
        return (this.f || (!a2 && c(charSequence) != 1)) ? this.f ? (!a2 || c(charSequence) == -1) ? e : "" : "" : f1856d;
    }

    private boolean b() {
        return (this.g & 2) != 0;
    }

    static boolean b(Locale locale) {
        return f.a(locale) == 1;
    }

    private static int c(CharSequence charSequence) {
        return new b(charSequence, false).a();
    }

    public final CharSequence a(CharSequence charSequence) {
        return a(charSequence, this.h, true);
    }

    public final String a(String str) {
        return a(str, this.h);
    }

    public final String a(String str, d dVar) {
        if (str == null) {
            return null;
        }
        return a(str, dVar, true).toString();
    }
}
