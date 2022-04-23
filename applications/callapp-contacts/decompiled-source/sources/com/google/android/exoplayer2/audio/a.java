package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.t;
import com.mopub.mobileads.VastVideoViewController;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f20724a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 12000, 11025, 8000, 7350};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f20725b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: com.google.android.exoplayer2.audio.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/a$a.class */
    public static final class C0421a {

        /* renamed from: a  reason: collision with root package name */
        public final int f20726a;

        /* renamed from: b  reason: collision with root package name */
        public final int f20727b;

        /* renamed from: c  reason: collision with root package name */
        public final String f20728c;

        private C0421a(int i, int i2, String str) {
            this.f20726a = i;
            this.f20727b = i2;
            this.f20728c = str;
        }
    }

    private a() {
    }

    public static int a(int i) {
        if (i == 2) {
            return 10;
        }
        if (i == 5) {
            return 11;
        }
        if (i == 29) {
            return 12;
        }
        if (i == 42) {
            return 16;
        }
        if (i != 22) {
            return i != 23 ? 0 : 15;
        }
        return 1073741824;
    }

    private static int a(t tVar) {
        int c2 = tVar.c(5);
        int i = c2;
        if (c2 == 31) {
            i = tVar.c(6) + 32;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 == 29) goto L_0x002e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.audio.a.C0421a a(com.google.android.exoplayer2.util.t r7, boolean r8) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.a.a(com.google.android.exoplayer2.util.t, boolean):com.google.android.exoplayer2.audio.a$a");
    }

    public static C0421a a(byte[] bArr) throws ParserException {
        return a(new t(bArr), false);
    }

    private static void a(t tVar, int i, int i2) {
        if (tVar.e()) {
            n.a("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (tVar.e()) {
            tVar.b(14);
        }
        boolean e = tVar.e();
        if (i2 != 0) {
            if (i == 6 || i == 20) {
                tVar.b(3);
            }
            if (e) {
                if (i == 22) {
                    tVar.b(16);
                }
                if (i == 17 || i == 19 || i == 20 || i == 23) {
                    tVar.b(3);
                }
                tVar.b(1);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static byte[] a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    private static int b(t tVar) throws ParserException {
        int i;
        int c2 = tVar.c(4);
        if (c2 == 15) {
            i = tVar.c(24);
        } else if (c2 < 13) {
            i = f20724a[c2];
        } else {
            throw new ParserException();
        }
        return i;
    }
}
