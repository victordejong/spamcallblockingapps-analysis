package com.google.android.exoplayer2.audio;

import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.mobileads.VastVideoViewController;
/* renamed from: com.google.android.exoplayer2.audio.o */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/o.class */
public final class C10907o {

    /* renamed from: a */
    private static final String[] f35224a = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: b */
    private static final int[] f35225b = {44100, 48000, 32000};

    /* renamed from: c */
    private static final int[] f35226c = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: d */
    private static final int[] f35227d = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: e */
    private static final int[] f35228e = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: f */
    private static final int[] f35229f = {32000, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: g */
    private static final int[] f35230g = {8000, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 24000, 32000, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: com.google.android.exoplayer2.audio.o$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/o$a.class */
    public static final class C10908a {

        /* renamed from: a */
        public int f35231a;

        /* renamed from: b */
        public String f35232b;

        /* renamed from: c */
        public int f35233c;

        /* renamed from: d */
        public int f35234d;

        /* renamed from: e */
        public int f35235e;

        /* renamed from: f */
        public int f35236f;

        /* renamed from: g */
        public int f35237g;

        /* renamed from: a */
        public final boolean m21984a(int i) {
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            if (!C10907o.m21988d(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
                return false;
            }
            this.f35231a = i2;
            this.f35232b = C10907o.f35224a[3 - i3];
            int i7 = C10907o.f35225b[i5];
            this.f35234d = i7;
            if (i2 == 2) {
                this.f35234d = i7 / 2;
            } else if (i2 == 0) {
                this.f35234d = i7 / 4;
            }
            int i8 = (i >>> 9) & 1;
            this.f35237g = C10907o.m21992b(i2, i3);
            if (i3 == 3) {
                int i9 = i2 == 3 ? C10907o.f35226c[i4 - 1] : C10907o.f35227d[i4 - 1];
                this.f35236f = i9;
                this.f35233c = (((i9 * 12) / this.f35234d) + i8) * 4;
            } else {
                if (i2 == 3) {
                    this.f35236f = i3 == 2 ? C10907o.f35228e[i4 - 1] : C10907o.f35229f[i4 - 1];
                } else {
                    this.f35236f = C10907o.f35230g[i4 - 1];
                    if (i3 == 1) {
                        i6 = 72;
                        this.f35233c = ((i6 * this.f35236f) / this.f35234d) + i8;
                    }
                }
                i6 = 144;
                this.f35233c = ((i6 * this.f35236f) / this.f35234d) + i8;
            }
            int i10 = 2;
            if (((i >> 6) & 3) == 3) {
                i10 = 1;
            }
            this.f35235e = i10;
            return true;
        }
    }

    private C10907o() {
    }

    /* renamed from: a */
    public static int m21996a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (!m21988d(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = f35225b[i5];
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
            return ((((i2 == 3 ? f35226c[i4 - 1] : f35227d[i4 - 1]) * 12) / i6) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? f35228e[i4 - 1] : f35229f[i4 - 1] : f35230g[i4 - 1];
        int i10 = 144;
        if (i2 == 3) {
            return ((i9 * 144) / i6) + i8;
        }
        if (i3 == 1) {
            i10 = 72;
        }
        return ((i10 * i9) / i6) + i8;
    }

    /* renamed from: b */
    public static int m21993b(int i) {
        int i2;
        int i3;
        int i4;
        if (!m21988d(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || ((i >>> 10) & 3) == 3) {
            return -1;
        }
        return m21992b(i2, i3);
    }

    /* renamed from: b */
    public static int m21992b(int i, int i2) {
        if (i2 == 1) {
            return i == 3 ? 1152 : 576;
        } else if (i2 == 2) {
            return 1152;
        } else {
            if (i2 != 3) {
                throw new IllegalArgumentException();
            }
            return 384;
        }
    }

    /* renamed from: d */
    public static boolean m21988d(int i) {
        return (i & (-2097152)) == -2097152;
    }
}
