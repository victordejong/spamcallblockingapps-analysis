package androidx.media2.exoplayer.external.text.p071a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.AbstractC1905h;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.text.C1902g;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2018p;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.explorestack.protobuf.openrtb.LossReason;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: androidx.media2.exoplayer.external.text.a.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/a.class */
public final class C1857a extends AbstractC1864d {

    /* renamed from: b */
    private static final int[] f7414b = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: c */
    private static final int[] f7415c = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: d */
    private static final int[] f7416d = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};

    /* renamed from: e */
    private static final int[] f7417e = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, LossReason.f33015xd24c0733, 241, 9632};

    /* renamed from: f */
    private static final int[] f7418f = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* renamed from: g */
    private static final int[] f7419g = {193, 201, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, 235, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE, 239, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, 217, 249, 219, 171, 187};

    /* renamed from: h */
    private static final int[] f7420h = {195, 227, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, 236, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 242, 213, 245, 123, JsonReaderKt.END_OBJ, 92, 94, 95, 124, WebSocketProtocol.PAYLOAD_SHORT, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};

    /* renamed from: i */
    private static final boolean[] f7421i = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: k */
    private final int f7423k;

    /* renamed from: l */
    private final int f7424l;

    /* renamed from: m */
    private final int f7425m;

    /* renamed from: p */
    private List<C1856a> f7428p;

    /* renamed from: q */
    private List<C1856a> f7429q;

    /* renamed from: r */
    private int f7430r;

    /* renamed from: s */
    private int f7431s;

    /* renamed from: t */
    private boolean f7432t;

    /* renamed from: u */
    private boolean f7433u;

    /* renamed from: v */
    private byte f7434v;

    /* renamed from: w */
    private byte f7435w;

    /* renamed from: y */
    private boolean f7437y;

    /* renamed from: j */
    private final C2018p f7422j = new C2018p();

    /* renamed from: n */
    private final ArrayList<C1858a> f7426n = new ArrayList<>();

    /* renamed from: o */
    private C1858a f7427o = new C1858a(0, 4);

    /* renamed from: x */
    private int f7436x = 0;

    /* renamed from: androidx.media2.exoplayer.external.text.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/a$a.class */
    public static final class C1858a {

        /* renamed from: a */
        final List<C1859a> f7438a = new ArrayList();

        /* renamed from: b */
        final List<SpannableString> f7439b = new ArrayList();

        /* renamed from: c */
        final StringBuilder f7440c = new StringBuilder();

        /* renamed from: d */
        int f7441d;

        /* renamed from: e */
        int f7442e;

        /* renamed from: f */
        int f7443f;

        /* renamed from: g */
        int f7444g;

        /* renamed from: h */
        int f7445h;

        /* renamed from: androidx.media2.exoplayer.external.text.a.a$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/a$a$a.class */
        public static final class C1859a {

            /* renamed from: a */
            public final int f7446a;

            /* renamed from: b */
            public final boolean f7447b;

            /* renamed from: c */
            public int f7448c;

            public C1859a(int i, boolean z, int i2) {
                this.f7446a = i;
                this.f7447b = z;
                this.f7448c = i2;
            }
        }

        public C1858a(int i, int i2) {
            m42024a(i);
            this.f7445h = i2;
        }

        /* renamed from: a */
        private static void m42022a(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        /* renamed from: a */
        private static void m42021a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
        }

        /* renamed from: b */
        private static void m42018b(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        /* renamed from: a */
        public final void m42025a(char c) {
            this.f7440c.append(c);
        }

        /* renamed from: a */
        public final void m42024a(int i) {
            this.f7444g = i;
            this.f7438a.clear();
            this.f7439b.clear();
            this.f7440c.setLength(0);
            this.f7441d = 15;
            this.f7442e = 0;
            this.f7443f = 0;
        }

        /* renamed from: a */
        public final void m42023a(int i, boolean z) {
            this.f7438a.add(new C1859a(i, z, this.f7440c.length()));
        }

        /* renamed from: a */
        public final boolean m42026a() {
            return this.f7438a.isEmpty() && this.f7439b.isEmpty() && this.f7440c.length() == 0;
        }

        /* renamed from: b */
        public final C1856a m42019b(int i) {
            float f;
            int i2;
            int i3;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.f7439b.size(); i4++) {
                spannableStringBuilder.append((CharSequence) this.f7439b.get(i4));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) m42017c());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i5 = this.f7442e + this.f7443f;
            int length = (32 - i5) - spannableStringBuilder.length();
            int i6 = i5 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.f7444g != 2 || (Math.abs(i6) >= 3 && length >= 0)) ? (this.f7444g != 2 || i6 <= 0) ? 0 : 2 : 1;
            }
            if (i != 1) {
                if (i == 2) {
                    i5 = 32 - length;
                }
                f = ((i5 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            if (this.f7444g != 1) {
                i3 = this.f7441d;
                if (i3 <= 7) {
                    i2 = 0;
                    return new C1856a(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f, i, Float.MIN_VALUE);
                }
            }
            i3 = (this.f7441d - 15) - 2;
            i2 = 2;
            return new C1856a(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f, i, Float.MIN_VALUE);
        }

        /* renamed from: b */
        public final void m42020b() {
            int length = this.f7440c.length();
            if (length > 0) {
                this.f7440c.delete(length - 1, length);
                for (int size = this.f7438a.size() - 1; size >= 0; size--) {
                    C1859a c1859a = this.f7438a.get(size);
                    if (c1859a.f7448c != length) {
                        return;
                    }
                    c1859a.f7448c--;
                }
            }
        }

        /* renamed from: c */
        final SpannableString m42017c() {
            int i;
            int i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f7440c);
            int length = spannableStringBuilder.length();
            int i3 = 0;
            int i4 = -1;
            int i5 = -1;
            int i6 = 0;
            int i7 = -1;
            int i8 = -1;
            boolean z = false;
            while (i3 < this.f7438a.size()) {
                C1859a c1859a = this.f7438a.get(i3);
                boolean z2 = c1859a.f7447b;
                int i9 = c1859a.f7446a;
                int i10 = i8;
                boolean z3 = z;
                if (i9 != 8) {
                    boolean z4 = i9 == 7;
                    if (i9 != 7) {
                        i8 = C1857a.f7416d[i9];
                    }
                    z3 = z4;
                    i10 = i8;
                }
                int i11 = c1859a.f7448c;
                int i12 = i3 + 1;
                i3 = i12;
                i8 = i10;
                z = z3;
                if (i11 != (i12 < this.f7438a.size() ? this.f7438a.get(i12).f7448c : length)) {
                    if (i4 == -1 || z2) {
                        i = i4;
                        if (i4 == -1) {
                            i = i4;
                            if (z2) {
                                i = i11;
                            }
                        }
                    } else {
                        m42022a(spannableStringBuilder, i4, i11);
                        i = -1;
                    }
                    if (i5 == -1 || z3) {
                        i2 = i5;
                        if (i5 == -1) {
                            i2 = i5;
                            if (z3) {
                                i2 = i11;
                            }
                        }
                    } else {
                        m42018b(spannableStringBuilder, i5, i11);
                        i2 = -1;
                    }
                    i3 = i12;
                    i4 = i;
                    i5 = i2;
                    i8 = i10;
                    z = z3;
                    if (i10 != i7) {
                        m42021a(spannableStringBuilder, i6, i11, i7);
                        i7 = i10;
                        i3 = i12;
                        i4 = i;
                        i5 = i2;
                        i6 = i11;
                        i8 = i10;
                        z = z3;
                    }
                }
            }
            if (i4 != -1 && i4 != length) {
                m42022a(spannableStringBuilder, i4, length);
            }
            if (i5 != -1 && i5 != length) {
                m42018b(spannableStringBuilder, i5, length);
            }
            if (i6 != length) {
                m42021a(spannableStringBuilder, i6, length, i7);
            }
            return new SpannableString(spannableStringBuilder);
        }
    }

    public C1857a(String str, int i) {
        this.f7423k = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i == 1) {
            this.f7425m = 0;
            this.f7424l = 0;
        } else if (i == 2) {
            this.f7425m = 1;
            this.f7424l = 0;
        } else if (i == 3) {
            this.f7425m = 0;
            this.f7424l = 1;
        } else if (i != 4) {
            C2009j.m41584a("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f7425m = 0;
            this.f7424l = 0;
        } else {
            this.f7425m = 1;
            this.f7424l = 1;
        }
        m42032a(0);
        m42027k();
        this.f7437y = true;
    }

    /* renamed from: a */
    private static char m42033a(byte b) {
        return (char) f7417e[(b & Byte.MAX_VALUE) - 32];
    }

    /* renamed from: a */
    private void m42032a(int i) {
        int i2 = this.f7430r;
        if (i2 == i) {
            return;
        }
        this.f7430r = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.f7426n.size(); i3++) {
                this.f7426n.get(i3).f7444g = i;
            }
            return;
        }
        m42027k();
        if (i2 != 3 && i != 1 && i != 0) {
            return;
        }
        this.f7428p = Collections.emptyList();
    }

    /* renamed from: b */
    private void m42030b(int i) {
        this.f7431s = i;
        this.f7427o.f7445h = i;
    }

    /* renamed from: b */
    private static boolean m42031b(byte b) {
        return (b & 224) == 0;
    }

    /* renamed from: j */
    private List<C1856a> m42028j() {
        int size = this.f7426n.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 2;
        int i2 = 0;
        while (i2 < size) {
            C1856a m42019b = this.f7426n.get(i2).m42019b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            arrayList.add(m42019b);
            int i3 = i;
            if (m42019b != null) {
                i3 = Math.min(i, m42019b.f7407i);
            }
            i2++;
            i = i3;
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            C1856a c1856a = (C1856a) arrayList.get(i4);
            if (c1856a != null) {
                C1856a c1856a2 = c1856a;
                if (c1856a.f7407i != i) {
                    c1856a2 = this.f7426n.get(i4).m42019b(i);
                }
                arrayList2.add(c1856a2);
            }
        }
        return arrayList2;
    }

    /* renamed from: k */
    private void m42027k() {
        this.f7427o.m42024a(this.f7430r);
        this.f7426n.clear();
        this.f7426n.add(this.f7427o);
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d, androidx.media2.exoplayer.external.text.AbstractC1889e
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo41951a(long j) {
        super.mo41951a(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:230:0x010f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0017 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b1  */
    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mo41990a(androidx.media2.exoplayer.external.text.C1902g r6) {
        /*
            Method dump skipped, instructions count: 1377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.p071a.C1857a.mo41990a(androidx.media2.exoplayer.external.text.g):void");
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
        this.f7428p = null;
        this.f7429q = null;
        m42032a(0);
        m42030b(4);
        m42027k();
        this.f7432t = false;
        this.f7433u = false;
        this.f7434v = (byte) 0;
        this.f7435w = (byte) 0;
        this.f7436x = 0;
        this.f7437y = true;
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d, androidx.media2.exoplayer.external.p063b.AbstractC1440c
    /* renamed from: d */
    public final void mo41985d() {
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d
    /* renamed from: e */
    protected final boolean mo41984e() {
        return this.f7428p != this.f7429q;
    }

    @Override // androidx.media2.exoplayer.external.text.p071a.AbstractC1864d
    /* renamed from: f */
    protected final AbstractC1886d mo41983f() {
        List<C1856a> list = this.f7428p;
        this.f7429q = list;
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
