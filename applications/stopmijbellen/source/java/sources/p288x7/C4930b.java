package p288x7;

import android.support.p012v4.media.C0082b;
import javax.security.auth.x500.X500Principal;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: x7.b */
/* loaded from: classes2-dex2jar.jar:x7/b.class */
public final class C4930b {

    /* renamed from: a */
    public final String f15041a;

    /* renamed from: b */
    public final int f15042b;

    /* renamed from: c */
    public int f15043c;

    /* renamed from: d */
    public int f15044d;

    /* renamed from: e */
    public int f15045e;

    /* renamed from: f */
    public int f15046f;

    /* renamed from: g */
    public char[] f15047g;

    public C4930b(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f15041a = name;
        this.f15042b = name.length();
    }

    /* renamed from: a */
    public final int m242a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.f15042b) {
            StringBuilder m8752j = C0082b.m8752j("Malformed DN: ");
            m8752j.append(this.f15041a);
            throw new IllegalStateException(m8752j.toString());
        }
        char[] cArr = this.f15047g;
        char c = cArr[i];
        if (c >= '0' && c <= '9') {
            i2 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i2 = c - 'W';
        } else if (c < 'A' || c > 'F') {
            StringBuilder m8752j2 = C0082b.m8752j("Malformed DN: ");
            m8752j2.append(this.f15041a);
            throw new IllegalStateException(m8752j2.toString());
        } else {
            i2 = c - '7';
        }
        char c2 = cArr[i4];
        if (c2 >= '0' && c2 <= '9') {
            i3 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i3 = c2 - 'W';
        } else if (c2 < 'A' || c2 > 'F') {
            StringBuilder m8752j3 = C0082b.m8752j("Malformed DN: ");
            m8752j3.append(this.f15041a);
            throw new IllegalStateException(m8752j3.toString());
        } else {
            i3 = c2 - '7';
        }
        return (i2 << 4) + i3;
    }

    /* renamed from: b */
    public final char m241b() {
        char c;
        int i;
        int i2;
        int i3 = this.f15043c + 1;
        this.f15043c = i3;
        if (i3 == this.f15042b) {
            StringBuilder m8752j = C0082b.m8752j("Unexpected end of DN: ");
            m8752j.append(this.f15041a);
            throw new IllegalStateException(m8752j.toString());
        }
        char[] cArr = this.f15047g;
        char c2 = cArr[i3];
        if (c2 != ' ' && c2 != '%' && c2 != '\\' && c2 != '_' && c2 != '\"' && c2 != '#') {
            switch (c2) {
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    break;
                default:
                    switch (c2) {
                        case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                        case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                        case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                            break;
                        default:
                            int m242a = m242a(i3);
                            this.f15043c++;
                            if (m242a >= 128) {
                                c = '?';
                                if (m242a >= 192) {
                                    c = '?';
                                    if (m242a <= 247) {
                                        if (m242a <= 223) {
                                            i = m242a & 31;
                                            i2 = 1;
                                        } else if (m242a <= 239) {
                                            i2 = 2;
                                            i = m242a & 15;
                                        } else {
                                            i2 = 3;
                                            i = m242a & 7;
                                        }
                                        int i4 = 0;
                                        while (true) {
                                            m242a = i;
                                            if (i4 < i2) {
                                                int i5 = this.f15043c + 1;
                                                this.f15043c = i5;
                                                c = '?';
                                                if (i5 != this.f15042b) {
                                                    if (this.f15047g[i5] != '\\') {
                                                        c = '?';
                                                    } else {
                                                        int i6 = i5 + 1;
                                                        this.f15043c = i6;
                                                        int m242a2 = m242a(i6);
                                                        this.f15043c++;
                                                        if ((m242a2 & 192) != 128) {
                                                            c = '?';
                                                        } else {
                                                            i = (i << 6) + (m242a2 & 63);
                                                            i4++;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                return c;
                            }
                            c = (char) m242a;
                            return c;
                    }
            }
        }
        return cArr[i3];
    }

    /* renamed from: c */
    public final String m240c() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        while (true) {
            i = this.f15043c;
            i2 = this.f15042b;
            if (i >= i2 || this.f15047g[i] != ' ') {
                break;
            }
            this.f15043c = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.f15044d = i;
        this.f15043c = i + 1;
        while (true) {
            i3 = this.f15043c;
            i4 = this.f15042b;
            if (i3 >= i4) {
                break;
            }
            char[] cArr = this.f15047g;
            if (cArr[i3] == '=' || cArr[i3] == ' ') {
                break;
            }
            this.f15043c = i3 + 1;
        }
        if (i3 >= i4) {
            StringBuilder m8752j = C0082b.m8752j("Unexpected end of DN: ");
            m8752j.append(this.f15041a);
            throw new IllegalStateException(m8752j.toString());
        }
        this.f15045e = i3;
        if (this.f15047g[i3] == ' ') {
            while (true) {
                i5 = this.f15043c;
                i6 = this.f15042b;
                if (i5 >= i6) {
                    break;
                }
                char[] cArr2 = this.f15047g;
                if (cArr2[i5] == '=' || cArr2[i5] != ' ') {
                    break;
                }
                this.f15043c = i5 + 1;
            }
            if (this.f15047g[i5] != '=' || i5 == i6) {
                StringBuilder m8752j2 = C0082b.m8752j("Unexpected end of DN: ");
                m8752j2.append(this.f15041a);
                throw new IllegalStateException(m8752j2.toString());
            }
        }
        this.f15043c++;
        while (true) {
            int i7 = this.f15043c;
            if (i7 >= this.f15042b || this.f15047g[i7] != ' ') {
                break;
            }
            this.f15043c = i7 + 1;
        }
        int i8 = this.f15045e;
        int i9 = this.f15044d;
        if (i8 - i9 > 4) {
            char[] cArr3 = this.f15047g;
            if (cArr3[i9 + 3] == '.' && ((cArr3[i9] == 'O' || cArr3[i9] == 'o') && ((cArr3[i9 + 1] == 'I' || cArr3[i9 + 1] == 'i') && (cArr3[i9 + 2] == 'D' || cArr3[i9 + 2] == 'd')))) {
                this.f15044d = i9 + 4;
            }
        }
        char[] cArr4 = this.f15047g;
        int i10 = this.f15044d;
        return new String(cArr4, i10, i8 - i10);
    }
}
