package com.google.android.exoplayer2.text.a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/a.class */
public final class a extends c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f21701a = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f21702b = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f21703c = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f21704d = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, 241, 9632};
    private static final int[] e = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] f = {193, 201, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, 235, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE, 239, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, 217, 249, 219, 171, 187};
    private static final int[] g = {195, 227, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, 236, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 242, 213, 245, 123, JsonReaderKt.END_OBJ, 92, 94, 95, 124, WebSocketProtocol.PAYLOAD_SHORT, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] h = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private final int j;
    private final int k;
    private final int l;
    private final long m;
    private List<b> p;
    private List<b> q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private byte v;
    private byte w;
    private boolean y;
    private long z;
    private final u i = new u();
    private final ArrayList<C0437a> n = new ArrayList<>();
    private C0437a o = new C0437a(0, 4);
    private int x = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/a$a.class */
    public static final class C0437a {

        /* renamed from: a  reason: collision with root package name */
        final List<C0438a> f21705a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        final List<SpannableString> f21706b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        final StringBuilder f21707c = new StringBuilder();

        /* renamed from: d  reason: collision with root package name */
        int f21708d;
        int e;
        int f;
        int g;
        int h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.android.exoplayer2.text.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/a$a$a.class */
        public static final class C0438a {

            /* renamed from: a  reason: collision with root package name */
            public final int f21709a;

            /* renamed from: b  reason: collision with root package name */
            public final boolean f21710b;

            /* renamed from: c  reason: collision with root package name */
            public int f21711c;

            public C0438a(int i, boolean z, int i2) {
                this.f21709a = i;
                this.f21710b = z;
                this.f21711c = i2;
            }
        }

        public C0437a(int i, int i2) {
            a(i);
            this.h = i2;
        }

        private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        private static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
            }
        }

        private static void b(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        public final void a(char c2) {
            if (this.f21707c.length() < 32) {
                this.f21707c.append(c2);
            }
        }

        public final void a(int i) {
            this.g = i;
            this.f21705a.clear();
            this.f21706b.clear();
            this.f21707c.setLength(0);
            this.f21708d = 15;
            this.e = 0;
            this.f = 0;
        }

        public final void a(int i, boolean z) {
            this.f21705a.add(new C0438a(i, z, this.f21707c.length()));
        }

        public final boolean a() {
            return this.f21705a.isEmpty() && this.f21706b.isEmpty() && this.f21707c.length() == 0;
        }

        public final b b(int i) {
            int i2;
            int i3 = this.e + this.f;
            int i4 = 32 - i3;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i5 = 0; i5 < this.f21706b.size(); i5++) {
                spannableStringBuilder.append(af.a(this.f21706b.get(i5), i4));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(af.a(c(), i4));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i4 - spannableStringBuilder.length();
            int i6 = i3 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.g != 2 || (Math.abs(i6) >= 3 && length >= 0)) ? (this.g != 2 || i6 <= 0) ? 0 : 2 : 1;
            }
            float f = i != 1 ? (((i != 2 ? i3 : 32 - length) / 32.0f) * 0.8f) + 0.1f : 0.5f;
            int i7 = this.f21708d;
            if (i7 > 7) {
                i2 = (i7 - 15) - 2;
            } else {
                i2 = i7;
                if (this.g == 1) {
                    i2 = i7 - (this.h - 1);
                }
            }
            b.a aVar = new b.a();
            aVar.f21738a = spannableStringBuilder;
            aVar.f21740c = Layout.Alignment.ALIGN_NORMAL;
            b.a a2 = aVar.a(i2, 1);
            a2.e = f;
            a2.f = i;
            return a2.a();
        }

        public final void b() {
            int length = this.f21707c.length();
            if (length > 0) {
                this.f21707c.delete(length - 1, length);
                for (int size = this.f21705a.size() - 1; size >= 0; size--) {
                    C0438a aVar = this.f21705a.get(size);
                    if (aVar.f21711c == length) {
                        aVar.f21711c--;
                    } else {
                        return;
                    }
                }
            }
        }

        final SpannableString c() {
            int i;
            int i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f21707c);
            int length = spannableStringBuilder.length();
            int i3 = 0;
            int i4 = -1;
            int i5 = -1;
            int i6 = 0;
            int i7 = -1;
            int i8 = -1;
            boolean z = false;
            while (i3 < this.f21705a.size()) {
                C0438a aVar = this.f21705a.get(i3);
                boolean z2 = aVar.f21710b;
                int i9 = aVar.f21709a;
                i8 = i8;
                if (i9 != 8) {
                    z = i9 == 7;
                    if (i9 != 7) {
                        i8 = a.f21703c[i9];
                    }
                }
                int i10 = aVar.f21711c;
                int i11 = i3 + 1;
                i3 = i11;
                i8 = i8;
                z = z;
                if (i10 != (i11 < this.f21705a.size() ? this.f21705a.get(i11).f21711c : length)) {
                    if (i4 == -1 || z2) {
                        i = i4;
                        if (i4 == -1) {
                            i = i4;
                            if (z2) {
                                i = i10;
                            }
                        }
                    } else {
                        a(spannableStringBuilder, i4, i10);
                        i = -1;
                    }
                    if (i5 == -1 || z) {
                        i2 = i5;
                        if (i5 == -1) {
                            i2 = i5;
                            if (z) {
                                i2 = i10;
                            }
                        }
                    } else {
                        b(spannableStringBuilder, i5, i10);
                        i2 = -1;
                    }
                    i3 = i11;
                    i4 = i;
                    i5 = i2;
                    i8 = i8;
                    z = z;
                    if (i8 != i7) {
                        a(spannableStringBuilder, i6, i10, i7);
                        i7 = i8;
                        i3 = i11;
                        i4 = i;
                        i5 = i2;
                        i6 = i10;
                        i8 = i8;
                        z = z;
                    }
                }
            }
            if (!(i4 == -1 || i4 == length)) {
                a(spannableStringBuilder, i4, length);
            }
            if (!(i5 == -1 || i5 == length)) {
                b(spannableStringBuilder, i5, length);
            }
            if (i6 != length) {
                a(spannableStringBuilder, i6, length, i7);
            }
            return new SpannableString(spannableStringBuilder);
        }
    }

    public a(String str, int i, long j) {
        this.m = j > 0 ? j * 1000 : -9223372036854775807L;
        this.j = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i == 1) {
            this.l = 0;
            this.k = 0;
        } else if (i == 2) {
            this.l = 1;
            this.k = 0;
        } else if (i == 3) {
            this.l = 0;
            this.k = 1;
        } else if (i != 4) {
            n.a("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.l = 0;
            this.k = 0;
        } else {
            this.l = 1;
            this.k = 1;
        }
        a(0);
        m();
        this.y = true;
        this.z = -9223372036854775807L;
    }

    private static char a(byte b2) {
        return (char) f21704d[(b2 & Byte.MAX_VALUE) - 32];
    }

    private void a(int i) {
        int i2 = this.r;
        if (i2 != i) {
            this.r = i;
            if (i == 3) {
                for (int i3 = 0; i3 < this.n.size(); i3++) {
                    this.n.get(i3).g = i;
                }
                return;
            }
            m();
            if (i2 == 3 || i == 1 || i == 0) {
                this.p = Collections.emptyList();
            }
        }
    }

    private void b(int i) {
        this.s = i;
        this.o.h = i;
    }

    private static boolean b(byte b2) {
        return (b2 & 224) == 0;
    }

    private List<b> l() {
        int size = this.n.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 2;
        for (int i2 = 0; i2 < size; i2++) {
            b b2 = this.n.get(i2).b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            arrayList.add(b2);
            i = i;
            if (b2 != null) {
                i = Math.min(i, b2.i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = (b) arrayList.get(i3);
            if (bVar != null) {
                b bVar2 = bVar;
                if (bVar.i != i) {
                    bVar2 = (b) com.google.android.exoplayer2.util.a.b(this.n.get(i3).b(i));
                }
                arrayList2.add(bVar2);
            }
        }
        return arrayList2;
    }

    private void m() {
        this.o.a(this.r);
        this.n.clear();
        this.n.add(this.o);
    }

    @Override // com.google.android.exoplayer2.text.a.c, com.google.android.exoplayer2.text.f
    public final /* bridge */ /* synthetic */ void a(long j) {
        super.a(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:230:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x001c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b6  */
    @Override // com.google.android.exoplayer2.text.a.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void a(com.google.android.exoplayer2.text.h r6) {
        /*
            Method dump skipped, instructions count: 1389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.a.a.a(com.google.android.exoplayer2.text.h):void");
    }

    @Override // com.google.android.exoplayer2.text.a.c
    public final /* bridge */ /* synthetic */ void b(h hVar) throws SubtitleDecoderException {
        super.a(hVar);
    }

    @Override // com.google.android.exoplayer2.text.a.c, com.google.android.exoplayer2.decoder.c
    public final void c() {
        super.c();
        this.p = null;
        this.q = null;
        a(0);
        b(4);
        m();
        this.t = false;
        this.u = false;
        this.v = (byte) 0;
        this.w = (byte) 0;
        this.x = 0;
        this.y = true;
        this.z = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.text.a.c, com.google.android.exoplayer2.decoder.c
    public final void d() {
    }

    @Override // com.google.android.exoplayer2.text.a.c
    /* renamed from: e */
    public final i b() throws SubtitleDecoderException {
        i j;
        i e2 = super.b();
        if (e2 != null) {
            return e2;
        }
        boolean z = false;
        if (this.m != -9223372036854775807L) {
            if (this.z == -9223372036854775807L) {
                z = false;
            } else {
                z = false;
                if (k() - this.z >= this.m) {
                    z = true;
                }
            }
        }
        if (!z || (j = j()) == null) {
            return null;
        }
        this.p = Collections.emptyList();
        this.z = -9223372036854775807L;
        j.a(k(), g(), Long.MAX_VALUE);
        return j;
    }

    @Override // com.google.android.exoplayer2.text.a.c
    protected final boolean f() {
        return this.p != this.q;
    }

    @Override // com.google.android.exoplayer2.text.a.c
    protected final e g() {
        List<b> list = this.p;
        this.q = list;
        return new d((List) com.google.android.exoplayer2.util.a.b(list));
    }

    @Override // com.google.android.exoplayer2.text.a.c
    public final /* bridge */ /* synthetic */ h h() throws SubtitleDecoderException {
        return super.a();
    }
}
