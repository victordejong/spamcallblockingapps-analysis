package androidx.media2.exoplayer.external.text.a;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.text.g;
import androidx.media2.exoplayer.external.text.h;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
import com.mopub.mobileads.resource.DrawableConstants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/c.class */
public final class c extends d {

    /* renamed from: b  reason: collision with root package name */
    private final p f3799b = new p();

    /* renamed from: c  reason: collision with root package name */
    private final o f3800c = new o();

    /* renamed from: d  reason: collision with root package name */
    private final int f3801d;
    private final a[] e;
    private a f;
    private List<androidx.media2.exoplayer.external.text.a> g;
    private List<androidx.media2.exoplayer.external.text.a> h;
    private b i;
    private int j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/c$a.class */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static final int f3803b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f3804c;
        static final int[] e;
        static final int[] f;
        private int A;
        private int B;
        private int C;
        private int D;
        private int E;
        private int F;
        private int G;
        boolean h;
        boolean i;
        int j;
        boolean k;
        int l;
        int m;
        int n;
        int o;
        boolean p;
        int q;
        int r;
        int s;
        private int z;

        /* renamed from: a  reason: collision with root package name */
        public static final int f3802a = a(2, 2, 2, 0);

        /* renamed from: d  reason: collision with root package name */
        static final int[] f3805d = {0, 0, 0, 0, 0, 2, 0};
        private static final int[] t = {0, 0, 0, 0, 0, 0, 2};
        private static final int[] u = {3, 3, 3, 3, 3, 3, 1};
        private static final boolean[] v = {false, false, false, true, true, true, false};
        private static final int[] w = {0, 1, 2, 3, 4, 3, 4};
        private static final int[] x = {0, 0, 0, 0, 0, 3, 3};
        final List<SpannableString> g = new ArrayList();
        private final SpannableStringBuilder y = new SpannableStringBuilder();

        static {
            int a2 = a(0, 0, 0, 0);
            f3803b = a2;
            int a3 = a(0, 0, 0, 3);
            f3804c = a3;
            e = new int[]{a2, a3, a2, a2, a3, a2, a2};
            f = new int[]{a2, a2, a2, a2, a2, a3, a3};
        }

        public a() {
            b();
        }

        public static int a(int i, int i2, int i3) {
            return a(i, i2, i3, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int a(int r5, int r6, int r7, int r8) {
            /*
                r0 = r5
                r1 = 4
                int r0 = androidx.media2.exoplayer.external.util.a.a(r0, r1)
                r0 = r6
                r1 = 4
                int r0 = androidx.media2.exoplayer.external.util.a.a(r0, r1)
                r0 = r7
                r1 = 4
                int r0 = androidx.media2.exoplayer.external.util.a.a(r0, r1)
                r0 = r8
                r1 = 4
                int r0 = androidx.media2.exoplayer.external.util.a.a(r0, r1)
                r0 = 0
                r9 = r0
                r0 = r8
                if (r0 == 0) goto L_0x003c
                r0 = r8
                r1 = 1
                if (r0 == r1) goto L_0x003c
                r0 = r8
                r1 = 2
                if (r0 == r1) goto L_0x0036
                r0 = r8
                r1 = 3
                if (r0 == r1) goto L_0x0031
                goto L_0x003c
            L_0x0031:
                r0 = 0
                r8 = r0
                goto L_0x0040
            L_0x0036:
                r0 = 127(0x7f, float:1.78E-43)
                r8 = r0
                goto L_0x0040
            L_0x003c:
                r0 = 255(0xff, float:3.57E-43)
                r8 = r0
            L_0x0040:
                r0 = r5
                r1 = 1
                if (r0 <= r1) goto L_0x004c
                r0 = 255(0xff, float:3.57E-43)
                r5 = r0
                goto L_0x004e
            L_0x004c:
                r0 = 0
                r5 = r0
            L_0x004e:
                r0 = r6
                r1 = 1
                if (r0 <= r1) goto L_0x005a
                r0 = 255(0xff, float:3.57E-43)
                r6 = r0
                goto L_0x005c
            L_0x005a:
                r0 = 0
                r6 = r0
            L_0x005c:
                r0 = r7
                r1 = 1
                if (r0 <= r1) goto L_0x0066
                r0 = 255(0xff, float:3.57E-43)
                r9 = r0
            L_0x0066:
                r0 = r8
                r1 = r5
                r2 = r6
                r3 = r9
                int r0 = android.graphics.Color.argb(r0, r1, r2, r3)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.a.c.a.a(int, int, int, int):int");
        }

        private SpannableString f() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.y);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.B != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.B, length, 33);
                }
                if (this.C != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.C, length, 33);
                }
                if (this.D != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.E), this.D, length, 33);
                }
                if (this.F != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.G), this.F, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public final void a(char c2) {
            if (c2 == '\n') {
                this.g.add(f());
                this.y.clear();
                if (this.B != -1) {
                    this.B = 0;
                }
                if (this.C != -1) {
                    this.C = 0;
                }
                if (this.D != -1) {
                    this.D = 0;
                }
                if (this.F != -1) {
                    this.F = 0;
                }
                while (true) {
                    if ((this.p && this.g.size() >= this.o) || this.g.size() >= 15) {
                        this.g.remove(0);
                    } else {
                        return;
                    }
                }
            } else {
                this.y.append(c2);
            }
        }

        public final void a(int i, int i2) {
            this.A = i;
            this.z = i2;
        }

        public final void a(boolean z, boolean z2) {
            if (this.B != -1) {
                if (!z) {
                    this.y.setSpan(new StyleSpan(2), this.B, this.y.length(), 33);
                    this.B = -1;
                }
            } else if (z) {
                this.B = this.y.length();
            }
            if (this.C != -1) {
                if (!z2) {
                    this.y.setSpan(new UnderlineSpan(), this.C, this.y.length(), 33);
                    this.C = -1;
                }
            } else if (z2) {
                this.C = this.y.length();
            }
        }

        public final boolean a() {
            if (this.h) {
                return this.g.isEmpty() && this.y.length() == 0;
            }
            return true;
        }

        public final void b() {
            c();
            this.h = false;
            this.i = false;
            this.j = 4;
            this.k = false;
            this.l = 0;
            this.m = 0;
            this.n = 0;
            this.o = 15;
            this.p = true;
            this.z = 0;
            this.q = 0;
            this.r = 0;
            int i = f3803b;
            this.A = i;
            this.E = f3802a;
            this.G = i;
        }

        public final void b(int i, int i2) {
            if (!(this.D == -1 || this.E == i)) {
                this.y.setSpan(new ForegroundColorSpan(this.E), this.D, this.y.length(), 33);
            }
            if (i != f3802a) {
                this.D = this.y.length();
                this.E = i;
            }
            if (!(this.F == -1 || this.G == i2)) {
                this.y.setSpan(new BackgroundColorSpan(this.G), this.F, this.y.length(), 33);
            }
            if (i2 != f3803b) {
                this.F = this.y.length();
                this.G = i2;
            }
        }

        public final void c() {
            this.g.clear();
            this.y.clear();
            this.B = -1;
            this.C = -1;
            this.D = -1;
            this.F = -1;
            this.s = 0;
        }

        public final void d() {
            int length = this.y.length();
            if (length > 0) {
                this.y.delete(length - 1, length);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0100  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0125  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.media2.exoplayer.external.text.a.b e() {
            /*
                Method dump skipped, instructions count: 340
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.a.c.a.e():androidx.media2.exoplayer.external.text.a.b");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/c$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3806a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3807b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f3808c;

        /* renamed from: d  reason: collision with root package name */
        int f3809d = 0;

        public b(int i, int i2) {
            this.f3806a = i;
            this.f3807b = i2;
            this.f3808c = new byte[(i2 * 2) - 1];
        }
    }

    public c(int i, List<byte[]> list) {
        this.f3801d = i == -1 ? 1 : i;
        this.e = new a[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.e[i2] = new a();
        }
        this.f = this.e[0];
        l();
    }

    private void a(int i) {
        if (i == 0) {
            return;
        }
        if (i == 3) {
            this.g = k();
        } else if (i != 8) {
            switch (i) {
                case 12:
                    l();
                    return;
                case 13:
                    this.f.a('\n');
                    return;
                case 14:
                    return;
                default:
                    if (i >= 17 && i <= 23) {
                        StringBuilder sb = new StringBuilder(55);
                        sb.append("Currently unsupported COMMAND_EXT1 Command: ");
                        sb.append(i);
                        j.a("Cea708Decoder", sb.toString());
                        this.f3800c.b(8);
                        return;
                    } else if (i < 24 || i > 31) {
                        StringBuilder sb2 = new StringBuilder(31);
                        sb2.append("Invalid C0 command: ");
                        sb2.append(i);
                        j.a("Cea708Decoder", sb2.toString());
                        return;
                    } else {
                        StringBuilder sb3 = new StringBuilder(54);
                        sb3.append("Currently unsupported COMMAND_P16 Command: ");
                        sb3.append(i);
                        j.a("Cea708Decoder", sb3.toString());
                        this.f3800c.b(16);
                        return;
                    }
            }
        } else {
            this.f.d();
        }
    }

    private void b(int i) {
        a aVar;
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
                if (this.j != i2) {
                    this.j = i2;
                    this.f = this.e[i2];
                    return;
                }
                return;
            case 136:
                for (int i3 = 1; i3 <= 8; i3++) {
                    if (this.f3800c.e()) {
                        this.e[8 - i3].c();
                    }
                }
                return;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.f3800c.e()) {
                        this.e[8 - i4].i = true;
                    }
                }
                return;
            case 138:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.f3800c.e()) {
                        this.e[8 - i5].i = false;
                    }
                }
                return;
            case 139:
                for (int i6 = 1; i6 <= 8; i6++) {
                    if (this.f3800c.e()) {
                        this.e[8 - i6].i = !aVar.i;
                    }
                }
                return;
            case TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE /* 140 */:
                for (int i7 = 1; i7 <= 8; i7++) {
                    if (this.f3800c.e()) {
                        this.e[8 - i7].b();
                    }
                }
                return;
            case 141:
                this.f3800c.b(8);
                return;
            case 142:
                return;
            case 143:
                l();
                return;
            case 144:
                if (!this.f.h) {
                    this.f3800c.b(16);
                    return;
                }
                this.f3800c.c(4);
                this.f3800c.c(2);
                this.f3800c.c(2);
                boolean e = this.f3800c.e();
                boolean e2 = this.f3800c.e();
                this.f3800c.c(3);
                this.f3800c.c(3);
                this.f.a(e, e2);
                return;
            case 145:
                if (!this.f.h) {
                    this.f3800c.b(24);
                    return;
                }
                int a2 = a.a(this.f3800c.c(2), this.f3800c.c(2), this.f3800c.c(2), this.f3800c.c(2));
                int a3 = a.a(this.f3800c.c(2), this.f3800c.c(2), this.f3800c.c(2), this.f3800c.c(2));
                this.f3800c.b(2);
                a.a(this.f3800c.c(2), this.f3800c.c(2), this.f3800c.c(2));
                this.f.b(a2, a3);
                return;
            case 146:
                if (!this.f.h) {
                    this.f3800c.b(16);
                    return;
                }
                this.f3800c.b(4);
                int c2 = this.f3800c.c(4);
                this.f3800c.b(2);
                this.f3800c.c(6);
                a aVar2 = this.f;
                if (aVar2.s != c2) {
                    aVar2.a('\n');
                }
                aVar2.s = c2;
                return;
            case 147:
            case 148:
            case 149:
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
            default:
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid C1 command: ");
                sb.append(i);
                j.a("Cea708Decoder", sb.toString());
                return;
            case 151:
                if (!this.f.h) {
                    this.f3800c.b(32);
                    return;
                }
                int a4 = a.a(this.f3800c.c(2), this.f3800c.c(2), this.f3800c.c(2), this.f3800c.c(2));
                this.f3800c.c(2);
                a.a(this.f3800c.c(2), this.f3800c.c(2), this.f3800c.c(2));
                this.f3800c.e();
                this.f3800c.e();
                this.f3800c.c(2);
                this.f3800c.c(2);
                int c3 = this.f3800c.c(2);
                this.f3800c.b(8);
                this.f.a(a4, c3);
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
                a aVar3 = this.e[i8];
                this.f3800c.b(2);
                boolean e3 = this.f3800c.e();
                boolean e4 = this.f3800c.e();
                this.f3800c.e();
                int c4 = this.f3800c.c(3);
                boolean e5 = this.f3800c.e();
                int c5 = this.f3800c.c(7);
                int c6 = this.f3800c.c(8);
                int c7 = this.f3800c.c(4);
                int c8 = this.f3800c.c(4);
                this.f3800c.b(2);
                this.f3800c.c(6);
                this.f3800c.b(2);
                int c9 = this.f3800c.c(3);
                int c10 = this.f3800c.c(3);
                aVar3.h = true;
                aVar3.i = e3;
                aVar3.p = e4;
                aVar3.j = c4;
                aVar3.k = e5;
                aVar3.l = c5;
                aVar3.m = c6;
                aVar3.n = c7;
                int i9 = c8 + 1;
                if (aVar3.o != i9) {
                    aVar3.o = i9;
                    while (true) {
                        if ((e4 && aVar3.g.size() >= aVar3.o) || aVar3.g.size() >= 15) {
                            aVar3.g.remove(0);
                        }
                    }
                }
                if (!(c9 == 0 || aVar3.q == c9)) {
                    aVar3.q = c9;
                    int i10 = c9 - 1;
                    aVar3.a(a.e[i10], a.f3805d[i10]);
                }
                if (!(c10 == 0 || aVar3.r == c10)) {
                    aVar3.r = c10;
                    aVar3.a(false, false);
                    aVar3.b(a.f3802a, a.f[c10 - 1]);
                }
                if (this.j != i8) {
                    this.j = i8;
                    this.f = this.e[i8];
                    return;
                }
                return;
        }
    }

    private void c(int i) {
        if (i <= 7) {
            return;
        }
        if (i <= 15) {
            this.f3800c.b(8);
        } else if (i <= 23) {
            this.f3800c.b(16);
        } else if (i <= 31) {
            this.f3800c.b(24);
        }
    }

    private void d(int i) {
        if (i <= 135) {
            this.f3800c.b(32);
        } else if (i <= 143) {
            this.f3800c.b(40);
        } else if (i <= 159) {
            this.f3800c.b(2);
            this.f3800c.b(this.f3800c.c(6) * 8);
        }
    }

    private void e(int i) {
        if (i == 127) {
            this.f.a((char) 9835);
        } else {
            this.f.a((char) (i & 255));
        }
    }

    private void f(int i) {
        this.f.a((char) (i & 255));
    }

    private void g(int i) {
        if (i == 32) {
            this.f.a(' ');
        } else if (i == 33) {
            this.f.a((char) 160);
        } else if (i == 37) {
            this.f.a((char) 8230);
        } else if (i == 42) {
            this.f.a((char) 352);
        } else if (i == 44) {
            this.f.a((char) 338);
        } else if (i == 63) {
            this.f.a((char) 376);
        } else if (i == 57) {
            this.f.a((char) 8482);
        } else if (i == 58) {
            this.f.a((char) 353);
        } else if (i == 60) {
            this.f.a((char) 339);
        } else if (i != 61) {
            switch (i) {
                case 48:
                    this.f.a((char) 9608);
                    return;
                case 49:
                    this.f.a((char) 8216);
                    return;
                case 50:
                    this.f.a((char) 8217);
                    return;
                case 51:
                    this.f.a((char) 8220);
                    return;
                case 52:
                    this.f.a((char) 8221);
                    return;
                case 53:
                    this.f.a((char) 8226);
                    return;
                default:
                    switch (i) {
                        case 118:
                            this.f.a((char) 8539);
                            return;
                        case 119:
                            this.f.a((char) 8540);
                            return;
                        case 120:
                            this.f.a((char) 8541);
                            return;
                        case 121:
                            this.f.a((char) 8542);
                            return;
                        case 122:
                            this.f.a((char) 9474);
                            return;
                        case 123:
                            this.f.a((char) 9488);
                            return;
                        case 124:
                            this.f.a((char) 9492);
                            return;
                        case JsonReaderKt.END_OBJ /* 125 */:
                            this.f.a((char) 9472);
                            return;
                        case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                            this.f.a((char) 9496);
                            return;
                        case 127:
                            this.f.a((char) 9484);
                            return;
                        default:
                            StringBuilder sb = new StringBuilder(33);
                            sb.append("Invalid G2 character: ");
                            sb.append(i);
                            j.a("Cea708Decoder", sb.toString());
                            return;
                    }
            }
        } else {
            this.f.a((char) 8480);
        }
    }

    private void h(int i) {
        if (i == 160) {
            this.f.a((char) 13252);
            return;
        }
        StringBuilder sb = new StringBuilder(33);
        sb.append("Invalid G3 character: ");
        sb.append(i);
        j.a("Cea708Decoder", sb.toString());
        this.f.a('_');
    }

    private void i() {
        if (this.i != null) {
            j();
            this.i = null;
        }
    }

    private void j() {
        if (this.i.f3809d != (this.i.f3807b * 2) - 1) {
            int i = this.i.f3807b;
            int i2 = this.i.f3809d;
            int i3 = this.i.f3806a;
            StringBuilder sb = new StringBuilder(131);
            sb.append("DtvCcPacket ended prematurely; size is ");
            sb.append((i * 2) - 1);
            sb.append(", but current index is ");
            sb.append(i2);
            sb.append(" (sequence number ");
            sb.append(i3);
            sb.append("); ignoring packet");
            j.a("Cea708Decoder", sb.toString());
            return;
        }
        this.f3800c.a(this.i.f3808c, this.i.f3809d);
        int c2 = this.f3800c.c(3);
        int c3 = this.f3800c.c(5);
        int i4 = c2;
        if (c2 == 7) {
            this.f3800c.b(2);
            int c4 = this.f3800c.c(6);
            i4 = c4;
            if (c4 < 7) {
                StringBuilder sb2 = new StringBuilder(44);
                sb2.append("Invalid extended service number: ");
                sb2.append(c4);
                j.a("Cea708Decoder", sb2.toString());
                i4 = c4;
            }
        }
        if (c3 == 0) {
            if (i4 != 0) {
                StringBuilder sb3 = new StringBuilder(59);
                sb3.append("serviceNumber is non-zero (");
                sb3.append(i4);
                sb3.append(") when blockSize is 0");
                j.a("Cea708Decoder", sb3.toString());
            }
        } else if (i4 == this.f3801d) {
            boolean z = false;
            while (this.f3800c.a() > 0) {
                int c5 = this.f3800c.c(8);
                if (c5 == 16) {
                    int c6 = this.f3800c.c(8);
                    if (c6 <= 31) {
                        c(c6);
                    } else {
                        if (c6 <= 127) {
                            g(c6);
                        } else if (c6 <= 159) {
                            d(c6);
                        } else if (c6 <= 255) {
                            h(c6);
                        } else {
                            StringBuilder sb4 = new StringBuilder(37);
                            sb4.append("Invalid extended command: ");
                            sb4.append(c6);
                            j.a("Cea708Decoder", sb4.toString());
                        }
                        z = true;
                    }
                } else if (c5 <= 31) {
                    a(c5);
                } else {
                    if (c5 <= 127) {
                        e(c5);
                    } else if (c5 <= 159) {
                        b(c5);
                    } else if (c5 <= 255) {
                        f(c5);
                    } else {
                        StringBuilder sb5 = new StringBuilder(33);
                        sb5.append("Invalid base command: ");
                        sb5.append(c5);
                        j.a("Cea708Decoder", sb5.toString());
                    }
                    z = true;
                }
            }
            if (z) {
                this.g = k();
            }
        }
    }

    private List<androidx.media2.exoplayer.external.text.a> k() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.e[i].a() && this.e[i].i) {
                arrayList.add(this.e[i].e());
            }
        }
        Collections.sort(arrayList);
        return Collections.unmodifiableList(arrayList);
    }

    private void l() {
        for (int i = 0; i < 8; i++) {
            this.e[i].b();
        }
    }

    @Override // androidx.media2.exoplayer.external.text.a.d, androidx.media2.exoplayer.external.text.e
    public final /* bridge */ /* synthetic */ void a(long j) {
        super.a(j);
    }

    @Override // androidx.media2.exoplayer.external.text.a.d
    protected final void a(g gVar) {
        this.f3799b.a(gVar.f2949c.array(), gVar.f2949c.limit());
        while (this.f3799b.b() >= 3) {
            int c2 = this.f3799b.c() & 7;
            int i = c2 & 3;
            boolean z = false;
            boolean z2 = (c2 & 4) == 4;
            byte c3 = (byte) this.f3799b.c();
            byte c4 = (byte) this.f3799b.c();
            if (i == 2 || i == 3) {
                if (z2) {
                    if (i == 3) {
                        i();
                        int i2 = c3 & 63;
                        int i3 = i2;
                        if (i2 == 0) {
                            i3 = 64;
                        }
                        b bVar = new b((c3 & 192) >> 6, i3);
                        this.i = bVar;
                        byte[] bArr = bVar.f3808c;
                        b bVar2 = this.i;
                        int i4 = bVar2.f3809d;
                        bVar2.f3809d = i4 + 1;
                        bArr[i4] = c4;
                    } else {
                        if (i == 2) {
                            z = true;
                        }
                        androidx.media2.exoplayer.external.util.a.a(z);
                        b bVar3 = this.i;
                        if (bVar3 == null) {
                            j.b("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = bVar3.f3808c;
                            b bVar4 = this.i;
                            int i5 = bVar4.f3809d;
                            bVar4.f3809d = i5 + 1;
                            bArr2[i5] = c3;
                            byte[] bArr3 = this.i.f3808c;
                            b bVar5 = this.i;
                            int i6 = bVar5.f3809d;
                            bVar5.f3809d = i6 + 1;
                            bArr3[i6] = c4;
                        }
                    }
                    if (this.i.f3809d == (this.i.f3807b * 2) - 1) {
                        i();
                    }
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.text.a.d
    public final /* bridge */ /* synthetic */ void b(g gVar) throws SubtitleDecoderException {
        super.a(gVar);
    }

    @Override // androidx.media2.exoplayer.external.text.a.d, androidx.media2.exoplayer.external.b.c
    public final void c() {
        super.c();
        this.g = null;
        this.h = null;
        this.j = 0;
        this.f = this.e[0];
        l();
        this.i = null;
    }

    @Override // androidx.media2.exoplayer.external.text.a.d, androidx.media2.exoplayer.external.b.c
    public final /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    @Override // androidx.media2.exoplayer.external.text.a.d
    protected final boolean e() {
        return this.g != this.h;
    }

    @Override // androidx.media2.exoplayer.external.text.a.d
    protected final d f() {
        List<androidx.media2.exoplayer.external.text.a> list = this.g;
        this.h = list;
        return new e(list);
    }

    @Override // androidx.media2.exoplayer.external.text.a.d
    public final /* bridge */ /* synthetic */ h g() throws SubtitleDecoderException {
        return super.b();
    }

    @Override // androidx.media2.exoplayer.external.text.a.d
    public final /* bridge */ /* synthetic */ g h() throws SubtitleDecoderException {
        return super.a();
    }
}
