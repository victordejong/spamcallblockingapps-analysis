package p276w6;

import android.support.p012v4.media.C0082b;
import com.google.gson.stream.MalformedJsonException;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: w6.a */
/* loaded from: classes-dex2jar.jar:w6/a.class */
public class C4740a implements Closeable {

    /* renamed from: p */
    public static final char[] f14602p = ")]}'\n".toCharArray();

    /* renamed from: a */
    public final Reader f14603a;

    /* renamed from: i */
    public long f14611i;

    /* renamed from: j */
    public int f14612j;

    /* renamed from: k */
    public String f14613k;

    /* renamed from: l */
    public int[] f14614l;

    /* renamed from: m */
    public int f14615m;

    /* renamed from: b */
    public boolean f14604b = false;

    /* renamed from: c */
    public final char[] f14605c = new char[1024];

    /* renamed from: d */
    public int f14606d = 0;

    /* renamed from: e */
    public int f14607e = 0;

    /* renamed from: f */
    public int f14608f = 0;

    /* renamed from: g */
    public int f14609g = 0;

    /* renamed from: h */
    public int f14610h = 0;

    /* renamed from: n */
    public String[] f14616n = new String[32];

    /* renamed from: o */
    public int[] f14617o = new int[32];

    public C4740a(Reader reader) {
        int[] iArr = new int[32];
        this.f14614l = iArr;
        this.f14615m = 0;
        this.f14615m = 0 + 1;
        iArr[0] = 6;
        Objects.requireNonNull(reader, "in == null");
        this.f14603a = reader;
    }

    /* renamed from: A */
    public boolean m534A() throws IOException {
        int i = this.f14610h;
        int i2 = i;
        if (i == 0) {
            i2 = m517o();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    /* renamed from: B */
    public final boolean m533B(char c) throws IOException {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case C3681R.styleable.AppCompatTheme_radioButtonStyle /* 91 */:
                        case C3681R.styleable.AppCompatTheme_ratingBarStyleIndicator /* 93 */:
                            return false;
                        case C3681R.styleable.AppCompatTheme_ratingBarStyle /* 92 */:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        m518l();
        return false;
    }

    /* renamed from: D */
    public String m532D() {
        int i = this.f14608f;
        int i2 = this.f14606d;
        int i3 = this.f14609g;
        StringBuilder sb = new StringBuilder();
        sb.append(" at line ");
        sb.append(i + 1);
        sb.append(" column ");
        sb.append((i2 - i3) + 1);
        sb.append(" path ");
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i4 = this.f14615m;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = this.f14614l[i5];
            if (i6 == 1 || i6 == 2) {
                sb2.append('[');
                sb2.append(this.f14617o[i5]);
                sb2.append(']');
            } else if (i6 == 3 || i6 == 4 || i6 == 5) {
                sb2.append('.');
                String[] strArr = this.f14616n;
                if (strArr[i5] != null) {
                    sb2.append(strArr[i5]);
                }
            }
        }
        sb.append(sb2.toString());
        return sb.toString();
    }

    /* renamed from: J */
    public boolean m531J() throws IOException {
        int i = this.f14610h;
        int i2 = i;
        if (i == 0) {
            i2 = m517o();
        }
        if (i2 == 5) {
            this.f14610h = 0;
            int[] iArr = this.f14617o;
            int i3 = this.f14615m - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 != 6) {
            StringBuilder m8752j = C0082b.m8752j("Expected a boolean but was ");
            m8752j.append(C0082b.m8746p(m524Z()));
            m8752j.append(m532D());
            throw new IllegalStateException(m8752j.toString());
        } else {
            this.f14610h = 0;
            int[] iArr2 = this.f14617o;
            int i4 = this.f14615m - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        }
    }

    /* renamed from: K */
    public String m530K() throws IOException {
        String str;
        int i = this.f14610h;
        int i2 = i;
        if (i == 0) {
            i2 = m517o();
        }
        if (i2 == 14) {
            str = m525Y();
        } else if (i2 == 12) {
            str = m527U('\'');
        } else if (i2 != 13) {
            StringBuilder m8752j = C0082b.m8752j("Expected a name but was ");
            m8752j.append(C0082b.m8746p(m524Z()));
            m8752j.append(m532D());
            throw new IllegalStateException(m8752j.toString());
        } else {
            str = m527U('\"');
        }
        this.f14610h = 0;
        this.f14616n[this.f14615m - 1] = str;
        return str;
    }

    /* renamed from: L */
    public final int m529L(boolean z) throws IOException {
        boolean z2;
        char[] cArr = this.f14605c;
        int i = this.f14606d;
        int i2 = this.f14607e;
        while (true) {
            int i3 = i2;
            int i4 = i;
            int i5 = i3;
            if (i == i3) {
                this.f14606d = i;
                if (!m514s(1)) {
                    if (!z) {
                        return -1;
                    }
                    StringBuilder m8752j = C0082b.m8752j("End of input");
                    m8752j.append(m532D());
                    throw new EOFException(m8752j.toString());
                }
                i4 = this.f14606d;
                i5 = this.f14607e;
            }
            i = i4 + 1;
            char c = cArr[i4];
            if (c == '\n') {
                this.f14608f++;
                this.f14609g = i;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.f14606d = i;
                    if (i == i5) {
                        this.f14606d = i - 1;
                        boolean m514s = m514s(2);
                        this.f14606d++;
                        if (!m514s) {
                            return c;
                        }
                    }
                    m518l();
                    int i6 = this.f14606d;
                    char c2 = cArr[i6];
                    if (c2 == '*') {
                        this.f14606d = i6 + 1;
                        while (true) {
                            int i7 = 0;
                            if (this.f14606d + 2 > this.f14607e && !m514s(2)) {
                                z2 = false;
                                break;
                            }
                            char[] cArr2 = this.f14605c;
                            int i8 = this.f14606d;
                            if (cArr2[i8] != '\n') {
                                while (true) {
                                    z2 = true;
                                    if (i7 >= 2) {
                                        break;
                                    } else if (this.f14605c[this.f14606d + i7] != "*/".charAt(i7)) {
                                        break;
                                    } else {
                                        i7++;
                                    }
                                }
                            } else {
                                this.f14608f++;
                                this.f14609g = i8 + 1;
                            }
                            this.f14606d++;
                        }
                        if (!z2) {
                            m521c0("Unterminated comment");
                            throw null;
                        }
                        i = this.f14606d + 2;
                        i2 = this.f14607e;
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.f14606d = i6 + 1;
                        m522b0();
                        i = this.f14606d;
                        i2 = this.f14607e;
                    }
                } else if (c != '#') {
                    this.f14606d = i;
                    return c;
                } else {
                    this.f14606d = i;
                    m518l();
                    m522b0();
                    i = this.f14606d;
                    i2 = this.f14607e;
                }
            }
            i2 = i5;
        }
    }

    /* renamed from: P */
    public void m528P() throws IOException {
        int i = this.f14610h;
        int i2 = i;
        if (i == 0) {
            i2 = m517o();
        }
        if (i2 != 7) {
            StringBuilder m8752j = C0082b.m8752j("Expected null but was ");
            m8752j.append(C0082b.m8746p(m524Z()));
            m8752j.append(m532D());
            throw new IllegalStateException(m8752j.toString());
        }
        this.f14610h = 0;
        int[] iArr = this.f14617o;
        int i3 = this.f14615m - 1;
        iArr[i3] = iArr[i3] + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0255, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0067, code lost:
        r7.f14606d = r0;
        r0 = (r0 - r11) - 1;
        r16 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007a, code lost:
        if (r10 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007d, code lost:
        r16 = new java.lang.StringBuilder(java.lang.Math.max((r0 + 1) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0091, code lost:
        r16.append(r0, r11, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a4, code lost:
        if (r7.f14606d != r7.f14607e) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ac, code lost:
        if (m514s(1) == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b2, code lost:
        m521c0("Unterminated escape sequence");
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ba, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00bb, code lost:
        r0 = r7.f14605c;
        r0 = r7.f14606d;
        r0 = r0 + 1;
        r7.f14606d = r0;
        r0 = r0[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00dc, code lost:
        if (r0 == '\n') goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00df, code lost:
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e7, code lost:
        if (r0 == '\"') goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ea, code lost:
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00f2, code lost:
        if (r0 == '\'') goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f5, code lost:
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00fd, code lost:
        if (r0 == '/') goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0100, code lost:
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0108, code lost:
        if (r0 == '\\') goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x010f, code lost:
        if (r0 == 'b') goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0116, code lost:
        if (r0 == 'f') goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0119, code lost:
        r17 = '\n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0121, code lost:
        if (r0 == 'n') goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0128, code lost:
        if (r0 == 'r') goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012f, code lost:
        if (r0 == 't') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0136, code lost:
        if (r0 != 'u') goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0141, code lost:
        if ((r0 + 4) <= r7.f14607e) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0149, code lost:
        if (m514s(4) == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x014f, code lost:
        m521c0("Unterminated escape sequence");
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0157, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0158, code lost:
        r11 = 0;
        r0 = r7.f14606d;
        r12 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x016b, code lost:
        if (r12 >= (r0 + 4)) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x016e, code lost:
        r0 = r7.f14605c[r12];
        r0 = (char) (r11 << 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0182, code lost:
        if (r0 < '0') goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0189, code lost:
        if (r0 > '9') goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x018c, code lost:
        r11 = r0 - '0';
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x019a, code lost:
        if (r0 < 'a') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01a1, code lost:
        if (r0 > 'f') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01a4, code lost:
        r11 = r0 - 'a';
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01b2, code lost:
        if (r0 < 'A') goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01b9, code lost:
        if (r0 > 'F') goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01bc, code lost:
        r11 = r0 - 'A';
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01c3, code lost:
        r11 = r11 + 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01c6, code lost:
        r11 = (char) (r11 + r0);
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01d4, code lost:
        r0 = android.support.p012v4.media.C0082b.m8752j("\\u");
        r0.append(new java.lang.String(r7.f14605c, r7.f14606d, 4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01fa, code lost:
        throw new java.lang.NumberFormatException(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01fb, code lost:
        r7.f14606d += 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0208, code lost:
        m521c0("Invalid escape sequence");
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0210, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0211, code lost:
        r17 = '\t';
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x021c, code lost:
        r17 = '\r';
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0227, code lost:
        r17 = '\f';
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0232, code lost:
        r17 = '\b';
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x023d, code lost:
        r7.f14608f++;
        r7.f14609g = r0;
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0251, code lost:
        r17 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x028d, code lost:
        r16 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0291, code lost:
        if (r10 != null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0294, code lost:
        r16 = new java.lang.StringBuilder(java.lang.Math.max((r13 - r11) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x02a9, code lost:
        r16.append(r0, r11, r13 - r11);
        r7.f14606d = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02c2, code lost:
        if (m514s(1) == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x02cb, code lost:
        m521c0("Unterminated string");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02d3, code lost:
        throw null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* renamed from: U */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m527U(char r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p276w6.C4740a.m527U(char):java.lang.String");
    }

    /* renamed from: W */
    public String m526W() throws IOException {
        String str;
        int i = this.f14610h;
        int i2 = i;
        if (i == 0) {
            i2 = m517o();
        }
        if (i2 == 10) {
            str = m525Y();
        } else if (i2 == 8) {
            str = m527U('\'');
        } else if (i2 == 9) {
            str = m527U('\"');
        } else if (i2 == 11) {
            str = this.f14613k;
            this.f14613k = null;
        } else if (i2 == 15) {
            str = Long.toString(this.f14611i);
        } else if (i2 != 16) {
            StringBuilder m8752j = C0082b.m8752j("Expected a string but was ");
            m8752j.append(C0082b.m8746p(m524Z()));
            m8752j.append(m532D());
            throw new IllegalStateException(m8752j.toString());
        } else {
            str = new String(this.f14605c, this.f14606d, this.f14612j);
            this.f14606d += this.f14612j;
        }
        this.f14610h = 0;
        int[] iArr = this.f14617o;
        int i3 = this.f14615m - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        m518l();
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /* renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m525Y() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p276w6.C4740a.m525Y():java.lang.String");
    }

    /* renamed from: Z */
    public int m524Z() throws IOException {
        int i = this.f14610h;
        int i2 = i;
        if (i == 0) {
            i2 = m517o();
        }
        switch (i2) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: a0 */
    public final void m523a0(int i) {
        int i2 = this.f14615m;
        int[] iArr = this.f14614l;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            int[] iArr3 = new int[i2 * 2];
            String[] strArr = new String[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.f14617o, 0, iArr3, 0, this.f14615m);
            System.arraycopy(this.f14616n, 0, strArr, 0, this.f14615m);
            this.f14614l = iArr2;
            this.f14617o = iArr3;
            this.f14616n = strArr;
        }
        int[] iArr4 = this.f14614l;
        int i3 = this.f14615m;
        this.f14615m = i3 + 1;
        iArr4[i3] = i;
    }

    /* renamed from: b0 */
    public final void m522b0() throws IOException {
        char c;
        do {
            if (this.f14606d >= this.f14607e && !m514s(1)) {
                return;
            }
            char[] cArr = this.f14605c;
            int i = this.f14606d;
            int i2 = i + 1;
            this.f14606d = i2;
            c = cArr[i];
            if (c == '\n') {
                this.f14608f++;
                this.f14609g = i2;
                return;
            }
        } while (c != '\r');
    }

    /* renamed from: c0 */
    public final IOException m521c0(String str) throws IOException {
        StringBuilder m8752j = C0082b.m8752j(str);
        m8752j.append(m532D());
        throw new MalformedJsonException(m8752j.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f14610h = 0;
        this.f14614l[0] = 8;
        this.f14615m = 1;
        this.f14603a.close();
    }

    /* renamed from: d */
    public void m520d() throws IOException {
        int i = this.f14610h;
        int i2 = i;
        if (i == 0) {
            i2 = m517o();
        }
        if (i2 == 3) {
            m523a0(1);
            this.f14617o[this.f14615m - 1] = 0;
            this.f14610h = 0;
            return;
        }
        StringBuilder m8752j = C0082b.m8752j("Expected BEGIN_ARRAY but was ");
        m8752j.append(C0082b.m8746p(m524Z()));
        m8752j.append(m532D());
        throw new IllegalStateException(m8752j.toString());
    }

    /* renamed from: k */
    public void m519k() throws IOException {
        int i = this.f14610h;
        int i2 = i;
        if (i == 0) {
            i2 = m517o();
        }
        if (i2 == 1) {
            m523a0(3);
            this.f14610h = 0;
            return;
        }
        StringBuilder m8752j = C0082b.m8752j("Expected BEGIN_OBJECT but was ");
        m8752j.append(C0082b.m8746p(m524Z()));
        m8752j.append(m532D());
        throw new IllegalStateException(m8752j.toString());
    }

    /* renamed from: l */
    public final void m518l() throws IOException {
        if (this.f14604b) {
            return;
        }
        m521c0("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:161:0x03a4, code lost:
        if (r10 == true) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x03d9, code lost:
        if (m533B(r0) != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x03df, code lost:
        if (r10 != true) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x03e3, code lost:
        if (r8 == false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x03ec, code lost:
        if (r15 != Long.MIN_VALUE) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x03f1, code lost:
        if (r18 == false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x03f8, code lost:
        if (r15 != 0) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x03fd, code lost:
        if (r18 != false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0402, code lost:
        if (r18 == false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0408, code lost:
        r15 = -r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x040d, code lost:
        r5.f14611i = r15;
        r5.f14606d += r17;
        r7 = 15;
        r5.f14610h = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x042d, code lost:
        if (r10 == true) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0433, code lost:
        if (r10 == true) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x043a, code lost:
        if (r10 != true) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x043d, code lost:
        r5.f14612j = r17;
        r7 = 16;
        r5.f14610h = 16;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04a7  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x04a9  */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m517o() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p276w6.C4740a.m517o():int");
    }

    /* renamed from: p */
    public void m516p() throws IOException {
        int i = this.f14610h;
        int i2 = i;
        if (i == 0) {
            i2 = m517o();
        }
        if (i2 != 4) {
            StringBuilder m8752j = C0082b.m8752j("Expected END_ARRAY but was ");
            m8752j.append(C0082b.m8746p(m524Z()));
            m8752j.append(m532D());
            throw new IllegalStateException(m8752j.toString());
        }
        int i3 = this.f14615m - 1;
        this.f14615m = i3;
        int[] iArr = this.f14617o;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.f14610h = 0;
    }

    /* renamed from: r */
    public void m515r() throws IOException {
        int i = this.f14610h;
        int i2 = i;
        if (i == 0) {
            i2 = m517o();
        }
        if (i2 != 2) {
            StringBuilder m8752j = C0082b.m8752j("Expected END_OBJECT but was ");
            m8752j.append(C0082b.m8746p(m524Z()));
            m8752j.append(m532D());
            throw new IllegalStateException(m8752j.toString());
        }
        int i3 = this.f14615m - 1;
        this.f14615m = i3;
        this.f14616n[i3] = null;
        int[] iArr = this.f14617o;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.f14610h = 0;
    }

    /* renamed from: s */
    public final boolean m514s(int i) throws IOException {
        int i2;
        int i3;
        char[] cArr = this.f14605c;
        int i4 = this.f14609g;
        int i5 = this.f14606d;
        this.f14609g = i4 - i5;
        int i6 = this.f14607e;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.f14607e = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.f14607e = 0;
        }
        this.f14606d = 0;
        do {
            Reader reader = this.f14603a;
            int i8 = this.f14607e;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.f14607e + read;
            this.f14607e = i2;
            i3 = i;
            if (this.f14608f == 0) {
                int i9 = this.f14609g;
                i3 = i;
                if (i9 == 0) {
                    i3 = i;
                    if (i2 > 0) {
                        i3 = i;
                        if (cArr[0] == 65279) {
                            this.f14606d++;
                            this.f14609g = i9 + 1;
                            i3 = i + 1;
                        }
                    }
                }
            }
            i = i3;
        } while (i2 < i3);
        return true;
    }

    public String toString() {
        return C4740a.class.getSimpleName() + m532D();
    }
}
