package com.google.android.exoplayer2.text.a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.d;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import com.mopub.mobileads.resource.DrawableConstants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.ws.WebSocketProtocol;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/b.class */
public final class b extends com.google.android.exoplayer2.text.a.c {

    /* renamed from: a  reason: collision with root package name */
    private final u f21712a = new u();

    /* renamed from: b  reason: collision with root package name */
    private final t f21713b = new t();

    /* renamed from: c  reason: collision with root package name */
    private int f21714c = -1;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f21715d;
    private final int e;
    private final C0439b[] f;
    private C0439b g;
    private List<com.google.android.exoplayer2.text.b> h;
    private List<com.google.android.exoplayer2.text.b> i;
    private c j;
    private int k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/b$a.class */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private static final Comparator<a> f21716c = _$$Lambda$b$a$YskcJtEuqMKQOqsRy3Keb1fvr_M.INSTANCE;

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.text.b f21717a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21718b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
            b.a aVar = new b.a();
            aVar.f21738a = charSequence;
            aVar.f21740c = alignment;
            b.a a2 = aVar.a(f, i);
            a2.f21741d = i2;
            a2.e = f2;
            a2.f = i3;
            a2.g = f3;
            if (z) {
                a2.j = i4;
                a2.i = true;
            }
            this.f21717a = a2.a();
            this.f21718b = i5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int a(a aVar, a aVar2) {
            return Integer.compare(aVar2.f21718b, aVar.f21718b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/b$b.class */
    public static final class C0439b {

        /* renamed from: b  reason: collision with root package name */
        public static final int f21720b;

        /* renamed from: c  reason: collision with root package name */
        public static final int f21721c;
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
        public static final int f21719a = a(2, 2, 2, 0);

        /* renamed from: d  reason: collision with root package name */
        static final int[] f21722d = {0, 0, 0, 0, 0, 2, 0};
        private static final int[] t = {0, 0, 0, 0, 0, 0, 2};
        private static final int[] u = {3, 3, 3, 3, 3, 3, 1};
        private static final boolean[] v = {false, false, false, true, true, true, false};
        private static final int[] w = {0, 1, 2, 3, 4, 3, 4};
        private static final int[] x = {0, 0, 0, 0, 0, 3, 3};
        final List<SpannableString> g = new ArrayList();
        private final SpannableStringBuilder y = new SpannableStringBuilder();

        static {
            int a2 = a(0, 0, 0, 0);
            f21720b = a2;
            int a3 = a(0, 0, 0, 3);
            f21721c = a3;
            e = new int[]{a2, a3, a2, a2, a3, a2, a2};
            f = new int[]{a2, a2, a2, a2, a2, a3, a3};
        }

        public C0439b() {
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
                int r0 = com.google.android.exoplayer2.util.a.a(r0, r1)
                r0 = r6
                r1 = 4
                int r0 = com.google.android.exoplayer2.util.a.a(r0, r1)
                r0 = r7
                r1 = 4
                int r0 = com.google.android.exoplayer2.util.a.a(r0, r1)
                r0 = r8
                r1 = 4
                int r0 = com.google.android.exoplayer2.util.a.a(r0, r1)
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.a.b.C0439b.a(int, int, int, int):int");
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
            int i = f21720b;
            this.A = i;
            this.E = f21719a;
            this.G = i;
        }

        public final void b(int i, int i2) {
            if (!(this.D == -1 || this.E == i)) {
                this.y.setSpan(new ForegroundColorSpan(this.E), this.D, this.y.length(), 33);
            }
            if (i != f21719a) {
                this.D = this.y.length();
                this.E = i;
            }
            if (!(this.F == -1 || this.G == i2)) {
                this.y.setSpan(new BackgroundColorSpan(this.G), this.F, this.y.length(), 33);
            }
            if (i2 != f21720b) {
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

        /* JADX WARN: Removed duplicated region for block: B:24:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00db  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e0  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00f6  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x011b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.google.android.exoplayer2.text.a.b.a e() {
            /*
                Method dump skipped, instructions count: 325
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.a.b.C0439b.e():com.google.android.exoplayer2.text.a.b$a");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/b$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f21723a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21724b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f21725c;

        /* renamed from: d  reason: collision with root package name */
        int f21726d = 0;

        public c(int i, int i2) {
            this.f21723a = i;
            this.f21724b = i2;
            this.f21725c = new byte[(i2 * 2) - 1];
        }
    }

    public b(int i, List<byte[]> list) {
        boolean z = true;
        this.e = i == -1 ? 1 : i;
        this.f21715d = (list == null || !d.a(list)) ? false : z;
        this.f = new C0439b[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.f[i2] = new C0439b();
        }
        this.g = this.f[0];
    }

    private void a(int i) {
        if (i == 0) {
            return;
        }
        if (i == 3) {
            this.h = m();
        } else if (i != 8) {
            switch (i) {
                case 12:
                    n();
                    return;
                case 13:
                    this.g.a('\n');
                    return;
                case 14:
                    return;
                default:
                    if (i >= 17 && i <= 23) {
                        n.a("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: ".concat(String.valueOf(i)));
                        this.f21713b.b(8);
                        return;
                    } else if (i < 24 || i > 31) {
                        n.a("Cea708Decoder", "Invalid C0 command: ".concat(String.valueOf(i)));
                        return;
                    } else {
                        n.a("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: ".concat(String.valueOf(i)));
                        this.f21713b.b(16);
                        return;
                    }
            }
        } else {
            this.g.d();
        }
    }

    private void b(int i) {
        C0439b bVar;
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
                if (this.k != i2) {
                    this.k = i2;
                    this.g = this.f[i2];
                    return;
                }
                return;
            case 136:
                for (int i3 = 1; i3 <= 8; i3++) {
                    if (this.f21713b.e()) {
                        this.f[8 - i3].c();
                    }
                }
                return;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.f21713b.e()) {
                        this.f[8 - i4].i = true;
                    }
                }
                return;
            case 138:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.f21713b.e()) {
                        this.f[8 - i5].i = false;
                    }
                }
                return;
            case 139:
                for (int i6 = 1; i6 <= 8; i6++) {
                    if (this.f21713b.e()) {
                        this.f[8 - i6].i = !bVar.i;
                    }
                }
                return;
            case TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE /* 140 */:
                for (int i7 = 1; i7 <= 8; i7++) {
                    if (this.f21713b.e()) {
                        this.f[8 - i7].b();
                    }
                }
                return;
            case 141:
                this.f21713b.b(8);
                return;
            case 142:
                return;
            case 143:
                n();
                return;
            case 144:
                if (!this.g.h) {
                    this.f21713b.b(16);
                    return;
                }
                this.f21713b.c(4);
                this.f21713b.c(2);
                this.f21713b.c(2);
                boolean e = this.f21713b.e();
                boolean e2 = this.f21713b.e();
                this.f21713b.c(3);
                this.f21713b.c(3);
                this.g.a(e, e2);
                return;
            case 145:
                if (!this.g.h) {
                    this.f21713b.b(24);
                    return;
                }
                int a2 = C0439b.a(this.f21713b.c(2), this.f21713b.c(2), this.f21713b.c(2), this.f21713b.c(2));
                int a3 = C0439b.a(this.f21713b.c(2), this.f21713b.c(2), this.f21713b.c(2), this.f21713b.c(2));
                this.f21713b.b(2);
                C0439b.a(this.f21713b.c(2), this.f21713b.c(2), this.f21713b.c(2));
                this.g.b(a2, a3);
                return;
            case 146:
                if (!this.g.h) {
                    this.f21713b.b(16);
                    return;
                }
                this.f21713b.b(4);
                int c2 = this.f21713b.c(4);
                this.f21713b.b(2);
                this.f21713b.c(6);
                C0439b bVar2 = this.g;
                if (bVar2.s != c2) {
                    bVar2.a('\n');
                }
                bVar2.s = c2;
                return;
            case 147:
            case 148:
            case 149:
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
            default:
                n.a("Cea708Decoder", "Invalid C1 command: ".concat(String.valueOf(i)));
                return;
            case 151:
                if (!this.g.h) {
                    this.f21713b.b(32);
                    return;
                }
                int a4 = C0439b.a(this.f21713b.c(2), this.f21713b.c(2), this.f21713b.c(2), this.f21713b.c(2));
                this.f21713b.c(2);
                C0439b.a(this.f21713b.c(2), this.f21713b.c(2), this.f21713b.c(2));
                this.f21713b.e();
                this.f21713b.e();
                this.f21713b.c(2);
                this.f21713b.c(2);
                int c3 = this.f21713b.c(2);
                this.f21713b.b(8);
                this.g.a(a4, c3);
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
                C0439b bVar3 = this.f[i8];
                this.f21713b.b(2);
                boolean e3 = this.f21713b.e();
                boolean e4 = this.f21713b.e();
                this.f21713b.e();
                int c4 = this.f21713b.c(3);
                boolean e5 = this.f21713b.e();
                int c5 = this.f21713b.c(7);
                int c6 = this.f21713b.c(8);
                int c7 = this.f21713b.c(4);
                int c8 = this.f21713b.c(4);
                this.f21713b.b(2);
                this.f21713b.c(6);
                this.f21713b.b(2);
                int c9 = this.f21713b.c(3);
                int c10 = this.f21713b.c(3);
                bVar3.h = true;
                bVar3.i = e3;
                bVar3.p = e4;
                bVar3.j = c4;
                bVar3.k = e5;
                bVar3.l = c5;
                bVar3.m = c6;
                bVar3.n = c7;
                int i9 = c8 + 1;
                if (bVar3.o != i9) {
                    bVar3.o = i9;
                    while (true) {
                        if ((e4 && bVar3.g.size() >= bVar3.o) || bVar3.g.size() >= 15) {
                            bVar3.g.remove(0);
                        }
                    }
                }
                if (!(c9 == 0 || bVar3.q == c9)) {
                    bVar3.q = c9;
                    int i10 = c9 - 1;
                    bVar3.a(C0439b.e[i10], C0439b.f21722d[i10]);
                }
                if (!(c10 == 0 || bVar3.r == c10)) {
                    bVar3.r = c10;
                    bVar3.a(false, false);
                    bVar3.b(C0439b.f21719a, C0439b.f[c10 - 1]);
                }
                if (this.k != i8) {
                    this.k = i8;
                    this.g = this.f[i8];
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
            this.f21713b.b(8);
        } else if (i <= 23) {
            this.f21713b.b(16);
        } else if (i <= 31) {
            this.f21713b.b(24);
        }
    }

    private void d(int i) {
        if (i <= 135) {
            this.f21713b.b(32);
        } else if (i <= 143) {
            this.f21713b.b(40);
        } else if (i <= 159) {
            this.f21713b.b(2);
            this.f21713b.b(this.f21713b.c(6) * 8);
        }
    }

    private void e(int i) {
        if (i == 127) {
            this.g.a((char) 9835);
        } else {
            this.g.a((char) (i & 255));
        }
    }

    private void f(int i) {
        this.g.a((char) (i & 255));
    }

    private void g(int i) {
        if (i == 32) {
            this.g.a(' ');
        } else if (i == 33) {
            this.g.a((char) 160);
        } else if (i == 37) {
            this.g.a((char) 8230);
        } else if (i == 42) {
            this.g.a((char) 352);
        } else if (i == 44) {
            this.g.a((char) 338);
        } else if (i == 63) {
            this.g.a((char) 376);
        } else if (i == 57) {
            this.g.a((char) 8482);
        } else if (i == 58) {
            this.g.a((char) 353);
        } else if (i == 60) {
            this.g.a((char) 339);
        } else if (i != 61) {
            switch (i) {
                case 48:
                    this.g.a((char) 9608);
                    return;
                case 49:
                    this.g.a((char) 8216);
                    return;
                case 50:
                    this.g.a((char) 8217);
                    return;
                case 51:
                    this.g.a((char) 8220);
                    return;
                case 52:
                    this.g.a((char) 8221);
                    return;
                case 53:
                    this.g.a((char) 8226);
                    return;
                default:
                    switch (i) {
                        case 118:
                            this.g.a((char) 8539);
                            return;
                        case 119:
                            this.g.a((char) 8540);
                            return;
                        case 120:
                            this.g.a((char) 8541);
                            return;
                        case 121:
                            this.g.a((char) 8542);
                            return;
                        case 122:
                            this.g.a((char) 9474);
                            return;
                        case 123:
                            this.g.a((char) 9488);
                            return;
                        case 124:
                            this.g.a((char) 9492);
                            return;
                        case JsonReaderKt.END_OBJ /* 125 */:
                            this.g.a((char) 9472);
                            return;
                        case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                            this.g.a((char) 9496);
                            return;
                        case 127:
                            this.g.a((char) 9484);
                            return;
                        default:
                            n.a("Cea708Decoder", "Invalid G2 character: ".concat(String.valueOf(i)));
                            return;
                    }
            }
        } else {
            this.g.a((char) 8480);
        }
    }

    private void h(int i) {
        if (i == 160) {
            this.g.a((char) 13252);
            return;
        }
        n.a("Cea708Decoder", "Invalid G3 character: ".concat(String.valueOf(i)));
        this.g.a('_');
    }

    private void i() {
        if (this.j != null) {
            l();
            this.j = null;
        }
    }

    @RequiresNonNull({"currentDtvCcPacket"})
    private void l() {
        if (this.j.f21726d != (this.j.f21724b * 2) - 1) {
            StringBuilder sb = new StringBuilder("DtvCcPacket ended prematurely; size is ");
            sb.append((this.j.f21724b * 2) - 1);
            sb.append(", but current index is ");
            sb.append(this.j.f21726d);
            sb.append(" (sequence number ");
            sb.append(this.j.f21723a);
            sb.append(");");
            n.a();
        }
        this.f21713b.a(this.j.f21725c, this.j.f21726d);
        int c2 = this.f21713b.c(3);
        int c3 = this.f21713b.c(5);
        int i = c2;
        if (c2 == 7) {
            this.f21713b.b(2);
            int c4 = this.f21713b.c(6);
            i = c4;
            if (c4 < 7) {
                n.a("Cea708Decoder", "Invalid extended service number: ".concat(String.valueOf(c4)));
                i = c4;
            }
        }
        if (c3 == 0) {
            if (i != 0) {
                n.a("Cea708Decoder", "serviceNumber is non-zero (" + i + ") when blockSize is 0");
            }
        } else if (i == this.e) {
            boolean z = false;
            while (this.f21713b.a() > 0) {
                int c5 = this.f21713b.c(8);
                if (c5 == 16) {
                    int c6 = this.f21713b.c(8);
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
                            n.a("Cea708Decoder", "Invalid extended command: ".concat(String.valueOf(c6)));
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
                        n.a("Cea708Decoder", "Invalid base command: ".concat(String.valueOf(c5)));
                    }
                    z = true;
                }
            }
            if (z) {
                this.h = m();
            }
        }
    }

    private List<com.google.android.exoplayer2.text.b> m() {
        a e;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.f[i].a() && this.f[i].i && (e = this.f[i].e()) != null) {
                arrayList.add(e);
            }
        }
        Collections.sort(arrayList, a.f21716c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(((a) arrayList.get(i2)).f21717a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void n() {
        for (int i = 0; i < 8; i++) {
            this.f[i].b();
        }
    }

    @Override // com.google.android.exoplayer2.text.a.c, com.google.android.exoplayer2.text.f
    public final /* bridge */ /* synthetic */ void a(long j) {
        super.a(j);
    }

    @Override // com.google.android.exoplayer2.text.a.c
    protected final void a(h hVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.b(hVar.f20822c);
        this.f21712a.a(byteBuffer.array(), byteBuffer.limit());
        while (this.f21712a.a() >= 3) {
            int c2 = this.f21712a.c() & 7;
            int i = c2 & 3;
            boolean z = false;
            boolean z2 = (c2 & 4) == 4;
            byte c3 = (byte) this.f21712a.c();
            byte c4 = (byte) this.f21712a.c();
            if (i == 2 || i == 3) {
                if (z2) {
                    if (i == 3) {
                        i();
                        int i2 = (c3 & 192) >> 6;
                        int i3 = this.f21714c;
                        if (!(i3 == -1 || i2 == (i3 + 1) % 4)) {
                            n();
                            n.a("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f21714c + " current=" + i2);
                        }
                        this.f21714c = i2;
                        int i4 = c3 & 63;
                        int i5 = i4;
                        if (i4 == 0) {
                            i5 = 64;
                        }
                        c cVar = new c(i2, i5);
                        this.j = cVar;
                        byte[] bArr = cVar.f21725c;
                        c cVar2 = this.j;
                        int i6 = cVar2.f21726d;
                        cVar2.f21726d = i6 + 1;
                        bArr[i6] = c4;
                    } else {
                        if (i == 2) {
                            z = true;
                        }
                        com.google.android.exoplayer2.util.a.a(z);
                        c cVar3 = this.j;
                        if (cVar3 == null) {
                            n.b("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = cVar3.f21725c;
                            c cVar4 = this.j;
                            int i7 = cVar4.f21726d;
                            cVar4.f21726d = i7 + 1;
                            bArr2[i7] = c3;
                            byte[] bArr3 = this.j.f21725c;
                            c cVar5 = this.j;
                            int i8 = cVar5.f21726d;
                            cVar5.f21726d = i8 + 1;
                            bArr3[i8] = c4;
                        }
                    }
                    if (this.j.f21726d == (this.j.f21724b * 2) - 1) {
                        i();
                    }
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.text.a.c
    public final /* bridge */ /* synthetic */ void b(h hVar) throws SubtitleDecoderException {
        super.a(hVar);
    }

    @Override // com.google.android.exoplayer2.text.a.c, com.google.android.exoplayer2.decoder.c
    public final void c() {
        super.c();
        this.h = null;
        this.i = null;
        this.k = 0;
        this.g = this.f[0];
        n();
        this.j = null;
    }

    @Override // com.google.android.exoplayer2.text.a.c, com.google.android.exoplayer2.decoder.c
    public final /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    @Override // com.google.android.exoplayer2.text.a.c
    public final /* bridge */ /* synthetic */ i e() throws SubtitleDecoderException {
        return super.b();
    }

    @Override // com.google.android.exoplayer2.text.a.c
    protected final boolean f() {
        return this.h != this.i;
    }

    @Override // com.google.android.exoplayer2.text.a.c
    protected final e g() {
        List<com.google.android.exoplayer2.text.b> list = this.h;
        this.i = list;
        return new d((List) com.google.android.exoplayer2.util.a.b(list));
    }

    @Override // com.google.android.exoplayer2.text.a.c
    public final /* bridge */ /* synthetic */ h h() throws SubtitleDecoderException {
        return super.a();
    }
}
