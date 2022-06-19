package androidx.media2.exoplayer.external.extractor;

import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.mobileads.VastVideoViewController;
/* renamed from: androidx.media2.exoplayer.external.extractor.m */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/m.class */
public final class C1605m {

    /* renamed from: h */
    private static final String[] f6319h = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: i */
    private static final int[] f6320i = {44100, 48000, 32000};

    /* renamed from: j */
    private static final int[] f6321j = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: k */
    private static final int[] f6322k = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: l */
    private static final int[] f6323l = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: m */
    private static final int[] f6324m = {32000, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: n */
    private static final int[] f6325n = {8000, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 24000, 32000, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: a */
    public int f6326a;

    /* renamed from: b */
    public String f6327b;

    /* renamed from: c */
    public int f6328c;

    /* renamed from: d */
    public int f6329d;

    /* renamed from: e */
    public int f6330e;

    /* renamed from: f */
    public int f6331f;

    /* renamed from: g */
    public int f6332g;

    /* renamed from: a */
    public static int m42595a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = f6320i[i5];
        if (i2 == 2) {
            i6 = i7 / 2;
        } else {
            i6 = i7;
            if (i2 == 0) {
                i6 = i7 / 4;
            }
        }
        int i8 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? f6321j[i4 - 1] : f6322k[i4 - 1]) * 12) / i6) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? f6323l[i4 - 1] : f6324m[i4 - 1] : f6325n[i4 - 1];
        int i10 = 144;
        if (i2 == 3) {
            return ((i9 * 144) / i6) + i8;
        }
        if (i3 == 1) {
            i10 = 72;
        }
        return ((i10 * i9) / i6) + i8;
    }

    /* renamed from: a */
    public static boolean m42594a(int i, C1605m c1605m) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        int i12 = f6320i[i5];
        if (i2 == 2) {
            i6 = i12 / 2;
        } else {
            i6 = i12;
            if (i2 == 0) {
                i6 = i12 / 4;
            }
        }
        int i13 = (i >>> 9) & 1;
        if (i3 == 3) {
            i8 = i2 == 3 ? f6321j[i4 - 1] : f6322k[i4 - 1];
            i7 = (((i8 * 12) / i6) + i13) * 4;
            i9 = 384;
        } else {
            int i14 = 1152;
            if (i2 != 3) {
                int i15 = f6325n[i4 - 1];
                if (i3 == 1) {
                    i14 = 576;
                }
                i8 = i15;
                i11 = i14;
                if (i3 == 1) {
                    i8 = i15;
                    i10 = 72;
                    i9 = i14;
                    i7 = i13 + ((i10 * i8) / i6);
                }
            } else if (i3 == 2) {
                i8 = f6323l[i4 - 1];
                i11 = 1152;
            } else {
                i8 = f6324m[i4 - 1];
                i11 = 1152;
            }
            i10 = 144;
            i14 = i11;
            i9 = i14;
            i7 = i13 + ((i10 * i8) / i6);
        }
        String str = f6319h[3 - i3];
        int i16 = 2;
        if (((i >> 6) & 3) == 3) {
            i16 = 1;
        }
        c1605m.f6326a = i2;
        c1605m.f6327b = str;
        c1605m.f6328c = i7;
        c1605m.f6329d = i6;
        c1605m.f6330e = i16;
        c1605m.f6331f = i8;
        c1605m.f6332g = i9;
        return true;
    }
}
