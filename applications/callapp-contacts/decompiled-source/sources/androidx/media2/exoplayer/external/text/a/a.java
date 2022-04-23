package androidx.media2.exoplayer.external.text.a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.d;
import androidx.media2.exoplayer.external.text.g;
import androidx.media2.exoplayer.external.text.h;
import androidx.media2.exoplayer.external.util.j;
import androidx.media2.exoplayer.external.util.p;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.explorestack.protobuf.openrtb.LossReason;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/a.class */
public final class a extends d {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f3789b = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f3790c = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f3791d = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
    private static final int[] e = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, 241, 9632};
    private static final int[] f = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] g = {193, 201, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, 235, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE, 239, LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL_VALUE, 217, 249, 219, 171, 187};
    private static final int[] h = {195, 227, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE, 236, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 242, 213, 245, 123, JsonReaderKt.END_OBJ, 92, 94, 95, 124, WebSocketProtocol.PAYLOAD_SHORT, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] i = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private final int k;
    private final int l;
    private final int m;
    private List<androidx.media2.exoplayer.external.text.a> p;
    private List<androidx.media2.exoplayer.external.text.a> q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private byte v;
    private byte w;
    private boolean y;
    private final p j = new p();
    private final ArrayList<C0087a> n = new ArrayList<>();
    private C0087a o = new C0087a(0, 4);
    private int x = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.text.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/a$a.class */
    public static final class C0087a {

        /* renamed from: a  reason: collision with root package name */
        final List<C0088a> f3792a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        final List<SpannableString> f3793b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        final StringBuilder f3794c = new StringBuilder();

        /* renamed from: d  reason: collision with root package name */
        int f3795d;
        int e;
        int f;
        int g;
        int h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media2.exoplayer.external.text.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/a$a$a.class */
        public static final class C0088a {

            /* renamed from: a  reason: collision with root package name */
            public final int f3796a;

            /* renamed from: b  reason: collision with root package name */
            public final boolean f3797b;

            /* renamed from: c  reason: collision with root package name */
            public int f3798c;

            public C0088a(int i, boolean z, int i2) {
                this.f3796a = i;
                this.f3797b = z;
                this.f3798c = i2;
            }
        }

        public C0087a(int i, int i2) {
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
            this.f3794c.append(c2);
        }

        public final void a(int i) {
            this.g = i;
            this.f3792a.clear();
            this.f3793b.clear();
            this.f3794c.setLength(0);
            this.f3795d = 15;
            this.e = 0;
            this.f = 0;
        }

        public final void a(int i, boolean z) {
            this.f3792a.add(new C0088a(i, z, this.f3794c.length()));
        }

        public final boolean a() {
            return this.f3792a.isEmpty() && this.f3793b.isEmpty() && this.f3794c.length() == 0;
        }

        public final androidx.media2.exoplayer.external.text.a b(int i) {
            float f;
            int i2;
            int i3;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.f3793b.size(); i4++) {
                spannableStringBuilder.append((CharSequence) this.f3793b.get(i4));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) c());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i5 = this.e + this.f;
            int length = (32 - i5) - spannableStringBuilder.length();
            int i6 = i5 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.g != 2 || (Math.abs(i6) >= 3 && length >= 0)) ? (this.g != 2 || i6 <= 0) ? 0 : 2 : 1;
            }
            if (i != 1) {
                if (i == 2) {
                    i5 = 32 - length;
                }
                f = ((i5 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            if (this.g != 1) {
                i3 = this.f3795d;
                if (i3 <= 7) {
                    i2 = 0;
                    return new androidx.media2.exoplayer.external.text.a(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f, i, Float.MIN_VALUE);
                }
            }
            i3 = (this.f3795d - 15) - 2;
            i2 = 2;
            return new androidx.media2.exoplayer.external.text.a(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f, i, Float.MIN_VALUE);
        }

        public final void b() {
            int length = this.f3794c.length();
            if (length > 0) {
                this.f3794c.delete(length - 1, length);
                for (int size = this.f3792a.size() - 1; size >= 0; size--) {
                    C0088a aVar = this.f3792a.get(size);
                    if (aVar.f3798c == length) {
                        aVar.f3798c--;
                    } else {
                        return;
                    }
                }
            }
        }

        final SpannableString c() {
            int i;
            int i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f3794c);
            int length = spannableStringBuilder.length();
            int i3 = 0;
            int i4 = -1;
            int i5 = -1;
            int i6 = 0;
            int i7 = -1;
            int i8 = -1;
            boolean z = false;
            while (i3 < this.f3792a.size()) {
                C0088a aVar = this.f3792a.get(i3);
                boolean z2 = aVar.f3797b;
                int i9 = aVar.f3796a;
                i8 = i8;
                if (i9 != 8) {
                    z = i9 == 7;
                    if (i9 != 7) {
                        i8 = a.f3791d[i9];
                    }
                }
                int i10 = aVar.f3798c;
                int i11 = i3 + 1;
                i3 = i11;
                i8 = i8;
                z = z;
                if (i10 != (i11 < this.f3792a.size() ? this.f3792a.get(i11).f3798c : length)) {
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

    public a(String str, int i2) {
        this.k = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i2 == 1) {
            this.m = 0;
            this.l = 0;
        } else if (i2 == 2) {
            this.m = 1;
            this.l = 0;
        } else if (i2 == 3) {
            this.m = 0;
            this.l = 1;
        } else if (i2 != 4) {
            j.a("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.m = 0;
            this.l = 0;
        } else {
            this.m = 1;
            this.l = 1;
        }
        a(0);
        k();
        this.y = true;
    }

    private static char a(byte b2) {
        return (char) e[(b2 & Byte.MAX_VALUE) - 32];
    }

    private void a(int i2) {
        int i3 = this.r;
        if (i3 != i2) {
            this.r = i2;
            if (i2 == 3) {
                for (int i4 = 0; i4 < this.n.size(); i4++) {
                    this.n.get(i4).g = i2;
                }
                return;
            }
            k();
            if (i3 == 3 || i2 == 1 || i2 == 0) {
                this.p = Collections.emptyList();
            }
        }
    }

    private void b(int i2) {
        this.s = i2;
        this.o.h = i2;
    }

    private static boolean b(byte b2) {
        return (b2 & 224) == 0;
    }

    private List<androidx.media2.exoplayer.external.text.a> j() {
        int size = this.n.size();
        ArrayList arrayList = new ArrayList(size);
        int i2 = 2;
        for (int i3 = 0; i3 < size; i3++) {
            androidx.media2.exoplayer.external.text.a b2 = this.n.get(i3).b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
            arrayList.add(b2);
            i2 = i2;
            if (b2 != null) {
                i2 = Math.min(i2, b2.i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            androidx.media2.exoplayer.external.text.a aVar = (androidx.media2.exoplayer.external.text.a) arrayList.get(i4);
            if (aVar != null) {
                androidx.media2.exoplayer.external.text.a aVar2 = aVar;
                if (aVar.i != i2) {
                    aVar2 = this.n.get(i4).b(i2);
                }
                arrayList2.add(aVar2);
            }
        }
        return arrayList2;
    }

    private void k() {
        this.o.a(this.r);
        this.n.clear();
        this.n.add(this.o);
    }

    @Override // androidx.media2.exoplayer.external.text.a.d, androidx.media2.exoplayer.external.text.e
    public final /* bridge */ /* synthetic */ void a(long j) {
        super.a(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:230:0x010f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0017 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b1  */
    @Override // androidx.media2.exoplayer.external.text.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void a(androidx.media2.exoplayer.external.text.g r6) {
        /*
            Method dump skipped, instructions count: 1377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.a.a.a(androidx.media2.exoplayer.external.text.g):void");
    }

    @Override // androidx.media2.exoplayer.external.text.a.d
    public final /* bridge */ /* synthetic */ void b(g gVar) throws SubtitleDecoderException {
        super.a(gVar);
    }

    @Override // androidx.media2.exoplayer.external.text.a.d, androidx.media2.exoplayer.external.b.c
    public final void c() {
        super.c();
        this.p = null;
        this.q = null;
        a(0);
        b(4);
        k();
        this.t = false;
        this.u = false;
        this.v = (byte) 0;
        this.w = (byte) 0;
        this.x = 0;
        this.y = true;
    }

    @Override // androidx.media2.exoplayer.external.text.a.d, androidx.media2.exoplayer.external.b.c
    public final void d() {
    }

    @Override // androidx.media2.exoplayer.external.text.a.d
    protected final boolean e() {
        return this.p != this.q;
    }

    @Override // androidx.media2.exoplayer.external.text.a.d
    protected final d f() {
        List<androidx.media2.exoplayer.external.text.a> list = this.p;
        this.q = list;
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
