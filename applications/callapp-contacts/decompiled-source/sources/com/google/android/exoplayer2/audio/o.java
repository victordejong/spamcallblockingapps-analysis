package com.google.android.exoplayer2.audio;

import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.mobileads.VastVideoViewController;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f20780a = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f20781b = {44100, 48000, 32000};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f20782c = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f20783d = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};
    private static final int[] e = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};
    private static final int[] f = {32000, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};
    private static final int[] g = {8000, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 24000, 32000, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/o$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f20784a;

        /* renamed from: b  reason: collision with root package name */
        public String f20785b;

        /* renamed from: c  reason: collision with root package name */
        public int f20786c;

        /* renamed from: d  reason: collision with root package name */
        public int f20787d;
        public int e;
        public int f;
        public int g;

        public final boolean a(int i) {
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            if (!o.d(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
                return false;
            }
            this.f20784a = i2;
            this.f20785b = o.f20780a[3 - i3];
            int i7 = o.f20781b[i5];
            this.f20787d = i7;
            int i8 = 2;
            if (i2 == 2) {
                this.f20787d = i7 / 2;
            } else if (i2 == 0) {
                this.f20787d = i7 / 4;
            }
            int i9 = (i >>> 9) & 1;
            this.g = o.b(i2, i3);
            if (i3 == 3) {
                int i10 = i2 == 3 ? o.f20782c[i4 - 1] : o.f20783d[i4 - 1];
                this.f = i10;
                this.f20786c = (((i10 * 12) / this.f20787d) + i9) * 4;
            } else {
                if (i2 == 3) {
                    this.f = i3 == 2 ? o.e[i4 - 1] : o.f[i4 - 1];
                } else {
                    this.f = o.g[i4 - 1];
                    if (i3 == 1) {
                        i6 = 72;
                        this.f20786c = ((i6 * this.f) / this.f20787d) + i9;
                    }
                }
                i6 = 144;
                this.f20786c = ((i6 * this.f) / this.f20787d) + i9;
            }
            if (((i >> 6) & 3) == 3) {
                i8 = 1;
            }
            this.e = i8;
            return true;
        }
    }

    private o() {
    }

    public static int a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (!d(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = f20781b[i5];
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
            return ((((i2 == 3 ? f20782c[i4 - 1] : f20783d[i4 - 1]) * 12) / i6) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? e[i4 - 1] : f[i4 - 1] : g[i4 - 1];
        int i10 = 144;
        if (i2 == 3) {
            return ((i9 * 144) / i6) + i8;
        }
        if (i3 == 1) {
            i10 = 72;
        }
        return ((i10 * i9) / i6) + i8;
    }

    public static int b(int i) {
        int i2;
        int i3;
        int i4;
        if (!d(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || ((i >>> 10) & 3) == 3) {
            return -1;
        }
        return b(i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(int i, int i2) {
        if (i2 == 1) {
            return i == 3 ? 1152 : 576;
        }
        if (i2 == 2) {
            return 1152;
        }
        if (i2 == 3) {
            return 384;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(int i) {
        return (i & (-2097152)) == -2097152;
    }
}
