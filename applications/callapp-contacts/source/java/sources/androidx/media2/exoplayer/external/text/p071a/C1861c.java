package androidx.media2.exoplayer.external.text.p071a;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.AbstractC1905h;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.text.C1902g;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
import com.mopub.mobileads.resource.DrawableConstants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: androidx.media2.exoplayer.external.text.a.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/c.class */
public final class C1861c extends AbstractC1864d {

    /* renamed from: b */
    private final C2018p f7450b = new C2018p();

    /* renamed from: c */
    private final C2017o f7451c = new C2017o();

    /* renamed from: d */
    private final int f7452d;

    /* renamed from: e */
    private final C1862a[] f7453e;

    /* renamed from: f */
    private C1862a f7454f;

    /* renamed from: g */
    private List<C1856a> f7455g;

    /* renamed from: h */
    private List<C1856a> f7456h;

    /* renamed from: i */
    private C1863b f7457i;

    /* renamed from: j */
    private int f7458j;

    /* renamed from: androidx.media2.exoplayer.external.text.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/c$a.class */
    public static final class C1862a {

        /* renamed from: b */
        public static final int f7460b;

        /* renamed from: c */
        public static final int f7461c;

        /* renamed from: e */
        static final int[] f7463e;

        /* renamed from: f */
        static final int[] f7464f;

        /* renamed from: A */
        private int f7470A;

        /* renamed from: B */
        private int f7471B;

        /* renamed from: C */
        private int f7472C;

        /* renamed from: D */
        private int f7473D;

        /* renamed from: E */
        private int f7474E;

        /* renamed from: F */
        private int f7475F;

        /* renamed from: G */
        private int f7476G;

        /* renamed from: h */
        boolean f7478h;

        /* renamed from: i */
        boolean f7479i;

        /* renamed from: j */
        int f7480j;

        /* renamed from: k */
        boolean f7481k;

        /* renamed from: l */
        int f7482l;

        /* renamed from: m */
        int f7483m;

        /* renamed from: n */
        int f7484n;

        /* renamed from: o */
        int f7485o;

        /* renamed from: p */
        boolean f7486p;

        /* renamed from: q */
        int f7487q;

        /* renamed from: r */
        int f7488r;

        /* renamed from: s */
        int f7489s;

        /* renamed from: z */
        private int f7491z;

        /* renamed from: a */
        public static final int f7459a = m42000a(2, 2, 2, 0);

        /* renamed from: d */
        static final int[] f7462d = {0, 0, 0, 0, 0, 2, 0};

        /* renamed from: t */
        private static final int[] f7465t = {0, 0, 0, 0, 0, 0, 2};

        /* renamed from: u */
        private static final int[] f7466u = {3, 3, 3, 3, 3, 3, 1};

        /* renamed from: v */
        private static final boolean[] f7467v = {false, false, false, true, true, true, false};

        /* renamed from: w */
        private static final int[] f7468w = {0, 1, 2, 3, 4, 3, 4};

        /* renamed from: x */
        private static final int[] f7469x = {0, 0, 0, 0, 0, 3, 3};

        /* renamed from: g */
        final List<SpannableString> f7477g = new ArrayList();

        /* renamed from: y */
        private final SpannableStringBuilder f7490y = new SpannableStringBuilder();

        static {
            int m42000a = m42000a(0, 0, 0, 0);
            f7460b = m42000a;
            int m42000a2 = m42000a(0, 0, 0, 3);
            f7461c = m42000a2;
            f7463e = new int[]{m42000a, m42000a2, m42000a, m42000a, m42000a2, m42000a, m42000a};
            f7464f = new int[]{m42000a, m42000a, m42000a, m42000a, m42000a, m42000a2, m42000a2};
        }

        public C1862a() {
            m41998b();
        }

        /* renamed from: a */
        public static int m42001a(int i, int i2, int i3) {
            return m42000a(i, i2, i3, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m42000a(int r5, int r6, int r7, int r8) {
            /*
                r0 = r5
                r1 = 4
                int r0 = androidx.media2.exoplayer.external.util.C1993a.m41691a(r0, r1)
                r0 = r6
                r1 = 4
                int r0 = androidx.media2.exoplayer.external.util.C1993a.m41691a(r0, r1)
                r0 = r7
                r1 = 4
                int r0 = androidx.media2.exoplayer.external.util.C1993a.m41691a(r0, r1)
                r0 = r8
                r1 = 4
                int r0 = androidx.media2.exoplayer.external.util.C1993a.m41691a(r0, r1)
                r0 = 0
                r9 = r0
                r0 = r8
                if (r0 == 0) goto L3c
                r0 = r8
                r1 = 1
                if (r0 == r1) goto L3c
                r0 = r8
                r1 = 2
                if (r0 == r1) goto L36
                r0 = r8
                r1 = 3
                if (r0 == r1) goto L31
                goto L3c
            L31:
                r0 = 0
                r8 = r0
                goto L40
            L36:
                r0 = 127(0x7f, float:1.78E-43)
                r8 = r0
                goto L40
            L3c:
                r0 = 255(0xff, float:3.57E-43)
                r8 = r0
            L40:
                r0 = r5
                r1 = 1
                if (r0 <= r1) goto L4c
                r0 = 255(0xff, float:3.57E-43)
                r5 = r0
                goto L4e
            L4c:
                r0 = 0
                r5 = r0
            L4e:
                r0 = r6
                r1 = 1
                if (r0 <= r1) goto L5a
                r0 = 255(0xff, float:3.57E-43)
                r6 = r0
                goto L5c
            L5a:
                r0 = 0
                r6 = r0
            L5c:
                r0 = r7
                r1 = 1
                if (r0 <= r1) goto L66
                r0 = 255(0xff, float:3.57E-43)
                r9 = r0
            L66:
                r0 = r8
                r1 = r5
                r2 = r6
                r3 = r9
                int r0 = android.graphics.Color.argb(r0, r1, r2, r3)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p071a.C1861c.C1862a.m42000a(int, int, int, int):int");
        }

        /* renamed from: f */
        private SpannableString m41993f() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f7490y);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f7471B != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f7471B, length, 33);
                }
                if (this.f7472C != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f7472C, length, 33);
                }
                if (this.f7473D != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f7474E), this.f7473D, length, 33);
                }
                if (this.f7475F != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f7476G), this.f7475F, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* renamed from: a */
        public final void m42003a(char c) {
            if (c != '\n') {
                this.f7490y.append(c);
                return;
            }
            this.f7477g.add(m41993f());
            this.f7490y.clear();
            if (this.f7471B != -1) {
                this.f7471B = 0;
            }
            if (this.f7472C != -1) {
                this.f7472C = 0;
            }
            if (this.f7473D != -1) {
                this.f7473D = 0;
            }
            if (this.f7475F != -1) {
                this.f7475F = 0;
            }
            while (true) {
                if ((!this.f7486p || this.f7477g.size() < this.f7485o) && this.f7477g.size() < 15) {
                    return;
                }
                this.f7477g.remove(0);
            }
        }

        /* renamed from: a */
        public final void m42002a(int i, int i2) {
            this.f7470A = i;
            this.f7491z = i2;
        }

        /* renamed from: a */
        public final void m41999a(boolean z, boolean z2) {
            if (this.f7471B != -1) {
                if (!z) {
                    this.f7490y.setSpan(new StyleSpan(2), this.f7471B, this.f7490y.length(), 33);
                    this.f7471B = -1;
                }
            } else if (z) {
                this.f7471B = this.f7490y.length();
            }
            if (this.f7472C == -1) {
                if (!z2) {
                    return;
                }
                this.f7472C = this.f7490y.length();
            } else if (z2) {
            } else {
                this.f7490y.setSpan(new UnderlineSpan(), this.f7472C, this.f7490y.length(), 33);
                this.f7472C = -1;
            }
        }

        /* renamed from: a */
        public final boolean m42004a() {
            if (this.f7478h) {
                return this.f7477g.isEmpty() && this.f7490y.length() == 0;
            }
            return true;
        }

        /* renamed from: b */
        public final void m41998b() {
            m41996c();
            this.f7478h = false;
            this.f7479i = false;
            this.f7480j = 4;
            this.f7481k = false;
            this.f7482l = 0;
            this.f7483m = 0;
            this.f7484n = 0;
            this.f7485o = 15;
            this.f7486p = true;
            this.f7491z = 0;
            this.f7487q = 0;
            this.f7488r = 0;
            int i = f7460b;
            this.f7470A = i;
            this.f7474E = f7459a;
            this.f7476G = i;
        }

        /* renamed from: b */
        public final void m41997b(int i, int i2) {
            if (this.f7473D != -1 && this.f7474E != i) {
                this.f7490y.setSpan(new ForegroundColorSpan(this.f7474E), this.f7473D, this.f7490y.length(), 33);
            }
            if (i != f7459a) {
                this.f7473D = this.f7490y.length();
                this.f7474E = i;
            }
            if (this.f7475F != -1 && this.f7476G != i2) {
                this.f7490y.setSpan(new BackgroundColorSpan(this.f7476G), this.f7475F, this.f7490y.length(), 33);
            }
            if (i2 != f7460b) {
                this.f7475F = this.f7490y.length();
                this.f7476G = i2;
            }
        }

        /* renamed from: c */
        public final void m41996c() {
            this.f7477g.clear();
            this.f7490y.clear();
            this.f7471B = -1;
            this.f7472C = -1;
            this.f7473D = -1;
            this.f7475F = -1;
            this.f7489s = 0;
        }

        /* renamed from: d */
        public final void m41995d() {
            int length = this.f7490y.length();
            if (length > 0) {
                this.f7490y.delete(length - 1, length);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0100  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0125  */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.media2.exoplayer.external.text.p071a.C1860b m41994e() {
            /*
                Method dump skipped, instructions count: 340
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p071a.C1861c.C1862a.m41994e():androidx.media2.exoplayer.external.text.a.b");
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.text.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/c$b.class */
    public static final class C1863b {

        /* renamed from: a */
        public final int f7492a;

        /* renamed from: b */
        public final int f7493b;

        /* renamed from: c */
        public final byte[] f7494c;

        /* renamed from: d */
        int f7495d = 0;

        public C1863b(int i, int i2) {
            this.f7492a = i;
            this.f7493b = i2;
            this.f7494c = new byte[(i2 * 2) - 1];
        }
    }

    public C1861c(int i, List<byte[]> list) {
        this.f7452d = i == -1 ? 1 : i;
        this.f7453e = new C1862a[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.f7453e[i2] = new C1862a();
        }
        this.f7454f = this.f7453e[0];
        m42005l();
    }

    /* renamed from: a */
    private void m42016a(int i) {
        if (i != 0) {
            if (i == 3) {
                this.f7455g = m42006k();
            } else if (i == 8) {
                this.f7454f.m41995d();
            } else {
                switch (i) {
                    case 12:
                        m42005l();
                        return;
                    case 13:
                        this.f7454f.m42003a('\n');
                        return;
                    case 14:
                        return;
                    default:
                        if (i >= 17 && i <= 23) {
                            StringBuilder sb = new StringBuilder(55);
                            sb.append("Currently unsupported COMMAND_EXT1 Command: ");
                            sb.append(i);
                            C2009j.m41584a("Cea708Decoder", sb.toString());
                            this.f7451c.m41551b(8);
                            return;
                        } else if (i < 24 || i > 31) {
                            StringBuilder sb2 = new StringBuilder(31);
                            sb2.append("Invalid C0 command: ");
                            sb2.append(i);
                            C2009j.m41584a("Cea708Decoder", sb2.toString());
                            return;
                        } else {
                            StringBuilder sb3 = new StringBuilder(54);
                            sb3.append("Currently unsupported COMMAND_P16 Command: ");
                            sb3.append(i);
                            C2009j.m41584a("Cea708Decoder", sb3.toString());
                            this.f7451c.m41551b(16);
                            return;
                        }
                }
            }
        }
    }

    /* renamed from: b */
    private void m42015b(int i) {
        C1862a c1862a;
        switch (i) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i2 = i - 128;
                if (this.f7458j == i2) {
                    return;
                }
                this.f7458j = i2;
                this.f7454f = this.f7453e[i2];
                return;
            case 136:
                for (int i3 = 1; i3 <= 8; i3++) {
                    if (this.f7451c.m41545e()) {
                        this.f7453e[8 - i3].m41996c();
                    }
                }
                return;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.f7451c.m41545e()) {
                        this.f7453e[8 - i4].f7479i = true;
                    }
                }
                return;
            case 138:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.f7451c.m41545e()) {
                        this.f7453e[8 - i5].f7479i = false;
                    }
                }
                return;
            case 139:
                for (int i6 = 1; i6 <= 8; i6++) {
                    if (this.f7451c.m41545e()) {
                        this.f7453e[8 - i6].f7479i = !c1862a.f7479i;
                    }
                }
                return;
            case TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE /* 140 */:
                for (int i7 = 1; i7 <= 8; i7++) {
                    if (this.f7451c.m41545e()) {
                        this.f7453e[8 - i7].m41998b();
                    }
                }
                return;
            case 141:
                this.f7451c.m41551b(8);
                return;
            case 142:
                return;
            case 143:
                m42005l();
                return;
            case 144:
                if (!this.f7454f.f7478h) {
                    this.f7451c.m41551b(16);
                    return;
                }
                this.f7451c.m41548c(4);
                this.f7451c.m41548c(2);
                this.f7451c.m41548c(2);
                boolean m41545e = this.f7451c.m41545e();
                boolean m41545e2 = this.f7451c.m41545e();
                this.f7451c.m41548c(3);
                this.f7451c.m41548c(3);
                this.f7454f.m41999a(m41545e, m41545e2);
                return;
            case 145:
                if (!this.f7454f.f7478h) {
                    this.f7451c.m41551b(24);
                    return;
                }
                int m42000a = C1862a.m42000a(this.f7451c.m41548c(2), this.f7451c.m41548c(2), this.f7451c.m41548c(2), this.f7451c.m41548c(2));
                int m42000a2 = C1862a.m42000a(this.f7451c.m41548c(2), this.f7451c.m41548c(2), this.f7451c.m41548c(2), this.f7451c.m41548c(2));
                this.f7451c.m41551b(2);
                C1862a.m42001a(this.f7451c.m41548c(2), this.f7451c.m41548c(2), this.f7451c.m41548c(2));
                this.f7454f.m41997b(m42000a, m42000a2);
                return;
            case 146:
                if (!this.f7454f.f7478h) {
                    this.f7451c.m41551b(16);
                    return;
                }
                this.f7451c.m41551b(4);
                int m41548c = this.f7451c.m41548c(4);
                this.f7451c.m41551b(2);
                this.f7451c.m41548c(6);
                C1862a c1862a2 = this.f7454f;
                if (c1862a2.f7489s != m41548c) {
                    c1862a2.m42003a('\n');
                }
                c1862a2.f7489s = m41548c;
                return;
            case 147:
            case 148:
            case 149:
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
            default:
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid C1 command: ");
                sb.append(i);
                C2009j.m41584a("Cea708Decoder", sb.toString());
                return;
            case 151:
                if (!this.f7454f.f7478h) {
                    this.f7451c.m41551b(32);
                    return;
                }
                int m42000a3 = C1862a.m42000a(this.f7451c.m41548c(2), this.f7451c.m41548c(2), this.f7451c.m41548c(2), this.f7451c.m41548c(2));
                this.f7451c.m41548c(2);
                C1862a.m42001a(this.f7451c.m41548c(2), this.f7451c.m41548c(2), this.f7451c.m41548c(2));
                this.f7451c.m41545e();
                this.f7451c.m41545e();
                this.f7451c.m41548c(2);
                this.f7451c.m41548c(2);
                int m41548c2 = this.f7451c.m41548c(2);
                this.f7451c.m41551b(8);
                this.f7454f.m42002a(m42000a3, m41548c2);
                return;
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i8 = i - 152;
                C1862a c1862a3 = this.f7453e[i8];
                this.f7451c.m41551b(2);
                boolean m41545e3 = this.f7451c.m41545e();
                boolean m41545e4 = this.f7451c.m41545e();
                this.f7451c.m41545e();
                int m41548c3 = this.f7451c.m41548c(3);
                boolean m41545e5 = this.f7451c.m41545e();
                int m41548c4 = this.f7451c.m41548c(7);
                int m41548c5 = this.f7451c.m41548c(8);
                int m41548c6 = this.f7451c.m41548c(4);
                int m41548c7 = this.f7451c.m41548c(4);
                this.f7451c.m41551b(2);
                this.f7451c.m41548c(6);
                this.f7451c.m41551b(2);
                int m41548c8 = this.f7451c.m41548c(3);
                int m41548c9 = this.f7451c.m41548c(3);
                c1862a3.f7478h = true;
                c1862a3.f7479i = m41545e3;
                c1862a3.f7486p = m41545e4;
                c1862a3.f7480j = m41548c3;
                c1862a3.f7481k = m41545e5;
                c1862a3.f7482l = m41548c4;
                c1862a3.f7483m = m41548c5;
                c1862a3.f7484n = m41548c6;
                int i9 = m41548c7 + 1;
                if (c1862a3.f7485o != i9) {
                    c1862a3.f7485o = i9;
                    while (true) {
                        if ((m41545e4 && c1862a3.f7477g.size() >= c1862a3.f7485o) || c1862a3.f7477g.size() >= 15) {
                            c1862a3.f7477g.remove(0);
                        }
                    }
                }
                if (m41548c8 != 0 && c1862a3.f7487q != m41548c8) {
                    c1862a3.f7487q = m41548c8;
                    int i10 = m41548c8 - 1;
                    c1862a3.m42002a(C1862a.f7463e[i10], C1862a.f7462d[i10]);
                }
                if (m41548c9 != 0 && c1862a3.f7488r != m41548c9) {
                    c1862a3.f7488r = m41548c9;
                    c1862a3.m41999a(false, false);
                    c1862a3.m41997b(C1862a.f7459a, C1862a.f7464f[m41548c9 - 1]);
                }
                if (this.f7458j == i8) {
                    return;
                }
                this.f7458j = i8;
                this.f7454f = this.f7453e[i8];
                return;
        }
    }

    /* renamed from: c */
    private void m42014c(int i) {
        if (i > 7) {
            if (i <= 15) {
                this.f7451c.m41551b(8);
            } else if (i <= 23) {
                this.f7451c.m41551b(16);
            } else if (i > 31) {
            } else {
                this.f7451c.m41551b(24);
            }
        }
    }

    /* renamed from: d */
    private void m42013d(int i) {
        if (i <= 135) {
            this.f7451c.m41551b(32);
        } else if (i <= 143) {
            this.f7451c.m41551b(40);
        } else if (i > 159) {
        } else {
            this.f7451c.m41551b(2);
            this.f7451c.m41551b(this.f7451c.m41548c(6) * 8);
        }
    }

    /* renamed from: e */
    private void m42012e(int i) {
        if (i == 127) {
            this.f7454f.m42003a((char) 9835);
        } else {
            this.f7454f.m42003a((char) (i & 255));
        }
    }

    /* renamed from: f */
    private void m42011f(int i) {
        this.f7454f.m42003a((char) (i & 255));
    }

    /* renamed from: g */
    private void m42010g(int i) {
        if (i == 32) {
            this.f7454f.m42003a(' ');
        } else if (i == 33) {
            this.f7454f.m42003a((char) 160);
        } else if (i == 37) {
            this.f7454f.m42003a((char) 8230);
        } else if (i == 42) {
            this.f7454f.m42003a((char) 352);
        } else if (i == 44) {
            this.f7454f.m42003a((char) 338);
        } else if (i == 63) {
            this.f7454f.m42003a((char) 376);
        } else if (i == 57) {
            this.f7454f.m42003a((char) 8482);
        } else if (i == 58) {
            this.f7454f.m42003a((char) 353);
        } else if (i == 60) {
            this.f7454f.m42003a((char) 339);
        } else if (i == 61) {
            this.f7454f.m42003a((char) 8480);
        } else {
            switch (i) {
                case 48:
                    this.f7454f.m42003a((char) 9608);
                    return;
                case 49:
                    this.f7454f.m42003a((char) 8216);
                    return;
                case 50:
                    this.f7454f.m42003a((char) 8217);
                    return;
                case 51:
                    this.f7454f.m42003a((char) 8220);
                    return;
                case 52:
                    this.f7454f.m42003a((char) 8221);
                    return;
                case 53:
                    this.f7454f.m42003a((char) 8226);
                    return;
                default:
                    switch (i) {
                        case 118:
                            this.f7454f.m42003a((char) 8539);
                            return;
                        case 119:
                            this.f7454f.m42003a((char) 8540);
                            return;
                        case 120:
                            this.f7454f.m42003a((char) 8541);
                            return;
                        case 121:
                            this.f7454f.m42003a((char) 8542);
                            return;
                        case 122:
                            this.f7454f.m42003a((char) 9474);
                            return;
                        case 123:
                            this.f7454f.m42003a((char) 9488);
                            return;
                        case 124:
                            this.f7454f.m42003a((char) 9492);
                            return;
                        case JsonReaderKt.END_OBJ /* 125 */:
                            this.f7454f.m42003a((char) 9472);
                            return;
                        case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                            this.f7454f.m42003a((char) 9496);
                            return;
                        case 127:
                            this.f7454f.m42003a((char) 9484);
                            return;
                        default:
                            StringBuilder sb = new StringBuilder(33);
                            sb.append("Invalid G2 character: ");
                            sb.append(i);
                            C2009j.m41584a("Cea708Decoder", sb.toString());
                            return;
                    }
            }
        }
    }

    /* renamed from: h */
    private void m42009h(int i) {
        if (i == 160) {
            this.f7454f.m42003a((char) 13252);
            return;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("Invalid G3 character: ");
        sb.append(i);
        C2009j.m41584a("Cea708Decoder", sb.toString());
        this.f7454f.m42003a('_');
    }

    /* renamed from: i */
    private void m42008i() {
        if (this.f7457i == null) {
            return;
        }
        m42007j();
        this.f7457i = null;
    }

    /* renamed from: j */
    private void m42007j() {
        if (this.f7457i.f7495d != (this.f7457i.f7493b * 2) - 1) {
            int i = this.f7457i.f7493b;
            int i2 = this.f7457i.f7495d;
            int i3 = this.f7457i.f7492a;
            StringBuilder sb = new StringBuilder(131);
            sb.append("DtvCcPacket ended prematurely; size is ");
            sb.append((i * 2) - 1);
            sb.append(", but current index is ");
            sb.append(i2);
            sb.append(" (sequence number ");
            sb.append(i3);
            sb.append("); ignoring packet");
            C2009j.m41584a("Cea708Decoder", sb.toString());
            return;
        }
        this.f7451c.m41553a(this.f7457i.f7494c, this.f7457i.f7495d);
        int m41548c = this.f7451c.m41548c(3);
        int m41548c2 = this.f7451c.m41548c(5);
        int i4 = m41548c;
        if (m41548c == 7) {
            this.f7451c.m41551b(2);
            int m41548c3 = this.f7451c.m41548c(6);
            i4 = m41548c3;
            if (m41548c3 < 7) {
                StringBuilder sb2 = new StringBuilder(44);
                sb2.append("Invalid extended service number: ");
                sb2.append(m41548c3);
                C2009j.m41584a("Cea708Decoder", sb2.toString());
                i4 = m41548c3;
            }
        }
        if (m41548c2 == 0) {
            if (i4 == 0) {
                return;
            }
            StringBuilder sb3 = new StringBuilder(59);
            sb3.append("serviceNumber is non-zero (");
            sb3.append(i4);
            sb3.append(") when blockSize is 0");
            C2009j.m41584a("Cea708Decoder", sb3.toString());
        } else if (i4 != this.f7452d) {
        } else {
            boolean z = false;
            while (this.f7451c.m41555a() > 0) {
                int m41548c4 = this.f7451c.m41548c(8);
                if (m41548c4 == 16) {
                    int m41548c5 = this.f7451c.m41548c(8);
                    if (m41548c5 <= 31) {
                        m42014c(m41548c5);
                    } else {
                        if (m41548c5 <= 127) {
                            m42010g(m41548c5);
                        } else if (m41548c5 <= 159) {
                            m42013d(m41548c5);
                        } else if (m41548c5 <= 255) {
                            m42009h(m41548c5);
                        } else {
                            StringBuilder sb4 = new StringBuilder(37);
                            sb4.append("Invalid extended command: ");
                            sb4.append(m41548c5);
                            C2009j.m41584a("Cea708Decoder", sb4.toString());
                        }
                        z = true;
                    }
                } else if (m41548c4 <= 31) {
                    m42016a(m41548c4);
                } else {
                    if (m41548c4 <= 127) {
                        m42012e(m41548c4);
                    } else if (m41548c4 <= 159) {
                        m42015b(m41548c4);
                    } else if (m41548c4 <= 255) {
                        m42011f(m41548c4);
                    } else {
                        StringBuilder sb5 = new StringBuilder(33);
                        sb5.append("Invalid base command: ");
                        sb5.append(m41548c4);
                        C2009j.m41584a("Cea708Decoder", sb5.toString());
                    }
                    z = true;
                }
            }
            if (!z) {
                return;
            }
            this.f7455g = m42006k();
        }
    }

    /* renamed from: k */
    private List<C1856a> m42006k() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.f7453e[i].m42004a() && this.f7453e[i].f7479i) {
                arrayList.add(this.f7453e[i].m41994e());
            }
        }
        Collections.sort(arrayList);
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: l */
    private void m42005l() {
        for (int i = 0; i < 8; i++) {
            this.f7453e[i].m41998b();
        }
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d, androidx.media2.exoplayer.external.text.AbstractC1889e
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo41951a(long j) {
        super.mo41951a(j);
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d
    /* renamed from: a */
    protected final void mo41990a(C1902g c1902g) {
        this.f7450b.m41538a(c1902g.f5494c.array(), c1902g.f5494c.limit());
        while (this.f7450b.m41536b() >= 3) {
            int m41534c = this.f7450b.m41534c() & 7;
            int i = m41534c & 3;
            boolean z = false;
            boolean z2 = (m41534c & 4) == 4;
            byte m41534c2 = (byte) this.f7450b.m41534c();
            byte m41534c3 = (byte) this.f7450b.m41534c();
            if (i == 2 || i == 3) {
                if (z2) {
                    if (i == 3) {
                        m42008i();
                        int i2 = m41534c2 & 63;
                        int i3 = i2;
                        if (i2 == 0) {
                            i3 = 64;
                        }
                        C1863b c1863b = new C1863b((m41534c2 & 192) >> 6, i3);
                        this.f7457i = c1863b;
                        byte[] bArr = c1863b.f7494c;
                        C1863b c1863b2 = this.f7457i;
                        int i4 = c1863b2.f7495d;
                        c1863b2.f7495d = i4 + 1;
                        bArr[i4] = m41534c3;
                    } else {
                        if (i == 2) {
                            z = true;
                        }
                        C1993a.m41688a(z);
                        C1863b c1863b3 = this.f7457i;
                        if (c1863b3 == null) {
                            C2009j.m41580b("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c1863b3.f7494c;
                            C1863b c1863b4 = this.f7457i;
                            int i5 = c1863b4.f7495d;
                            c1863b4.f7495d = i5 + 1;
                            bArr2[i5] = m41534c2;
                            byte[] bArr3 = this.f7457i.f7494c;
                            C1863b c1863b5 = this.f7457i;
                            int i6 = c1863b5.f7495d;
                            c1863b5.f7495d = i6 + 1;
                            bArr3[i6] = m41534c3;
                        }
                    }
                    if (this.f7457i.f7495d == (this.f7457i.f7493b * 2) - 1) {
                        m42008i();
                    }
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo41987b(C1902g c1902g) throws SubtitleDecoderException {
        super.mo41989a(c1902g);
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d, androidx.media2.exoplayer.external.p063b.AbstractC1440c
    /* renamed from: c */
    public final void mo41986c() {
        super.mo41986c();
        this.f7455g = null;
        this.f7456h = null;
        this.f7458j = 0;
        this.f7454f = this.f7453e[0];
        m42005l();
        this.f7457i = null;
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d, androidx.media2.exoplayer.external.p063b.AbstractC1440c
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo41985d() {
        super.mo41985d();
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d
    /* renamed from: e */
    protected final boolean mo41984e() {
        return this.f7455g != this.f7456h;
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d
    /* renamed from: f */
    protected final AbstractC1886d mo41983f() {
        List<C1856a> list = this.f7455g;
        this.f7456h = list;
        return new C1868e(list);
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ AbstractC1905h mo41982g() throws SubtitleDecoderException {
        return super.mo41988b();
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ C1902g mo41981h() throws SubtitleDecoderException {
        return super.mo41992a();
    }
}
