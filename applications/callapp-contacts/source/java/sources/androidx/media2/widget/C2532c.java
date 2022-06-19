package androidx.media2.widget;

import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.text.style.UpdateAppearance;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: androidx.media2.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/c.class */
final class C2532c {

    /* renamed from: g */
    private static final boolean f9622g = Log.isLoggable("Cea608CCParser", 3);

    /* renamed from: a */
    int f9623a = 1;

    /* renamed from: b */
    int f9624b = 4;

    /* renamed from: c */
    int f9625c = -1;

    /* renamed from: d */
    C2535c f9626d = new C2535c();

    /* renamed from: e */
    C2535c f9627e = new C2535c();

    /* renamed from: f */
    C2535c f9628f = new C2535c();

    /* renamed from: h */
    private final AbstractC2536d f9629h;

    /* renamed from: androidx.media2.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$a.class */
    static final class C2533a {

        /* renamed from: d */
        private static final String[] f9630d = {"RCL", "BS", "AOF", "AON", "DER", "RU2", "RU3", "RU4", "FON", "RDC", "TR", "RTD", "EDM", "CR", "ENM", "EOC"};

        /* renamed from: e */
        private static final String[] f9631e = {"®", "°", "½", "¿", "™", "¢", "£", "♪", "à", " ", "è", "â", "ê", "î", "ô", "û"};

        /* renamed from: f */
        private static final String[] f9632f = {"Á", "É", "Ó", "Ú", "Ü", "ü", "‘", "¡", "*", "'", "—", "©", "℠", "•", "“", "”", "À", "Â", "Ç", "È", "Ê", "Ë", "ë", "Î", "Ï", "ï", "Ô", "Ù", "ù", "Û", "«", "»"};

        /* renamed from: g */
        private static final String[] f9633g = {"Ã", "ã", "Í", "Ì", "ì", "Ò", "ò", "Õ", "õ", "{", "}", "\\", "^", "_", "|", "~", "Ä", "ä", "Ö", "ö", "ß", "¥", "¤", "│", "Å", "å", "Ø", "ø", "┌", "┐", "└", "┘"};

        /* renamed from: a */
        private final byte f9634a;

        /* renamed from: b */
        private final byte f9635b;

        /* renamed from: c */
        private final byte f9636c;

        C2533a(byte b, byte b2, byte b3) {
            this.f9634a = b;
            this.f9635b = b2;
            this.f9636c = b3;
        }

        /* renamed from: a */
        private static char m40729a(byte b) {
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
                            case JsonReaderKt.END_OBJ /* 125 */:
                                c = 209;
                                break;
                            case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                                c = 241;
                                break;
                            case Byte.MAX_VALUE:
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

        /* renamed from: a */
        public static C2533a[] m40728a(byte[] bArr) {
            int length = bArr.length / 3;
            C2533a[] c2533aArr = new C2533a[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 3;
                c2533aArr[i] = new C2533a(bArr[i2], bArr[i2 + 1], bArr[i2 + 2]);
            }
            return c2533aArr;
        }

        /* renamed from: h */
        private boolean m40721h() {
            byte b = this.f9635b;
            return b >= 32 && b <= Byte.MAX_VALUE;
        }

        /* renamed from: i */
        private boolean m40720i() {
            byte b;
            byte b2 = this.f9635b;
            return (b2 == 17 || b2 == 25) && (b = this.f9636c) >= 48 && b <= 63;
        }

        /* renamed from: j */
        private String m40719j() {
            byte b = this.f9635b;
            if (b < 32 || b > Byte.MAX_VALUE) {
                return null;
            }
            StringBuilder sb = new StringBuilder(2);
            sb.append(m40729a(this.f9635b));
            byte b2 = this.f9636c;
            if (b2 >= 32 && b2 <= Byte.MAX_VALUE) {
                sb.append(m40729a(b2));
            }
            return sb.toString();
        }

        /* renamed from: k */
        private String m40718k() {
            byte b;
            byte b2 = this.f9635b;
            if ((b2 == 17 || b2 == 25) && (b = this.f9636c) >= 48 && b <= 63) {
                return f9631e[b - 48];
            }
            return null;
        }

        /* renamed from: l */
        private String m40717l() {
            byte b;
            byte b2;
            byte b3 = this.f9635b;
            if ((b3 == 18 || b3 == 26) && (b2 = this.f9636c) >= 32 && b2 <= 63) {
                return f9632f[b2 - 32];
            }
            if ((b3 != 19 && b3 != 27) || (b = this.f9636c) < 32 || b > 63) {
                return null;
            }
            return f9633g[b - 32];
        }

        /* renamed from: a */
        public final int m40730a() {
            byte b;
            byte b2 = this.f9635b;
            if ((b2 == 20 || b2 == 28) && (b = this.f9636c) >= 32 && b <= 47) {
                return b;
            }
            return -1;
        }

        /* renamed from: b */
        public final C2539g m40727b() {
            byte b;
            byte b2 = this.f9635b;
            if ((b2 == 17 || b2 == 25) && (b = this.f9636c) >= 32 && b <= 47) {
                return C2539g.m40705a(b);
            }
            return null;
        }

        /* renamed from: c */
        public final C2538f m40726c() {
            byte b = this.f9635b;
            if ((b & 112) == 16) {
                byte b2 = this.f9636c;
                if ((b2 & 64) != 64) {
                    return null;
                }
                if ((b & 7) == 0 && (b2 & 32) != 0) {
                    return null;
                }
                return C2538f.m40706a(b, b2);
            }
            return null;
        }

        /* renamed from: d */
        public final int m40725d() {
            byte b;
            byte b2 = this.f9635b;
            if ((b2 == 23 || b2 == 31) && (b = this.f9636c) >= 33 && b <= 35) {
                return b & 3;
            }
            return 0;
        }

        /* renamed from: e */
        public final boolean m40724e() {
            return m40721h() || m40720i() || m40722g();
        }

        /* renamed from: f */
        public final String m40723f() {
            String m40719j = m40719j();
            String str = m40719j;
            if (m40719j == null) {
                String m40718k = m40718k();
                str = m40718k;
                if (m40718k == null) {
                    str = m40717l();
                }
            }
            return str;
        }

        /* renamed from: g */
        public final boolean m40722g() {
            byte b;
            byte b2 = this.f9635b;
            return (b2 == 18 || b2 == 26 || b2 == 19 || b2 == 27) && (b = this.f9636c) >= 32 && b <= 63;
        }

        public final String toString() {
            if (this.f9635b >= 16 || this.f9636c >= 16) {
                int m40730a = m40730a();
                if (m40730a != -1) {
                    return String.format("[%d]%s", Byte.valueOf(this.f9634a), f9630d[m40730a - 32]);
                }
                int m40725d = m40725d();
                if (m40725d > 0) {
                    return String.format("[%d]Tab%d", Byte.valueOf(this.f9634a), Integer.valueOf(m40725d));
                }
                C2538f m40726c = m40726c();
                if (m40726c != null) {
                    return String.format("[%d]PAC: %s", Byte.valueOf(this.f9634a), m40726c.toString());
                }
                C2539g m40727b = m40727b();
                return m40727b != null ? String.format("[%d]Mid-row: %s", Byte.valueOf(this.f9634a), m40727b.toString()) : m40724e() ? String.format("[%d]Displayable: %s (%02x %02x)", Byte.valueOf(this.f9634a), m40723f(), Byte.valueOf(this.f9635b), Byte.valueOf(this.f9636c)) : String.format("[%d]Invalid: %02x %02x", Byte.valueOf(this.f9634a), Byte.valueOf(this.f9635b), Byte.valueOf(this.f9636c));
            }
            return String.format("[%d]Null: %02x %02x", Byte.valueOf(this.f9634a), Byte.valueOf(this.f9635b), Byte.valueOf(this.f9636c));
        }
    }

    /* renamed from: androidx.media2.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$b.class */
    public static final class C2534b {

        /* renamed from: a */
        final StringBuilder f9637a;

        /* renamed from: b */
        final C2539g[] f9638b;

        /* renamed from: c */
        final C2539g[] f9639c;

        C2534b(String str) {
            StringBuilder sb = new StringBuilder(str);
            this.f9637a = sb;
            this.f9638b = new C2539g[sb.length()];
            this.f9639c = new C2539g[sb.length()];
        }

        /* renamed from: a */
        private static void m40715a(SpannableStringBuilder spannableStringBuilder, C2539g c2539g, int i, int i2) {
            if ((c2539g.f9648d & 1) != 0) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
            }
            if ((c2539g.f9648d & 2) != 0) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
            }
        }

        /* renamed from: a */
        final SpannableStringBuilder m40714a(C2531b c2531b) {
            C2539g c2539g;
            int i;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f9637a);
            int i2 = 0;
            C2539g c2539g2 = null;
            int i3 = -1;
            int i4 = -1;
            while (true) {
                int i5 = i4;
                if (i2 < this.f9637a.length()) {
                    C2539g[] c2539gArr = this.f9638b;
                    if (c2539gArr[i2] != null) {
                        c2539g = c2539gArr[i2];
                    } else {
                        C2539g[] c2539gArr2 = this.f9639c;
                        c2539g = (c2539gArr2[i2] == null || (i3 >= 0 && i5 >= 0)) ? null : c2539gArr2[i2];
                    }
                    int i6 = i3;
                    if (c2539g != null) {
                        if (i3 >= 0 && i5 >= 0) {
                            m40715a(spannableStringBuilder, c2539g, i3, i2);
                        }
                        i6 = i2;
                        c2539g2 = c2539g;
                    }
                    if (this.f9637a.charAt(i2) != 160) {
                        i = i5;
                        if (i5 < 0) {
                            i = i2;
                        }
                    } else {
                        i = i5;
                        if (i5 >= 0) {
                            if (this.f9637a.charAt(i5) != ' ') {
                                i5--;
                            }
                            int i7 = this.f9637a.charAt(i2 - 1) == ' ' ? i2 : i2 + 1;
                            spannableStringBuilder.setSpan(new C2537e(c2531b.f9612c), i5, i7, 33);
                            if (i6 >= 0) {
                                m40715a(spannableStringBuilder, c2539g2, i6, i7);
                            }
                            i = -1;
                        }
                    }
                    i2++;
                    i3 = i6;
                    i4 = i;
                } else {
                    return spannableStringBuilder;
                }
            }
        }

        /* renamed from: a */
        public final void m40716a(int i, char c) {
            this.f9637a.setCharAt(i, c);
            this.f9638b[i] = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$c.class */
    public static final class C2535c {

        /* renamed from: a */
        final C2534b[] f9640a = new C2534b[17];

        /* renamed from: b */
        int f9641b;

        /* renamed from: c */
        int f9642c;

        /* renamed from: d */
        private final String f9643d;

        C2535c() {
            char[] cArr = new char[34];
            Arrays.fill(cArr, (char) 160);
            this.f9643d = new String(cArr);
        }

        /* renamed from: b */
        private static int m40707b(int i, int i2) {
            if (i <= 0) {
                return 1;
            }
            return i > i2 ? i2 : i;
        }

        /* renamed from: a */
        public final void m40713a() {
            int i = 0;
            while (true) {
                C2534b[] c2534bArr = this.f9640a;
                if (i >= c2534bArr.length) {
                    this.f9641b = 15;
                    this.f9642c = 1;
                    return;
                }
                c2534bArr[i] = null;
                i++;
            }
        }

        /* renamed from: a */
        public final void m40712a(int i) {
            this.f9642c = m40707b(this.f9642c + i, 32);
        }

        /* renamed from: a */
        public final void m40711a(int i, int i2) {
            this.f9641b = m40707b(i, 15);
            this.f9642c = m40707b(i2, 32);
        }

        /* renamed from: a */
        final SpannableStringBuilder[] m40710a(C2531b c2531b) {
            ArrayList arrayList = new ArrayList(15);
            for (int i = 1; i <= 15; i++) {
                C2534b[] c2534bArr = this.f9640a;
                arrayList.add(c2534bArr[i] != null ? c2534bArr[i].m40714a(c2531b) : null);
            }
            return (SpannableStringBuilder[]) arrayList.toArray(new SpannableStringBuilder[15]);
        }

        /* renamed from: b */
        public final C2534b m40708b(int i) {
            C2534b[] c2534bArr = this.f9640a;
            if (c2534bArr[i] == null) {
                c2534bArr[i] = new C2534b(this.f9643d);
            }
            return this.f9640a[i];
        }

        /* renamed from: b */
        public final void m40709b() {
            m40712a(-1);
            C2534b[] c2534bArr = this.f9640a;
            int i = this.f9641b;
            if (c2534bArr[i] != null) {
                c2534bArr[i].m40716a(this.f9642c, (char) 160);
                if (this.f9642c != 31) {
                    return;
                }
                this.f9640a[this.f9641b].m40716a(32, (char) 160);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$d.class */
    public interface AbstractC2536d {
        /* renamed from: a */
        C2531b mo40704a();

        /* renamed from: a */
        void mo40703a(SpannableStringBuilder[] spannableStringBuilderArr);
    }

    /* renamed from: androidx.media2.widget.c$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$e.class */
    public static class C2537e extends CharacterStyle implements UpdateAppearance {

        /* renamed from: a */
        int f9644a;

        C2537e(int i) {
            this.f9644a = i;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.bgColor = this.f9644a;
        }
    }

    /* renamed from: androidx.media2.widget.c$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$f.class */
    public static final class C2538f extends C2539g {

        /* renamed from: a */
        final int f9645a;

        /* renamed from: b */
        final int f9646b;

        C2538f(int i, int i2, int i3, int i4) {
            super(i3, i4);
            this.f9645a = i;
            this.f9646b = i2;
        }

        /* renamed from: a */
        static C2538f m40706a(byte b, byte b2) {
            int i = new int[]{11, 1, 3, 12, 14, 5, 7, 9}[b & 7] + ((b2 & 32) >> 5);
            int i2 = (b2 & 1) != 0 ? 2 : 0;
            if ((b2 & 16) != 0) {
                return new C2538f(i, ((b2 >> 1) & 7) * 4, i2, 0);
            }
            int i3 = (b2 >> 1) & 7;
            if (i3 == 7) {
                i2 |= 1;
                i3 = 0;
            }
            return new C2538f(i, -1, i2, i3);
        }

        @Override // androidx.media2.widget.C2532c.C2539g
        public final String toString() {
            return String.format("{%d, %d}, %s", Integer.valueOf(this.f9645a), Integer.valueOf(this.f9646b), super.toString());
        }
    }

    /* renamed from: androidx.media2.widget.c$g */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$g.class */
    public static class C2539g {

        /* renamed from: c */
        static final String[] f9647c = {"WHITE", "GREEN", "BLUE", "CYAN", "RED", "YELLOW", "MAGENTA", "INVALID"};

        /* renamed from: d */
        final int f9648d;

        /* renamed from: e */
        final int f9649e;

        C2539g(int i, int i2) {
            this.f9648d = i;
            this.f9649e = i2;
        }

        /* renamed from: a */
        static C2539g m40705a(byte b) {
            int i = (b >> 1) & 7;
            int i2 = (b & 1) != 0 ? 2 : 0;
            int i3 = i;
            int i4 = i2;
            if (i == 7) {
                i4 = i2 | 1;
                i3 = 0;
            }
            return new C2539g(i4, i3);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("{");
            sb.append(f9647c[this.f9649e]);
            if ((this.f9648d & 1) != 0) {
                sb.append(", ITALICS");
            }
            if ((this.f9648d & 2) != 0) {
                sb.append(", UNDERLINE");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    public C2532c(AbstractC2536d abstractC2536d) {
        this.f9629h = abstractC2536d;
    }

    /* renamed from: a */
    public C2535c m40732a() {
        int i = this.f9623a;
        if (i == 1 || i == 2) {
            return this.f9626d;
        }
        if (i == 3) {
            return this.f9627e;
        }
        if (i == 4) {
            return this.f9628f;
        }
        Log.w("Cea608CCParser", "unrecoginized mode: " + this.f9623a);
        return this.f9626d;
    }

    /* renamed from: b */
    public void m40731b() {
        AbstractC2536d abstractC2536d = this.f9629h;
        if (abstractC2536d != null) {
            this.f9629h.mo40703a(this.f9626d.m40710a(abstractC2536d.mo40704a()));
        }
    }
}
