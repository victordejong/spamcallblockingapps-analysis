package com.google.android.exoplayer2.text.p337a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.AbstractC11405i;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.text.C11402h;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: com.google.android.exoplayer2.text.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/a.class */
public final class C11344a extends AbstractC11351c {

    /* renamed from: a */
    private static final int[] f37314a = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: b */
    private static final int[] f37315b = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: c */
    private static final int[] f37316c = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};

    /* renamed from: d */
    private static final int[] f37317d = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, LossReason.f33015xd24c0733, 241, 9632};

    /* renamed from: e */
    private static final int[] f37318e = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* renamed from: f */
    private static final int[] f37319f = {193, 201, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, 235, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE, 239, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, 217, 249, 219, 171, 187};

    /* renamed from: g */
    private static final int[] f37320g = {195, 227, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, 236, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 242, 213, 245, 123, JsonReaderKt.END_OBJ, 92, 94, 95, 124, WebSocketProtocol.PAYLOAD_SHORT, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};

    /* renamed from: h */
    private static final boolean[] f37321h = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: j */
    private final int f37323j;

    /* renamed from: k */
    private final int f37324k;

    /* renamed from: l */
    private final int f37325l;

    /* renamed from: m */
    private final long f37326m;

    /* renamed from: p */
    private List<C11356b> f37329p;

    /* renamed from: q */
    private List<C11356b> f37330q;

    /* renamed from: r */
    private int f37331r;

    /* renamed from: s */
    private int f37332s;

    /* renamed from: t */
    private boolean f37333t;

    /* renamed from: u */
    private boolean f37334u;

    /* renamed from: v */
    private byte f37335v;

    /* renamed from: w */
    private byte f37336w;

    /* renamed from: y */
    private boolean f37338y;

    /* renamed from: z */
    private long f37339z;

    /* renamed from: i */
    private final C11628u f37322i = new C11628u();

    /* renamed from: n */
    private final ArrayList<C11345a> f37327n = new ArrayList<>();

    /* renamed from: o */
    private C11345a f37328o = new C11345a(0, 4);

    /* renamed from: x */
    private int f37337x = 0;

    /* renamed from: com.google.android.exoplayer2.text.a.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/a$a.class */
    public static final class C11345a {

        /* renamed from: a */
        final List<C11346a> f37340a = new ArrayList();

        /* renamed from: b */
        final List<SpannableString> f37341b = new ArrayList();

        /* renamed from: c */
        final StringBuilder f37342c = new StringBuilder();

        /* renamed from: d */
        int f37343d;

        /* renamed from: e */
        int f37344e;

        /* renamed from: f */
        int f37345f;

        /* renamed from: g */
        int f37346g;

        /* renamed from: h */
        int f37347h;

        /* renamed from: com.google.android.exoplayer2.text.a.a$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/a$a$a.class */
        public static final class C11346a {

            /* renamed from: a */
            public final int f37348a;

            /* renamed from: b */
            public final boolean f37349b;

            /* renamed from: c */
            public int f37350c;

            public C11346a(int i, boolean z, int i2) {
                this.f37348a = i;
                this.f37349b = z;
                this.f37350c = i2;
            }
        }

        public C11345a(int i, int i2) {
            m20795a(i);
            this.f37347h = i2;
        }

        /* renamed from: a */
        private static void m20793a(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        /* renamed from: a */
        private static void m20792a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
        }

        /* renamed from: b */
        private static void m20789b(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        /* renamed from: a */
        public final void m20796a(char c) {
            if (this.f37342c.length() < 32) {
                this.f37342c.append(c);
            }
        }

        /* renamed from: a */
        public final void m20795a(int i) {
            this.f37346g = i;
            this.f37340a.clear();
            this.f37341b.clear();
            this.f37342c.setLength(0);
            this.f37343d = 15;
            this.f37344e = 0;
            this.f37345f = 0;
        }

        /* renamed from: a */
        public final void m20794a(int i, boolean z) {
            this.f37340a.add(new C11346a(i, z, this.f37342c.length()));
        }

        /* renamed from: a */
        public final boolean m20797a() {
            return this.f37340a.isEmpty() && this.f37341b.isEmpty() && this.f37342c.length() == 0;
        }

        /* renamed from: b */
        public final C11356b m20790b(int i) {
            int i2;
            int i3 = this.f37344e + this.f37345f;
            int i4 = 32 - i3;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i5 = 0; i5 < this.f37341b.size(); i5++) {
                spannableStringBuilder.append(C11599af.m19975a(this.f37341b.get(i5), i4));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(C11599af.m19975a(m20788c(), i4));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i4 - spannableStringBuilder.length();
            int i6 = i3 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.f37346g != 2 || (Math.abs(i6) >= 3 && length >= 0)) ? (this.f37346g != 2 || i6 <= 0) ? 0 : 2 : 1;
            }
            float f = i != 1 ? (((i != 2 ? i3 : 32 - length) / 32.0f) * 0.8f) + 0.1f : 0.5f;
            int i7 = this.f37343d;
            if (i7 > 7) {
                i2 = (i7 - 15) - 2;
            } else {
                i2 = i7;
                if (this.f37346g == 1) {
                    i2 = i7 - (this.f37347h - 1);
                }
            }
            C11356b.C11358a c11358a = new C11356b.C11358a();
            c11358a.f37428a = spannableStringBuilder;
            c11358a.f37430c = Layout.Alignment.ALIGN_NORMAL;
            C11356b.C11358a m20743a = c11358a.m20743a(i2, 1);
            m20743a.f37432e = f;
            m20743a.f37433f = i;
            return m20743a.m20744a();
        }

        /* renamed from: b */
        public final void m20791b() {
            int length = this.f37342c.length();
            if (length > 0) {
                this.f37342c.delete(length - 1, length);
                for (int size = this.f37340a.size() - 1; size >= 0; size--) {
                    C11346a c11346a = this.f37340a.get(size);
                    if (c11346a.f37350c != length) {
                        return;
                    }
                    c11346a.f37350c--;
                }
            }
        }

        /* renamed from: c */
        final SpannableString m20788c() {
            int i;
            int i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f37342c);
            int length = spannableStringBuilder.length();
            int i3 = 0;
            int i4 = -1;
            int i5 = -1;
            int i6 = 0;
            int i7 = -1;
            int i8 = -1;
            boolean z = false;
            while (i3 < this.f37340a.size()) {
                C11346a c11346a = this.f37340a.get(i3);
                boolean z2 = c11346a.f37349b;
                int i9 = c11346a.f37348a;
                int i10 = i8;
                boolean z3 = z;
                if (i9 != 8) {
                    boolean z4 = i9 == 7;
                    if (i9 != 7) {
                        i8 = C11344a.f37316c[i9];
                    }
                    z3 = z4;
                    i10 = i8;
                }
                int i11 = c11346a.f37350c;
                int i12 = i3 + 1;
                i3 = i12;
                i8 = i10;
                z = z3;
                if (i11 != (i12 < this.f37340a.size() ? this.f37340a.get(i12).f37350c : length)) {
                    if (i4 == -1 || z2) {
                        i = i4;
                        if (i4 == -1) {
                            i = i4;
                            if (z2) {
                                i = i11;
                            }
                        }
                    } else {
                        m20793a(spannableStringBuilder, i4, i11);
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
                        m20789b(spannableStringBuilder, i5, i11);
                        i2 = -1;
                    }
                    i3 = i12;
                    i4 = i;
                    i5 = i2;
                    i8 = i10;
                    z = z3;
                    if (i10 != i7) {
                        m20792a(spannableStringBuilder, i6, i11, i7);
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
                m20793a(spannableStringBuilder, i4, length);
            }
            if (i5 != -1 && i5 != length) {
                m20789b(spannableStringBuilder, i5, length);
            }
            if (i6 != length) {
                m20792a(spannableStringBuilder, i6, length, i7);
            }
            return new SpannableString(spannableStringBuilder);
        }
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    public C11344a(String str, int i, long j) {
        this.f37326m = j > 0 ? j * 1000 : (char) 1;
        this.f37323j = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i == 1) {
            this.f37325l = 0;
            this.f37324k = 0;
        } else if (i == 2) {
            this.f37325l = 1;
            this.f37324k = 0;
        } else if (i == 3) {
            this.f37325l = 0;
            this.f37324k = 1;
        } else if (i != 4) {
            C11617n.m19863a("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f37325l = 0;
            this.f37324k = 0;
        } else {
            this.f37325l = 1;
            this.f37324k = 1;
        }
        m20803a(0);
        m20798m();
        this.f37338y = true;
        this.f37339z = -9223372036854775807L;
    }

    /* renamed from: a */
    private static char m20804a(byte b) {
        return (char) f37317d[(b & Byte.MAX_VALUE) - 32];
    }

    /* renamed from: a */
    private void m20803a(int i) {
        int i2 = this.f37331r;
        if (i2 == i) {
            return;
        }
        this.f37331r = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.f37327n.size(); i3++) {
                this.f37327n.get(i3).f37346g = i;
            }
            return;
        }
        m20798m();
        if (i2 != 3 && i != 1 && i != 0) {
            return;
        }
        this.f37329p = Collections.emptyList();
    }

    /* renamed from: b */
    private void m20801b(int i) {
        this.f37332s = i;
        this.f37328o.f37347h = i;
    }

    /* renamed from: b */
    private static boolean m20802b(byte b) {
        return (b & 224) == 0;
    }

    /* renamed from: l */
    private List<C11356b> m20799l() {
        int size = this.f37327n.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 2;
        int i2 = 0;
        while (i2 < size) {
            C11356b m20790b = this.f37327n.get(i2).m20790b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            arrayList.add(m20790b);
            int i3 = i;
            if (m20790b != null) {
                i3 = Math.min(i, m20790b.f37419i);
            }
            i2++;
            i = i3;
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            C11356b c11356b = (C11356b) arrayList.get(i4);
            if (c11356b != null) {
                C11356b c11356b2 = c11356b;
                if (c11356b.f37419i != i) {
                    c11356b2 = (C11356b) C11593a.m20020b(this.f37327n.get(i4).m20790b(i));
                }
                arrayList2.add(c11356b2);
            }
        }
        return arrayList2;
    }

    /* renamed from: m */
    private void m20798m() {
        this.f37328o.m20795a(this.f37331r);
        this.f37327n.clear();
        this.f37327n.add(this.f37328o);
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c, com.google.android.exoplayer2.text.AbstractC11386f
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo20704a(long j) {
        super.mo20704a(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:230:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x001c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b6  */
    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mo20759a(com.google.android.exoplayer2.text.C11402h r6) {
        /*
            Method dump skipped, instructions count: 1389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.p337a.C11344a.mo20759a(com.google.android.exoplayer2.text.h):void");
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
        this.f37329p = null;
        this.f37330q = null;
        m20803a(0);
        m20801b(4);
        m20798m();
        this.f37333t = false;
        this.f37334u = false;
        this.f37335v = (byte) 0;
        this.f37336w = (byte) 0;
        this.f37337x = 0;
        this.f37338y = true;
        this.f37339z = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c, com.google.android.exoplayer2.decoder.AbstractC10933c
    /* renamed from: d */
    public final void mo20753d() {
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: e */
    public final AbstractC11405i mo20756b() throws SubtitleDecoderException {
        AbstractC11405i j;
        AbstractC11405i mo20756b = super.mo20756b();
        if (mo20756b != null) {
            return mo20756b;
        }
        boolean z = false;
        if (this.f37326m != -9223372036854775807L) {
            if (this.f37339z == -9223372036854775807L) {
                z = false;
            } else {
                z = false;
                if (m20747k() - this.f37339z >= this.f37326m) {
                    z = true;
                }
            }
        }
        if (!z || (j = m20748j()) == null) {
            return null;
        }
        this.f37329p = Collections.emptyList();
        this.f37339z = -9223372036854775807L;
        j.m20662a(m20747k(), mo20750g(), Long.MAX_VALUE);
        return j;
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: f */
    protected final boolean mo20751f() {
        return this.f37329p != this.f37330q;
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: g */
    protected final AbstractC11379e mo20750g() {
        List<C11356b> list = this.f37329p;
        this.f37330q = list;
        return new C11355d((List) C11593a.m20020b(list));
    }

    @Override // com.google.android.exoplayer2.text.p337a.AbstractC11351c
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ C11402h mo20749h() throws SubtitleDecoderException {
        return super.mo20761a();
    }
}
