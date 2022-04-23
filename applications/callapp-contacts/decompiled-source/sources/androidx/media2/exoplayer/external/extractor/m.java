package androidx.media2.exoplayer.external.extractor;

import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.mobileads.VastVideoViewController;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/m.class */
public final class m {
    private static final String[] h = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};
    private static final int[] i = {44100, 48000, 32000};
    private static final int[] j = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};
    private static final int[] k = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};
    private static final int[] l = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};
    private static final int[] m = {32000, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};
    private static final int[] n = {8000, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 24000, 32000, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: a  reason: collision with root package name */
    public int f3309a;

    /* renamed from: b  reason: collision with root package name */
    public String f3310b;

    /* renamed from: c  reason: collision with root package name */
    public int f3311c;

    /* renamed from: d  reason: collision with root package name */
    public int f3312d;
    public int e;
    public int f;
    public int g;

    public static int a(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
            return -1;
        }
        int i8 = i[i6];
        if (i3 == 2) {
            i7 = i8 / 2;
        } else {
            i7 = i8;
            if (i3 == 0) {
                i7 = i8 / 4;
            }
        }
        int i9 = (i2 >>> 9) & 1;
        if (i4 == 3) {
            return ((((i3 == 3 ? j[i5 - 1] : k[i5 - 1]) * 12) / i7) + i9) * 4;
        }
        int i10 = i3 == 3 ? i4 == 2 ? l[i5 - 1] : m[i5 - 1] : n[i5 - 1];
        int i11 = 144;
        if (i3 == 3) {
            return ((i10 * 144) / i7) + i9;
        }
        if (i4 == 1) {
            i11 = 72;
        }
        return ((i11 * i10) / i7) + i9;
    }

    public static boolean a(int i2, m mVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
            return false;
        }
        int i12 = i[i6];
        int i13 = 2;
        if (i3 == 2) {
            i7 = i12 / 2;
        } else {
            i7 = i12;
            if (i3 == 0) {
                i7 = i12 / 4;
            }
        }
        int i14 = (i2 >>> 9) & 1;
        if (i4 == 3) {
            i9 = i3 == 3 ? j[i5 - 1] : k[i5 - 1];
            i8 = (((i9 * 12) / i7) + i14) * 4;
            i10 = 384;
        } else {
            i10 = 1152;
            if (i3 != 3) {
                int i15 = n[i5 - 1];
                if (i4 == 1) {
                    i10 = 576;
                }
                i9 = i15;
                i10 = i10;
                if (i4 == 1) {
                    i11 = 72;
                    i9 = i15;
                    i8 = i14 + ((i11 * i9) / i7);
                }
            } else if (i4 == 2) {
                i9 = l[i5 - 1];
                i10 = 1152;
            } else {
                i9 = m[i5 - 1];
                i10 = 1152;
            }
            i11 = 144;
            i8 = i14 + ((i11 * i9) / i7);
        }
        String str = h[3 - i4];
        if (((i2 >> 6) & 3) == 3) {
            i13 = 1;
        }
        mVar.f3309a = i3;
        mVar.f3310b = str;
        mVar.f3311c = i8;
        mVar.f3312d = i7;
        mVar.e = i13;
        mVar.f = i9;
        mVar.g = i10;
        return true;
    }
}
