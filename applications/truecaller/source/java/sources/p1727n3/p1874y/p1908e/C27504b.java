package p1727n3.p1874y.p1908e;

import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.text.style.UpdateAppearance;
import android.util.Log;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import n3.y.e.c;
import n3.y.e.z;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.e.b */
/* loaded from: classes-dex2jar.jar:n3/y/e/b.class */
public class C27504b {

    /* renamed from: h */
    public static final boolean f77434h = Log.isLoggable("Cea608CCParser", 3);

    /* renamed from: a */
    public final AbstractC27508d f77435a;

    /* renamed from: b */
    public int f77436b = 1;

    /* renamed from: c */
    public int f77437c = 4;

    /* renamed from: d */
    public int f77438d = -1;

    /* renamed from: e */
    public C27507c f77439e = new C27507c();

    /* renamed from: f */
    public C27507c f77440f = new C27507c();

    /* renamed from: g */
    public C27507c f77441g = new C27507c();

    /* renamed from: n3.y.e.b$a */
    /* loaded from: classes-dex2jar.jar:n3/y/e/b$a.class */
    public static class C27505a {

        /* renamed from: d */
        public static final String[] f77442d = {"RCL", "BS", "AOF", "AON", "DER", "RU2", "RU3", "RU4", "FON", "RDC", "TR", "RTD", "EDM", "CR", "ENM", "EOC"};

        /* renamed from: e */
        public static final String[] f77443e = {"®", "°", "½", "¿", "™", "¢", "£", "♪", "à", " ", "è", "â", "ê", "î", "ô", "û"};

        /* renamed from: f */
        public static final String[] f77444f = {"Á", "É", "Ó", "Ú", "Ü", "ü", "‘", "¡", "*", "'", "—", "©", "℠", "•", "“", "”", "À", "Â", "Ç", "È", "Ê", "Ë", "ë", "Î", "Ï", "ï", "Ô", "Ù", "ù", "Û", "«", "»"};

        /* renamed from: g */
        public static final String[] f77445g = {"Ã", "ã", "Í", "Ì", "ì", "Ò", "ò", "Õ", "õ", "{", "}", "\\", "^", AnalyticsConstants.DELIMITER_MAIN, "|", "~", "Ä", "ä", "Ö", "ö", "ß", "¥", "¤", "│", "Å", "å", "Ø", "ø", "┌", "┐", "└", "┘"};

        /* renamed from: a */
        public final byte f77446a;

        /* renamed from: b */
        public final byte f77447b;

        /* renamed from: c */
        public final byte f77448c;

        public C27505a(byte b, byte b2, byte b3) {
            this.f77446a = b;
            this.f77447b = b2;
            this.f77448c = b3;
        }

        /* renamed from: a */
        public final char m189a(byte b) {
            char c;
            if (b == 42) {
                c = 225;
            } else if (b != 92) {
                switch (b) {
                    case 94:
                        c = 237;
                        break;
                    case 95:
                        c = 243;
                        break;
                    case 96:
                        c = 250;
                        break;
                    default:
                        switch (b) {
                            case 123:
                                c = 231;
                                break;
                            case 124:
                                c = 247;
                                break;
                            case 125:
                                c = 209;
                                break;
                            case 126:
                                c = 241;
                                break;
                            case Constants.ERR_WATERMARKR_INFO /* 127 */:
                                c = 9608;
                                break;
                            default:
                                c = (char) b;
                                break;
                        }
                }
            } else {
                c = 233;
            }
            return c;
        }

        /* renamed from: b */
        public int m188b() {
            byte b;
            byte b2 = this.f77447b;
            if ((b2 == 20 || b2 == 28) && (b = this.f77448c) >= 32 && b <= 47) {
                return b;
            }
            return -1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x00cc, code lost:
            if (r0 == 27) goto L40;
         */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String m187c() {
            /*
                Method dump skipped, instructions count: 242
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1908e.C27504b.C27505a.m187c():java.lang.String");
        }

        /* renamed from: d */
        public C27510g m186d() {
            byte b;
            byte b2 = this.f77447b;
            if ((b2 == 17 || b2 == 25) && (b = this.f77448c) >= 32 && b <= 47) {
                int i = (b >> 1) & 7;
                int i2 = (b & 1) != 0 ? 2 : 0;
                int i3 = i2;
                int i4 = i;
                if (i == 7) {
                    i3 = i2 | 1;
                    i4 = 0;
                }
                return new C27510g(i3, i4);
            }
            return null;
        }

        /* renamed from: e */
        public f m185e() {
            f fVar;
            byte b = this.f77447b;
            if ((b & 112) == 16) {
                byte b2 = this.f77448c;
                if ((b2 & 64) != 64) {
                    return null;
                }
                if ((b & 7) == 0 && (b2 & 32) != 0) {
                    return null;
                }
                int i = new int[]{11, 1, 3, 12, 14, 5, 7, 9}[b & 7] + ((b2 & 32) >> 5);
                int i2 = 0;
                int i3 = (b2 & 1) != 0 ? 2 : 0;
                if ((b2 & 16) != 0) {
                    fVar = new f(i, ((b2 >> 1) & 7) * 4, i3, 0);
                } else {
                    int i4 = (b2 >> 1) & 7;
                    if (i4 == 7) {
                        i3 |= 1;
                    } else {
                        i2 = i4;
                    }
                    fVar = new f(i, -1, i3, i2);
                }
                return fVar;
            }
            return null;
        }

        /* renamed from: f */
        public int m184f() {
            byte b;
            byte b2 = this.f77447b;
            if ((b2 == 23 || b2 == 31) && (b = this.f77448c) >= 33 && b <= 35) {
                return b & 3;
            }
            return 0;
        }

        /* renamed from: g */
        public boolean m183g() {
            byte b;
            byte b2 = this.f77447b;
            boolean z = true;
            if (!(b2 >= 32 && b2 <= Byte.MAX_VALUE)) {
                z = true;
                if (!((b2 == 17 || b2 == 25) && (b = this.f77448c) >= 48 && b <= 63)) {
                    z = m182h();
                }
            }
            return z;
        }

        /* renamed from: h */
        public boolean m182h() {
            byte b;
            byte b2 = this.f77447b;
            return (b2 == 18 || b2 == 26 || b2 == 19 || b2 == 27) && (b = this.f77448c) >= 32 && b <= 63;
        }

        public String toString() {
            if (this.f77447b >= 16 || this.f77448c >= 16) {
                int m188b = m188b();
                if (m188b != -1) {
                    return String.format("[%d]%s", Byte.valueOf(this.f77446a), f77442d[m188b - 32]);
                }
                int m184f = m184f();
                if (m184f > 0) {
                    return String.format("[%d]Tab%d", Byte.valueOf(this.f77446a), Integer.valueOf(m184f));
                }
                f m185e = m185e();
                if (m185e != null) {
                    return String.format("[%d]PAC: %s", Byte.valueOf(this.f77446a), m185e.toString());
                }
                C27510g m186d = m186d();
                return m186d != null ? String.format("[%d]Mid-row: %s", Byte.valueOf(this.f77446a), m186d.toString()) : m183g() ? String.format("[%d]Displayable: %s (%02x %02x)", Byte.valueOf(this.f77446a), m187c(), Byte.valueOf(this.f77447b), Byte.valueOf(this.f77448c)) : String.format("[%d]Invalid: %02x %02x", Byte.valueOf(this.f77446a), Byte.valueOf(this.f77447b), Byte.valueOf(this.f77448c));
            }
            return String.format("[%d]Null: %02x %02x", Byte.valueOf(this.f77446a), Byte.valueOf(this.f77447b), Byte.valueOf(this.f77448c));
        }
    }

    /* renamed from: n3.y.e.b$b */
    /* loaded from: classes-dex2jar.jar:n3/y/e/b$b.class */
    public static class C27506b {

        /* renamed from: a */
        public final StringBuilder f77449a;

        /* renamed from: b */
        public final C27510g[] f77450b;

        /* renamed from: c */
        public final C27510g[] f77451c;

        public C27506b(String str) {
            StringBuilder sb = new StringBuilder(str);
            this.f77449a = sb;
            this.f77450b = new C27510g[sb.length()];
            this.f77451c = new C27510g[sb.length()];
        }

        /* renamed from: a */
        public void m181a(SpannableStringBuilder spannableStringBuilder, C27510g c27510g, int i, int i2) {
            if ((c27510g.f77458a & 1) != 0) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
            }
            if ((c27510g.f77458a & 2) != 0) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
            }
        }

        /* renamed from: b */
        public void m180b(int i, char c) {
            this.f77449a.setCharAt(i, c);
            this.f77450b[i] = null;
        }
    }

    /* renamed from: n3.y.e.b$c */
    /* loaded from: classes-dex2jar.jar:n3/y/e/b$c.class */
    public static class C27507c {

        /* renamed from: a */
        public final String f77452a;

        /* renamed from: b */
        public final C27506b[] f77453b = new C27506b[17];

        /* renamed from: c */
        public int f77454c;

        /* renamed from: d */
        public int f77455d;

        public C27507c() {
            char[] cArr = new char[34];
            Arrays.fill(cArr, (char) 160);
            this.f77452a = new String(cArr);
        }

        /* renamed from: b */
        public static int m178b(int i, int i2, int i3) {
            if (i >= i2) {
                i2 = i;
                if (i > i3) {
                    i2 = i3;
                }
            }
            return i2;
        }

        /* renamed from: a */
        public void m179a() {
            m175e(-1);
            C27506b[] c27506bArr = this.f77453b;
            int i = this.f77454c;
            if (c27506bArr[i] != null) {
                c27506bArr[i].m180b(this.f77455d, (char) 160);
                if (this.f77455d != 31) {
                    return;
                }
                this.f77453b[this.f77454c].m180b(32, (char) 160);
            }
        }

        /* renamed from: c */
        public void m177c() {
            int i = 0;
            while (true) {
                C27506b[] c27506bArr = this.f77453b;
                if (i >= c27506bArr.length) {
                    this.f77454c = 15;
                    this.f77455d = 1;
                    return;
                }
                c27506bArr[i] = null;
                i++;
            }
        }

        /* renamed from: d */
        public final C27506b m176d(int i) {
            C27506b[] c27506bArr = this.f77453b;
            if (c27506bArr[i] == null) {
                c27506bArr[i] = new C27506b(this.f77452a);
            }
            return this.f77453b[i];
        }

        /* renamed from: e */
        public final void m175e(int i) {
            this.f77455d = m178b(this.f77455d + i, 1, 32);
        }

        /* renamed from: f */
        public final void m174f(int i, int i2) {
            this.f77454c = m178b(i, 1, 15);
            this.f77455d = m178b(i2, 1, 32);
        }
    }

    /* renamed from: n3.y.e.b$d */
    /* loaded from: classes-dex2jar.jar:n3/y/e/b$d.class */
    public interface AbstractC27508d {
    }

    /* renamed from: n3.y.e.b$e */
    /* loaded from: classes-dex2jar.jar:n3/y/e/b$e.class */
    public static class C27509e extends CharacterStyle implements UpdateAppearance {

        /* renamed from: a */
        public int f77456a;

        public C27509e(int i) {
            this.f77456a = i;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.bgColor = this.f77456a;
        }
    }

    /* renamed from: n3.y.e.b$g */
    /* loaded from: classes-dex2jar.jar:n3/y/e/b$g.class */
    public static class C27510g {

        /* renamed from: c */
        public static final String[] f77457c = {"WHITE", "GREEN", "BLUE", "CYAN", "RED", "YELLOW", "MAGENTA", "INVALID"};

        /* renamed from: a */
        public final int f77458a;

        /* renamed from: b */
        public final int f77459b;

        public C27510g(int i, int i2) {
            this.f77458a = i;
            this.f77459b = i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("{");
            m8728C.append(f77457c[this.f77459b]);
            if ((this.f77458a & 1) != 0) {
                m8728C.append(", ITALICS");
            }
            if ((this.f77458a & 2) != 0) {
                m8728C.append(", UNDERLINE");
            }
            m8728C.append("}");
            return m8728C.toString();
        }
    }

    public C27504b(AbstractC27508d abstractC27508d) {
        this.f77435a = abstractC27508d;
    }

    /* renamed from: a */
    public final C27507c m191a() {
        int i = this.f77436b;
        return (i == 1 || i == 2) ? this.f77439e : i != 3 ? i != 4 ? this.f77439e : this.f77441g : this.f77440f;
    }

    /* renamed from: b */
    public final void m190b() {
        SpannableStringBuilder spannableStringBuilder;
        C27510g c27510g;
        int i;
        c.a aVar = this.f77435a;
        if (aVar != null) {
            C27497a c27497a = ((f) aVar).c;
            C27507c c27507c = this.f77439e;
            Objects.requireNonNull(c27507c);
            ArrayList arrayList = new ArrayList(15);
            int i2 = 1;
            while (true) {
                int i3 = 0;
                if (i2 > 15) {
                    break;
                }
                C27506b[] c27506bArr = c27507c.f77453b;
                if (c27506bArr[i2] != null) {
                    C27506b c27506b = c27506bArr[i2];
                    Objects.requireNonNull(c27506b);
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(c27506b.f77449a);
                    int i4 = -1;
                    int i5 = -1;
                    C27510g c27510g2 = null;
                    while (i3 < c27506b.f77449a.length()) {
                        C27510g[] c27510gArr = c27506b.f77450b;
                        if (c27510gArr[i3] != null) {
                            c27510g = c27510gArr[i3];
                        } else {
                            C27510g[] c27510gArr2 = c27506b.f77451c;
                            c27510g = (c27510gArr2[i3] == null || (i4 >= 0 && i5 >= 0)) ? null : c27510gArr2[i3];
                        }
                        int i6 = i4;
                        if (c27510g != null) {
                            if (i4 >= 0 && i5 >= 0) {
                                c27506b.m181a(spannableStringBuilder2, c27510g, i4, i3);
                            }
                            i6 = i3;
                            c27510g2 = c27510g;
                        }
                        if (c27506b.f77449a.charAt(i3) != 160) {
                            i = i5;
                            if (i5 < 0) {
                                i = i3;
                            }
                        } else {
                            i = i5;
                            if (i5 >= 0) {
                                if (c27506b.f77449a.charAt(i5) != ' ') {
                                    i5--;
                                }
                                int i7 = c27506b.f77449a.charAt(i3 - 1) == ' ' ? i3 : i3 + 1;
                                spannableStringBuilder2.setSpan(new C27509e(c27497a.f77409b), i5, i7, 33);
                                if (i6 >= 0) {
                                    c27506b.m181a(spannableStringBuilder2, c27510g2, i6, i7);
                                }
                                i = -1;
                            }
                        }
                        i3++;
                        i4 = i6;
                        i5 = i;
                    }
                    spannableStringBuilder = spannableStringBuilder2;
                } else {
                    spannableStringBuilder = null;
                }
                arrayList.add(spannableStringBuilder);
                i2++;
            }
            SpannableStringBuilder[] spannableStringBuilderArr = (SpannableStringBuilder[]) arrayList.toArray(new SpannableStringBuilder[15]);
            c.a aVar2 = aVar;
            c.a.a aVar3 = ((f) aVar2).e;
            Objects.requireNonNull(aVar3);
            for (int i8 = 0; i8 < 15; i8++) {
                if (spannableStringBuilderArr[i8] != null) {
                    aVar3.a[i8].setText(spannableStringBuilderArr[i8], TextView.BufferType.SPANNABLE);
                    aVar3.a[i8].setVisibility(0);
                } else {
                    aVar3.a[i8].setVisibility(4);
                }
            }
            z.a aVar4 = ((f) aVar2).d;
            if (aVar4 == null) {
                return;
            }
            aVar4.a.invalidate();
        }
    }
}
