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
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/c.class */
final class c {
    private static final boolean g = Log.isLoggable("Cea608CCParser", 3);

    /* renamed from: a  reason: collision with root package name */
    int f5162a = 1;

    /* renamed from: b  reason: collision with root package name */
    int f5163b = 4;

    /* renamed from: c  reason: collision with root package name */
    int f5164c = -1;

    /* renamed from: d  reason: collision with root package name */
    C0103c f5165d = new C0103c();
    C0103c e = new C0103c();
    C0103c f = new C0103c();
    private final d h;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$a.class */
    static final class a {

        /* renamed from: d  reason: collision with root package name */
        private static final String[] f5166d = {"RCL", "BS", "AOF", "AON", "DER", "RU2", "RU3", "RU4", "FON", "RDC", "TR", "RTD", "EDM", "CR", "ENM", "EOC"};
        private static final String[] e = {"®", "°", "½", "¿", "™", "¢", "£", "♪", "à", " ", "è", "â", "ê", "î", "ô", "û"};
        private static final String[] f = {"Á", "É", "Ó", "Ú", "Ü", "ü", "‘", "¡", "*", "'", "—", "©", "℠", "•", "“", "”", "À", "Â", "Ç", "È", "Ê", "Ë", "ë", "Î", "Ï", "ï", "Ô", "Ù", "ù", "Û", "«", "»"};
        private static final String[] g = {"Ã", "ã", "Í", "Ì", "ì", "Ò", "ò", "Õ", "õ", "{", "}", "\\", "^", "_", "|", "~", "Ä", "ä", "Ö", "ö", "ß", "¥", "¤", "│", "Å", "å", "Ø", "ø", "┌", "┐", "└", "┘"};

        /* renamed from: a  reason: collision with root package name */
        private final byte f5167a;

        /* renamed from: b  reason: collision with root package name */
        private final byte f5168b;

        /* renamed from: c  reason: collision with root package name */
        private final byte f5169c;

        a(byte b2, byte b3, byte b4) {
            this.f5167a = b2;
            this.f5168b = b3;
            this.f5169c = b4;
        }

        private static char a(byte b2) {
            char c2;
            if (b2 == 42) {
                c2 = 225;
            } else if (b2 != 92) {
                switch (b2) {
                    case 94:
                        c2 = 237;
                        break;
                    case 95:
                        c2 = 243;
                        break;
                    case 96:
                        c2 = 250;
                        break;
                    default:
                        switch (b2) {
                            case 123:
                                c2 = 231;
                                break;
                            case 124:
                                c2 = 247;
                                break;
                            case JsonReaderKt.END_OBJ /* 125 */:
                                c2 = 209;
                                break;
                            case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                                c2 = 241;
                                break;
                            case Byte.MAX_VALUE:
                                c2 = 9608;
                                break;
                            default:
                                c2 = (char) b2;
                                break;
                        }
                }
            } else {
                c2 = 233;
            }
            return c2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a[] a(byte[] bArr) {
            int length = bArr.length / 3;
            a[] aVarArr = new a[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 3;
                aVarArr[i] = new a(bArr[i2], bArr[i2 + 1], bArr[i2 + 2]);
            }
            return aVarArr;
        }

        private boolean h() {
            byte b2 = this.f5168b;
            return b2 >= 32 && b2 <= Byte.MAX_VALUE;
        }

        private boolean i() {
            byte b2;
            byte b3 = this.f5168b;
            return (b3 == 17 || b3 == 25) && (b2 = this.f5169c) >= 48 && b2 <= 63;
        }

        private String j() {
            byte b2 = this.f5168b;
            if (b2 < 32 || b2 > Byte.MAX_VALUE) {
                return null;
            }
            StringBuilder sb = new StringBuilder(2);
            sb.append(a(this.f5168b));
            byte b3 = this.f5169c;
            if (b3 >= 32 && b3 <= Byte.MAX_VALUE) {
                sb.append(a(b3));
            }
            return sb.toString();
        }

        private String k() {
            byte b2;
            byte b3 = this.f5168b;
            if ((b3 == 17 || b3 == 25) && (b2 = this.f5169c) >= 48 && b2 <= 63) {
                return e[b2 - 48];
            }
            return null;
        }

        private String l() {
            byte b2;
            byte b3;
            byte b4 = this.f5168b;
            if ((b4 == 18 || b4 == 26) && (b3 = this.f5169c) >= 32 && b3 <= 63) {
                return f[b3 - 32];
            }
            if ((b4 == 19 || b4 == 27) && (b2 = this.f5169c) >= 32 && b2 <= 63) {
                return g[b2 - 32];
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int a() {
            byte b2;
            byte b3 = this.f5168b;
            if ((b3 == 20 || b3 == 28) && (b2 = this.f5169c) >= 32 && b2 <= 47) {
                return b2;
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final g b() {
            byte b2;
            byte b3 = this.f5168b;
            if ((b3 == 17 || b3 == 25) && (b2 = this.f5169c) >= 32 && b2 <= 47) {
                return g.a(b2);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final f c() {
            byte b2 = this.f5168b;
            if ((b2 & 112) != 16) {
                return null;
            }
            byte b3 = this.f5169c;
            if ((b3 & 64) != 64) {
                return null;
            }
            if ((b2 & 7) != 0 || (b3 & 32) == 0) {
                return f.a(b2, b3);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int d() {
            byte b2;
            byte b3 = this.f5168b;
            if ((b3 == 23 || b3 == 31) && (b2 = this.f5169c) >= 33 && b2 <= 35) {
                return b2 & 3;
            }
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean e() {
            return h() || i() || g();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final String f() {
            String j = j();
            String str = j;
            if (j == null) {
                String k = k();
                str = k;
                if (k == null) {
                    str = l();
                }
            }
            return str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean g() {
            byte b2;
            byte b3 = this.f5168b;
            return (b3 == 18 || b3 == 26 || b3 == 19 || b3 == 27) && (b2 = this.f5169c) >= 32 && b2 <= 63;
        }

        public final String toString() {
            if (this.f5168b < 16 && this.f5169c < 16) {
                return String.format("[%d]Null: %02x %02x", Byte.valueOf(this.f5167a), Byte.valueOf(this.f5168b), Byte.valueOf(this.f5169c));
            }
            int a2 = a();
            if (a2 != -1) {
                return String.format("[%d]%s", Byte.valueOf(this.f5167a), f5166d[a2 - 32]);
            }
            int d2 = d();
            if (d2 > 0) {
                return String.format("[%d]Tab%d", Byte.valueOf(this.f5167a), Integer.valueOf(d2));
            }
            f c2 = c();
            if (c2 != null) {
                return String.format("[%d]PAC: %s", Byte.valueOf(this.f5167a), c2.toString());
            }
            g b2 = b();
            return b2 != null ? String.format("[%d]Mid-row: %s", Byte.valueOf(this.f5167a), b2.toString()) : e() ? String.format("[%d]Displayable: %s (%02x %02x)", Byte.valueOf(this.f5167a), f(), Byte.valueOf(this.f5168b), Byte.valueOf(this.f5169c)) : String.format("[%d]Invalid: %02x %02x", Byte.valueOf(this.f5167a), Byte.valueOf(this.f5168b), Byte.valueOf(this.f5169c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final StringBuilder f5170a;

        /* renamed from: b  reason: collision with root package name */
        final g[] f5171b;

        /* renamed from: c  reason: collision with root package name */
        final g[] f5172c;

        b(String str) {
            StringBuilder sb = new StringBuilder(str);
            this.f5170a = sb;
            this.f5171b = new g[sb.length()];
            this.f5172c = new g[sb.length()];
        }

        private static void a(SpannableStringBuilder spannableStringBuilder, g gVar, int i, int i2) {
            boolean z = true;
            if ((gVar.f5181d & 1) != 0) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
            }
            if ((gVar.f5181d & 2) == 0) {
                z = false;
            }
            if (z) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
            }
        }

        final SpannableStringBuilder a(androidx.media2.widget.b bVar) {
            g gVar;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f5170a);
            int i = 0;
            g gVar2 = null;
            int i2 = -1;
            int i3 = -1;
            while (i < this.f5170a.length()) {
                g[] gVarArr = this.f5171b;
                if (gVarArr[i] != null) {
                    gVar = gVarArr[i];
                } else {
                    g[] gVarArr2 = this.f5172c;
                    gVar = (gVarArr2[i] == null || (i2 >= 0 && i3 >= 0)) ? null : gVarArr2[i];
                }
                int i4 = i2;
                if (gVar != null) {
                    if (i2 >= 0 && i3 >= 0) {
                        a(spannableStringBuilder, gVar, i2, i);
                    }
                    i4 = i;
                    gVar2 = gVar;
                }
                if (this.f5170a.charAt(i) != 160) {
                    i3 = i3;
                    if (i3 < 0) {
                        i3 = i;
                    }
                } else {
                    i3 = i3;
                    if (i3 >= 0) {
                        if (this.f5170a.charAt(i3) != ' ') {
                            i3--;
                        }
                        int i5 = this.f5170a.charAt(i - 1) == ' ' ? i : i + 1;
                        spannableStringBuilder.setSpan(new e(bVar.f5160c), i3, i5, 33);
                        if (i4 >= 0) {
                            a(spannableStringBuilder, gVar2, i4, i5);
                        }
                        i3 = -1;
                    }
                }
                i++;
                i2 = i4;
            }
            return spannableStringBuilder;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(int i, char c2) {
            this.f5170a.setCharAt(i, c2);
            this.f5171b[i] = null;
        }
    }

    /* renamed from: androidx.media2.widget.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$c.class */
    static final class C0103c {

        /* renamed from: a  reason: collision with root package name */
        final b[] f5173a = new b[17];

        /* renamed from: b  reason: collision with root package name */
        int f5174b;

        /* renamed from: c  reason: collision with root package name */
        int f5175c;

        /* renamed from: d  reason: collision with root package name */
        private final String f5176d;

        C0103c() {
            char[] cArr = new char[34];
            Arrays.fill(cArr, (char) 160);
            this.f5176d = new String(cArr);
        }

        private static int b(int i, int i2) {
            if (i <= 0) {
                return 1;
            }
            return i > i2 ? i2 : i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a() {
            int i = 0;
            while (true) {
                b[] bVarArr = this.f5173a;
                if (i < bVarArr.length) {
                    bVarArr[i] = null;
                    i++;
                } else {
                    this.f5174b = 15;
                    this.f5175c = 1;
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(int i) {
            this.f5175c = b(this.f5175c + i, 32);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(int i, int i2) {
            this.f5174b = b(i, 15);
            this.f5175c = b(i2, 32);
        }

        final SpannableStringBuilder[] a(androidx.media2.widget.b bVar) {
            ArrayList arrayList = new ArrayList(15);
            for (int i = 1; i <= 15; i++) {
                b[] bVarArr = this.f5173a;
                arrayList.add(bVarArr[i] != null ? bVarArr[i].a(bVar) : null);
            }
            return (SpannableStringBuilder[]) arrayList.toArray(new SpannableStringBuilder[15]);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final b b(int i) {
            b[] bVarArr = this.f5173a;
            if (bVarArr[i] == null) {
                bVarArr[i] = new b(this.f5176d);
            }
            return this.f5173a[i];
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void b() {
            a(-1);
            b[] bVarArr = this.f5173a;
            int i = this.f5174b;
            if (bVarArr[i] != null) {
                bVarArr[i].a(this.f5175c, (char) 160);
                if (this.f5175c == 31) {
                    this.f5173a[this.f5174b].a(32, (char) 160);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$d.class */
    interface d {
        androidx.media2.widget.b a();

        void a(SpannableStringBuilder[] spannableStringBuilderArr);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$e.class */
    public static class e extends CharacterStyle implements UpdateAppearance {

        /* renamed from: a  reason: collision with root package name */
        int f5177a;

        e(int i) {
            this.f5177a = i;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.bgColor = this.f5177a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$f.class */
    public static final class f extends g {

        /* renamed from: a  reason: collision with root package name */
        final int f5178a;

        /* renamed from: b  reason: collision with root package name */
        final int f5179b;

        f(int i, int i2, int i3, int i4) {
            super(i3, i4);
            this.f5178a = i;
            this.f5179b = i2;
        }

        static f a(byte b2, byte b3) {
            int i = new int[]{11, 1, 3, 12, 14, 5, 7, 9}[b2 & 7] + ((b3 & 32) >> 5);
            int i2 = 0;
            int i3 = (b3 & 1) != 0 ? 2 : 0;
            if ((b3 & 16) != 0) {
                return new f(i, ((b3 >> 1) & 7) * 4, i3, 0);
            }
            i2 = (b3 >> 1) & 7;
            if (i2 == 7) {
                i3 |= 1;
            }
            return new f(i, -1, i3, i2);
        }

        @Override // androidx.media2.widget.c.g
        public final String toString() {
            return String.format("{%d, %d}, %s", Integer.valueOf(this.f5178a), Integer.valueOf(this.f5179b), super.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/c$g.class */
    public static class g {

        /* renamed from: c  reason: collision with root package name */
        static final String[] f5180c = {"WHITE", "GREEN", "BLUE", "CYAN", "RED", "YELLOW", "MAGENTA", "INVALID"};

        /* renamed from: d  reason: collision with root package name */
        final int f5181d;
        final int e;

        g(int i, int i2) {
            this.f5181d = i;
            this.e = i2;
        }

        static g a(byte b2) {
            int i = (b2 >> 1) & 7;
            int i2 = (b2 & 1) != 0 ? 2 : 0;
            int i3 = i;
            int i4 = i2;
            if (i == 7) {
                i4 = i2 | 1;
                i3 = 0;
            }
            return new g(i4, i3);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("{");
            sb.append(f5180c[this.e]);
            if ((this.f5181d & 1) != 0) {
                sb.append(", ITALICS");
            }
            if ((this.f5181d & 2) != 0) {
                sb.append(", UNDERLINE");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(d dVar) {
        this.h = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0103c a() {
        int i = this.f5162a;
        if (i == 1 || i == 2) {
            return this.f5165d;
        }
        if (i == 3) {
            return this.e;
        }
        if (i == 4) {
            return this.f;
        }
        Log.w("Cea608CCParser", "unrecoginized mode: " + this.f5162a);
        return this.f5165d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        d dVar = this.h;
        if (dVar != null) {
            this.h.a(this.f5165d.a(dVar.a()));
        }
    }
}
