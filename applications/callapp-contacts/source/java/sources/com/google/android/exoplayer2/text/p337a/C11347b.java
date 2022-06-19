package com.google.android.exoplayer2.text.p337a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.AbstractC11405i;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.text.C11402h;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11604d;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import com.mopub.mobileads.resource.DrawableConstants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.p578ws.WebSocketProtocol;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.text.a.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/b.class */
public final class C11347b extends AbstractC11351c {

    /* renamed from: a */
    private final C11628u f37351a = new C11628u();

    /* renamed from: b */
    private final C11627t f37352b = new C11627t();

    /* renamed from: c */
    private int f37353c = -1;

    /* renamed from: d */
    private final boolean f37354d;

    /* renamed from: e */
    private final int f37355e;

    /* renamed from: f */
    private final C11349b[] f37356f;

    /* renamed from: g */
    private C11349b f37357g;

    /* renamed from: h */
    private List<C11356b> f37358h;

    /* renamed from: i */
    private List<C11356b> f37359i;

    /* renamed from: j */
    private C11350c f37360j;

    /* renamed from: k */
    private int f37361k;

    /* renamed from: com.google.android.exoplayer2.text.a.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/b$a.class */
    public static final class C11348a {

        /* renamed from: c */
        private static final Comparator<C11348a> f37362c = _$$Lambda$b$a$YskcJtEuqMKQOqsRy3Keb1fvr_M.INSTANCE;

        /* renamed from: a */
        public final C11356b f37363a;

        /* renamed from: b */
        public final int f37364b;

        public C11348a(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
            C11356b.C11358a c11358a = new C11356b.C11358a();
            c11358a.f37428a = charSequence;
            c11358a.f37430c = alignment;
            C11356b.C11358a m20743a = c11358a.m20743a(f, i);
            m20743a.f37431d = i2;
            m20743a.f37432e = f2;
            m20743a.f37433f = i3;
            m20743a.f37434g = f3;
            if (z) {
                m20743a.f37437j = i4;
                m20743a.f37436i = true;
            }
            this.f37363a = m20743a.m20744a();
            this.f37364b = i5;
        }

        /* renamed from: a */
        public static /* synthetic */ int m20774a(C11348a c11348a, C11348a c11348a2) {
            return Integer.compare(c11348a2.f37364b, c11348a.f37364b);
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.a.b$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/b$b.class */
    public static final class C11349b {

        /* renamed from: b */
        public static final int f37366b;

        /* renamed from: c */
        public static final int f37367c;

        /* renamed from: e */
        static final int[] f37369e;

        /* renamed from: f */
        static final int[] f37370f;

        /* renamed from: A */
        private int f37376A;

        /* renamed from: B */
        private int f37377B;

        /* renamed from: C */
        private int f37378C;

        /* renamed from: D */
        private int f37379D;

        /* renamed from: E */
        private int f37380E;

        /* renamed from: F */
        private int f37381F;

        /* renamed from: G */
        private int f37382G;

        /* renamed from: h */
        boolean f37384h;

        /* renamed from: i */
        boolean f37385i;

        /* renamed from: j */
        int f37386j;

        /* renamed from: k */
        boolean f37387k;

        /* renamed from: l */
        int f37388l;

        /* renamed from: m */
        int f37389m;

        /* renamed from: n */
        int f37390n;

        /* renamed from: o */
        int f37391o;

        /* renamed from: p */
        boolean f37392p;

        /* renamed from: q */
        int f37393q;

        /* renamed from: r */
        int f37394r;

        /* renamed from: s */
        int f37395s;

        /* renamed from: z */
        private int f37397z;

        /* renamed from: a */
        public static final int f37365a = m20769a(2, 2, 2, 0);

        /* renamed from: d */
        static final int[] f37368d = {0, 0, 0, 0, 0, 2, 0};

        /* renamed from: t */
        private static final int[] f37371t = {0, 0, 0, 0, 0, 0, 2};

        /* renamed from: u */
        private static final int[] f37372u = {3, 3, 3, 3, 3, 3, 1};

        /* renamed from: v */
        private static final boolean[] f37373v = {false, false, false, true, true, true, false};

        /* renamed from: w */
        private static final int[] f37374w = {0, 1, 2, 3, 4, 3, 4};

        /* renamed from: x */
        private static final int[] f37375x = {0, 0, 0, 0, 0, 3, 3};

        /* renamed from: g */
        final List<SpannableString> f37383g = new ArrayList();

        /* renamed from: y */
        private final SpannableStringBuilder f37396y = new SpannableStringBuilder();

        static {
            int m20769a = m20769a(0, 0, 0, 0);
            f37366b = m20769a;
            int m20769a2 = m20769a(0, 0, 0, 3);
            f37367c = m20769a2;
            f37369e = new int[]{m20769a, m20769a2, m20769a, m20769a, m20769a2, m20769a, m20769a};
            f37370f = new int[]{m20769a, m20769a, m20769a, m20769a, m20769a, m20769a2, m20769a2};
        }

        public C11349b() {
            m20767b();
        }

        /* renamed from: a */
        public static int m20770a(int i, int i2, int i3) {
            return m20769a(i, i2, i3, 0);
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
        public static int m20769a(int r5, int r6, int r7, int r8) {
            /*
                r0 = r5
                r1 = 4
                int r0 = com.google.android.exoplayer2.util.C11593a.m20025a(r0, r1)
                r0 = r6
                r1 = 4
                int r0 = com.google.android.exoplayer2.util.C11593a.m20025a(r0, r1)
                r0 = r7
                r1 = 4
                int r0 = com.google.android.exoplayer2.util.C11593a.m20025a(r0, r1)
                r0 = r8
                r1 = 4
                int r0 = com.google.android.exoplayer2.util.C11593a.m20025a(r0, r1)
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p337a.C11347b.C11349b.m20769a(int, int, int, int):int");
        }

        /* renamed from: f */
        private SpannableString m20762f() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f37396y);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f37377B != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f37377B, length, 33);
                }
                if (this.f37378C != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f37378C, length, 33);
                }
                if (this.f37379D != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f37380E), this.f37379D, length, 33);
                }
                if (this.f37381F != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f37382G), this.f37381F, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* renamed from: a */
        public final void m20772a(char c) {
            if (c != '\n') {
                this.f37396y.append(c);
                return;
            }
            this.f37383g.add(m20762f());
            this.f37396y.clear();
            if (this.f37377B != -1) {
                this.f37377B = 0;
            }
            if (this.f37378C != -1) {
                this.f37378C = 0;
            }
            if (this.f37379D != -1) {
                this.f37379D = 0;
            }
            if (this.f37381F != -1) {
                this.f37381F = 0;
            }
            while (true) {
                if ((!this.f37392p || this.f37383g.size() < this.f37391o) && this.f37383g.size() < 15) {
                    return;
                }
                this.f37383g.remove(0);
            }
        }

        /* renamed from: a */
        public final void m20771a(int i, int i2) {
            this.f37376A = i;
            this.f37397z = i2;
        }

        /* renamed from: a */
        public final void m20768a(boolean z, boolean z2) {
            if (this.f37377B != -1) {
                if (!z) {
                    this.f37396y.setSpan(new StyleSpan(2), this.f37377B, this.f37396y.length(), 33);
                    this.f37377B = -1;
                }
            } else if (z) {
                this.f37377B = this.f37396y.length();
            }
            if (this.f37378C == -1) {
                if (!z2) {
                    return;
                }
                this.f37378C = this.f37396y.length();
            } else if (z2) {
            } else {
                this.f37396y.setSpan(new UnderlineSpan(), this.f37378C, this.f37396y.length(), 33);
                this.f37378C = -1;
            }
        }

        /* renamed from: a */
        public final boolean m20773a() {
            if (this.f37384h) {
                return this.f37383g.isEmpty() && this.f37396y.length() == 0;
            }
            return true;
        }

        /* renamed from: b */
        public final void m20767b() {
            m20765c();
            this.f37384h = false;
            this.f37385i = false;
            this.f37386j = 4;
            this.f37387k = false;
            this.f37388l = 0;
            this.f37389m = 0;
            this.f37390n = 0;
            this.f37391o = 15;
            this.f37392p = true;
            this.f37397z = 0;
            this.f37393q = 0;
            this.f37394r = 0;
            int i = f37366b;
            this.f37376A = i;
            this.f37380E = f37365a;
            this.f37382G = i;
        }

        /* renamed from: b */
        public final void m20766b(int i, int i2) {
            if (this.f37379D != -1 && this.f37380E != i) {
                this.f37396y.setSpan(new ForegroundColorSpan(this.f37380E), this.f37379D, this.f37396y.length(), 33);
            }
            if (i != f37365a) {
                this.f37379D = this.f37396y.length();
                this.f37380E = i;
            }
            if (this.f37381F != -1 && this.f37382G != i2) {
                this.f37396y.setSpan(new BackgroundColorSpan(this.f37382G), this.f37381F, this.f37396y.length(), 33);
            }
            if (i2 != f37366b) {
                this.f37381F = this.f37396y.length();
                this.f37382G = i2;
            }
        }

        /* renamed from: c */
        public final void m20765c() {
            this.f37383g.clear();
            this.f37396y.clear();
            this.f37377B = -1;
            this.f37378C = -1;
            this.f37379D = -1;
            this.f37381F = -1;
            this.f37395s = 0;
        }

        /* renamed from: d */
        public final void m20764d() {
            int length = this.f37396y.length();
            if (length > 0) {
                this.f37396y.delete(length - 1, length);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00db  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00e0  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00f6  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x011b  */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.google.android.exoplayer2.text.p337a.C11347b.C11348a m20763e() {
            /*
                Method dump skipped, instructions count: 325
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p337a.C11347b.C11349b.m20763e():com.google.android.exoplayer2.text.a.b$a");
        }
    }

    /* renamed from: com.google.android.exoplayer2.text.a.b$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/b$c.class */
    public static final class C11350c {

        /* renamed from: a */
        public final int f37398a;

        /* renamed from: b */
        public final int f37399b;

        /* renamed from: c */
        public final byte[] f37400c;

        /* renamed from: d */
        int f37401d = 0;

        public C11350c(int i, int i2) {
            this.f37398a = i;
            this.f37399b = i2;
            this.f37400c = new byte[(i2 * 2) - 1];
        }
    }

    public C11347b(int i, List<byte[]> list) {
        boolean z = true;
        this.f37355e = i == -1 ? 1 : i;
        this.f37354d = (list == null || !C11604d.m19905a(list)) ? false : z;
        this.f37356f = new C11349b[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.f37356f[i2] = new C11349b();
        }
        this.f37357g = this.f37356f[0];
    }

    /* renamed from: a */
    private void m20787a(int i) {
        if (i != 0) {
            if (i == 3) {
                this.f37358h = m20777m();
            } else if (i == 8) {
                this.f37357g.m20764d();
            } else {
                switch (i) {
                    case 12:
                        m20776n();
                        return;
                    case 13:
                        this.f37357g.m20772a('\n');
                        return;
                    case 14:
                        return;
                    default:
                        if (i >= 17 && i <= 23) {
                            C11617n.m19863a("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: ".concat(String.valueOf(i)));
                            this.f37352b.m19822b(8);
                            return;
                        } else if (i < 24 || i > 31) {
                            C11617n.m19863a("Cea708Decoder", "Invalid C0 command: ".concat(String.valueOf(i)));
                            return;
                        } else {
                            C11617n.m19863a("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: ".concat(String.valueOf(i)));
                            this.f37352b.m19822b(16);
                            return;
                        }
                }
            }
        }
    }

    /* renamed from: b */
    private void m20786b(int i) {
        C11349b c11349b;
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
                if (this.f37361k == i2) {
                    return;
                }
                this.f37361k = i2;
                this.f37357g = this.f37356f[i2];
                return;
            case 136:
                for (int i3 = 1; i3 <= 8; i3++) {
                    if (this.f37352b.m19815e()) {
                        this.f37356f[8 - i3].m20765c();
                    }
                }
                return;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.f37352b.m19815e()) {
                        this.f37356f[8 - i4].f37385i = true;
                    }
                }
                return;
            case 138:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.f37352b.m19815e()) {
                        this.f37356f[8 - i5].f37385i = false;
                    }
                }
                return;
            case 139:
                for (int i6 = 1; i6 <= 8; i6++) {
                    if (this.f37352b.m19815e()) {
                        this.f37356f[8 - i6].f37385i = !c11349b.f37385i;
                    }
                }
                return;
            case TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE /* 140 */:
                for (int i7 = 1; i7 <= 8; i7++) {
                    if (this.f37352b.m19815e()) {
                        this.f37356f[8 - i7].m20767b();
                    }
                }
                return;
            case 141:
                this.f37352b.m19822b(8);
                return;
            case 142:
                return;
            case 143:
                m20776n();
                return;
            case 144:
                if (!this.f37357g.f37384h) {
                    this.f37352b.m19822b(16);
                    return;
                }
                this.f37352b.m19819c(4);
                this.f37352b.m19819c(2);
                this.f37352b.m19819c(2);
                boolean m19815e = this.f37352b.m19815e();
                boolean m19815e2 = this.f37352b.m19815e();
                this.f37352b.m19819c(3);
                this.f37352b.m19819c(3);
                this.f37357g.m20768a(m19815e, m19815e2);
                return;
            case 145:
                if (!this.f37357g.f37384h) {
                    this.f37352b.m19822b(24);
                    return;
                }
                int m20769a = C11349b.m20769a(this.f37352b.m19819c(2), this.f37352b.m19819c(2), this.f37352b.m19819c(2), this.f37352b.m19819c(2));
                int m20769a2 = C11349b.m20769a(this.f37352b.m19819c(2), this.f37352b.m19819c(2), this.f37352b.m19819c(2), this.f37352b.m19819c(2));
                this.f37352b.m19822b(2);
                C11349b.m20770a(this.f37352b.m19819c(2), this.f37352b.m19819c(2), this.f37352b.m19819c(2));
                this.f37357g.m20766b(m20769a, m20769a2);
                return;
            case 146:
                if (!this.f37357g.f37384h) {
                    this.f37352b.m19822b(16);
                    return;
                }
                this.f37352b.m19822b(4);
                int m19819c = this.f37352b.m19819c(4);
                this.f37352b.m19822b(2);
                this.f37352b.m19819c(6);
                C11349b c11349b2 = this.f37357g;
                if (c11349b2.f37395s != m19819c) {
                    c11349b2.m20772a('\n');
                }
                c11349b2.f37395s = m19819c;
                return;
            case 147:
            case 148:
            case 149:
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
            default:
                C11617n.m19863a("Cea708Decoder", "Invalid C1 command: ".concat(String.valueOf(i)));
                return;
            case 151:
                if (!this.f37357g.f37384h) {
                    this.f37352b.m19822b(32);
                    return;
                }
                int m20769a3 = C11349b.m20769a(this.f37352b.m19819c(2), this.f37352b.m19819c(2), this.f37352b.m19819c(2), this.f37352b.m19819c(2));
                this.f37352b.m19819c(2);
                C11349b.m20770a(this.f37352b.m19819c(2), this.f37352b.m19819c(2), this.f37352b.m19819c(2));
                this.f37352b.m19815e();
                this.f37352b.m19815e();
                this.f37352b.m19819c(2);
                this.f37352b.m19819c(2);
                int m19819c2 = this.f37352b.m19819c(2);
                this.f37352b.m19822b(8);
                this.f37357g.m20771a(m20769a3, m19819c2);
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
                C11349b c11349b3 = this.f37356f[i8];
                this.f37352b.m19822b(2);
                boolean m19815e3 = this.f37352b.m19815e();
                boolean m19815e4 = this.f37352b.m19815e();
                this.f37352b.m19815e();
                int m19819c3 = this.f37352b.m19819c(3);
                boolean m19815e5 = this.f37352b.m19815e();
                int m19819c4 = this.f37352b.m19819c(7);
                int m19819c5 = this.f37352b.m19819c(8);
                int m19819c6 = this.f37352b.m19819c(4);
                int m19819c7 = this.f37352b.m19819c(4);
                this.f37352b.m19822b(2);
                this.f37352b.m19819c(6);
                this.f37352b.m19822b(2);
                int m19819c8 = this.f37352b.m19819c(3);
                int m19819c9 = this.f37352b.m19819c(3);
                c11349b3.f37384h = true;
                c11349b3.f37385i = m19815e3;
                c11349b3.f37392p = m19815e4;
                c11349b3.f37386j = m19819c3;
                c11349b3.f37387k = m19815e5;
                c11349b3.f37388l = m19819c4;
                c11349b3.f37389m = m19819c5;
                c11349b3.f37390n = m19819c6;
                int i9 = m19819c7 + 1;
                if (c11349b3.f37391o != i9) {
                    c11349b3.f37391o = i9;
                    while (true) {
                        if ((m19815e4 && c11349b3.f37383g.size() >= c11349b3.f37391o) || c11349b3.f37383g.size() >= 15) {
                            c11349b3.f37383g.remove(0);
                        }
                    }
                }
                if (m19819c8 != 0 && c11349b3.f37393q != m19819c8) {
                    c11349b3.f37393q = m19819c8;
                    int i10 = m19819c8 - 1;
                    c11349b3.m20771a(C11349b.f37369e[i10], C11349b.f37368d[i10]);
                }
                if (m19819c9 != 0 && c11349b3.f37394r != m19819c9) {
                    c11349b3.f37394r = m19819c9;
                    c11349b3.m20768a(false, false);
                    c11349b3.m20766b(C11349b.f37365a, C11349b.f37370f[m19819c9 - 1]);
                }
                if (this.f37361k == i8) {
                    return;
                }
                this.f37361k = i8;
                this.f37357g = this.f37356f[i8];
                return;
        }
    }

    /* renamed from: c */
    private void m20785c(int i) {
        if (i > 7) {
            if (i <= 15) {
                this.f37352b.m19822b(8);
            } else if (i <= 23) {
                this.f37352b.m19822b(16);
            } else if (i > 31) {
            } else {
                this.f37352b.m19822b(24);
            }
        }
    }

    /* renamed from: d */
    private void m20784d(int i) {
        if (i <= 135) {
            this.f37352b.m19822b(32);
        } else if (i <= 143) {
            this.f37352b.m19822b(40);
        } else if (i > 159) {
        } else {
            this.f37352b.m19822b(2);
            this.f37352b.m19822b(this.f37352b.m19819c(6) * 8);
        }
    }

    /* renamed from: e */
    private void m20783e(int i) {
        if (i == 127) {
            this.f37357g.m20772a((char) 9835);
        } else {
            this.f37357g.m20772a((char) (i & 255));
        }
    }

    /* renamed from: f */
    private void m20782f(int i) {
        this.f37357g.m20772a((char) (i & 255));
    }

    /* renamed from: g */
    private void m20781g(int i) {
        if (i == 32) {
            this.f37357g.m20772a(' ');
        } else if (i == 33) {
            this.f37357g.m20772a((char) 160);
        } else if (i == 37) {
            this.f37357g.m20772a((char) 8230);
        } else if (i == 42) {
            this.f37357g.m20772a((char) 352);
        } else if (i == 44) {
            this.f37357g.m20772a((char) 338);
        } else if (i == 63) {
            this.f37357g.m20772a((char) 376);
        } else if (i == 57) {
            this.f37357g.m20772a((char) 8482);
        } else if (i == 58) {
            this.f37357g.m20772a((char) 353);
        } else if (i == 60) {
            this.f37357g.m20772a((char) 339);
        } else if (i == 61) {
            this.f37357g.m20772a((char) 8480);
        } else {
            switch (i) {
                case 48:
                    this.f37357g.m20772a((char) 9608);
                    return;
                case 49:
                    this.f37357g.m20772a((char) 8216);
                    return;
                case 50:
                    this.f37357g.m20772a((char) 8217);
                    return;
                case 51:
                    this.f37357g.m20772a((char) 8220);
                    return;
                case 52:
                    this.f37357g.m20772a((char) 8221);
                    return;
                case 53:
                    this.f37357g.m20772a((char) 8226);
                    return;
                default:
                    switch (i) {
                        case 118:
                            this.f37357g.m20772a((char) 8539);
                            return;
                        case 119:
                            this.f37357g.m20772a((char) 8540);
                            return;
                        case 120:
                            this.f37357g.m20772a((char) 8541);
                            return;
                        case 121:
                            this.f37357g.m20772a((char) 8542);
                            return;
                        case 122:
                            this.f37357g.m20772a((char) 9474);
                            return;
                        case 123:
                            this.f37357g.m20772a((char) 9488);
                            return;
                        case 124:
                            this.f37357g.m20772a((char) 9492);
                            return;
                        case JsonReaderKt.END_OBJ /* 125 */:
                            this.f37357g.m20772a((char) 9472);
                            return;
                        case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                            this.f37357g.m20772a((char) 9496);
                            return;
                        case 127:
                            this.f37357g.m20772a((char) 9484);
                            return;
                        default:
                            C11617n.m19863a("Cea708Decoder", "Invalid G2 character: ".concat(String.valueOf(i)));
                            return;
                    }
            }
        }
    }

    /* renamed from: h */
    private void m20780h(int i) {
        if (i == 160) {
            this.f37357g.m20772a((char) 13252);
            return;
        }
        C11617n.m19863a("Cea708Decoder", "Invalid G3 character: ".concat(String.valueOf(i)));
        this.f37357g.m20772a('_');
    }

    /* renamed from: i */
    private void m20779i() {
        if (this.f37360j == null) {
            return;
        }
        m20778l();
        this.f37360j = null;
    }

    @RequiresNonNull({"currentDtvCcPacket"})
    /* renamed from: l */
    private void m20778l() {
        if (this.f37360j.f37401d != (this.f37360j.f37399b * 2) - 1) {
            StringBuilder sb = new StringBuilder("DtvCcPacket ended prematurely; size is ");
            sb.append((this.f37360j.f37399b * 2) - 1);
            sb.append(", but current index is ");
            sb.append(this.f37360j.f37401d);
            sb.append(" (sequence number ");
            sb.append(this.f37360j.f37398a);
            sb.append(");");
            C11617n.m19864a();
        }
        this.f37352b.m19824a(this.f37360j.f37400c, this.f37360j.f37401d);
        int m19819c = this.f37352b.m19819c(3);
        int m19819c2 = this.f37352b.m19819c(5);
        int i = m19819c;
        if (m19819c == 7) {
            this.f37352b.m19822b(2);
            int m19819c3 = this.f37352b.m19819c(6);
            i = m19819c3;
            if (m19819c3 < 7) {
                C11617n.m19863a("Cea708Decoder", "Invalid extended service number: ".concat(String.valueOf(m19819c3)));
                i = m19819c3;
            }
        }
        if (m19819c2 == 0) {
            if (i == 0) {
                return;
            }
            C11617n.m19863a("Cea708Decoder", "serviceNumber is non-zero (" + i + ") when blockSize is 0");
        } else if (i != this.f37355e) {
        } else {
            boolean z = false;
            while (this.f37352b.m19827a() > 0) {
                int m19819c4 = this.f37352b.m19819c(8);
                if (m19819c4 == 16) {
                    int m19819c5 = this.f37352b.m19819c(8);
                    if (m19819c5 <= 31) {
                        m20785c(m19819c5);
                    } else {
                        if (m19819c5 <= 127) {
                            m20781g(m19819c5);
                        } else if (m19819c5 <= 159) {
                            m20784d(m19819c5);
                        } else if (m19819c5 <= 255) {
                            m20780h(m19819c5);
                        } else {
                            C11617n.m19863a("Cea708Decoder", "Invalid extended command: ".concat(String.valueOf(m19819c5)));
                        }
                        z = true;
                    }
                } else if (m19819c4 <= 31) {
                    m20787a(m19819c4);
                } else {
                    if (m19819c4 <= 127) {
                        m20783e(m19819c4);
                    } else if (m19819c4 <= 159) {
                        m20786b(m19819c4);
                    } else if (m19819c4 <= 255) {
                        m20782f(m19819c4);
                    } else {
                        C11617n.m19863a("Cea708Decoder", "Invalid base command: ".concat(String.valueOf(m19819c4)));
                    }
                    z = true;
                }
            }
            if (!z) {
                return;
            }
            this.f37358h = m20777m();
        }
    }

    /* renamed from: m */
    private List<C11356b> m20777m() {
        C11348a m20763e;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.f37356f[i].m20773a() && this.f37356f[i].f37385i && (m20763e = this.f37356f[i].m20763e()) != null) {
                arrayList.add(m20763e);
            }
        }
        Collections.sort(arrayList, C11348a.f37362c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(((C11348a) arrayList.get(i2)).f37363a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    /* renamed from: n */
    private void m20776n() {
        for (int i = 0; i < 8; i++) {
            this.f37356f[i].m20767b();
        }
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c, com.google.android.exoplayer2.text.AbstractC11386f
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo20704a(long j) {
        super.mo20704a(j);
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: a */
    protected final void mo20759a(C11402h c11402h) {
        ByteBuffer byteBuffer = (ByteBuffer) C11593a.m20020b(c11402h.f35336c);
        this.f37351a.m19808a(byteBuffer.array(), byteBuffer.limit());
        while (this.f37351a.m19812a() >= 3) {
            int m19804c = this.f37351a.m19804c() & 7;
            int i = m19804c & 3;
            boolean z = false;
            boolean z2 = (m19804c & 4) == 4;
            byte m19804c2 = (byte) this.f37351a.m19804c();
            byte m19804c3 = (byte) this.f37351a.m19804c();
            if (i == 2 || i == 3) {
                if (z2) {
                    if (i == 3) {
                        m20779i();
                        int i2 = (m19804c2 & 192) >> 6;
                        int i3 = this.f37353c;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            m20776n();
                            C11617n.m19863a("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f37353c + " current=" + i2);
                        }
                        this.f37353c = i2;
                        int i4 = m19804c2 & 63;
                        int i5 = i4;
                        if (i4 == 0) {
                            i5 = 64;
                        }
                        C11350c c11350c = new C11350c(i2, i5);
                        this.f37360j = c11350c;
                        byte[] bArr = c11350c.f37400c;
                        C11350c c11350c2 = this.f37360j;
                        int i6 = c11350c2.f37401d;
                        c11350c2.f37401d = i6 + 1;
                        bArr[i6] = m19804c3;
                    } else {
                        if (i == 2) {
                            z = true;
                        }
                        C11593a.m20022a(z);
                        C11350c c11350c3 = this.f37360j;
                        if (c11350c3 == null) {
                            C11617n.m19858b("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c11350c3.f37400c;
                            C11350c c11350c4 = this.f37360j;
                            int i7 = c11350c4.f37401d;
                            c11350c4.f37401d = i7 + 1;
                            bArr2[i7] = m19804c2;
                            byte[] bArr3 = this.f37360j.f37400c;
                            C11350c c11350c5 = this.f37360j;
                            int i8 = c11350c5.f37401d;
                            c11350c5.f37401d = i8 + 1;
                            bArr3[i8] = m19804c3;
                        }
                    }
                    if (this.f37360j.f37401d == (this.f37360j.f37399b * 2) - 1) {
                        m20779i();
                    }
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo20755b(C11402h c11402h) throws SubtitleDecoderException {
        super.mo20757a(c11402h);
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c, com.google.android.exoplayer2.decoder.AbstractC10933c
    /* renamed from: c */
    public final void mo20754c() {
        super.mo20754c();
        this.f37358h = null;
        this.f37359i = null;
        this.f37361k = 0;
        this.f37357g = this.f37356f[0];
        m20776n();
        this.f37360j = null;
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c, com.google.android.exoplayer2.decoder.AbstractC10933c
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo20753d() {
        super.mo20753d();
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ AbstractC11405i mo20752e() throws SubtitleDecoderException {
        return super.mo20756b();
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: f */
    protected final boolean mo20751f() {
        return this.f37358h != this.f37359i;
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: g */
    protected final AbstractC11379e mo20750g() {
        List<C11356b> list = this.f37358h;
        this.f37359i = list;
        return new C11355d((List) C11593a.m20020b(list));
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ C11402h mo20749h() throws SubtitleDecoderException {
        return super.mo20761a();
    }
}
