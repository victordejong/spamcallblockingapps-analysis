package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11627t;
import com.mopub.mobileads.VastVideoViewController;
/* renamed from: com.google.android.exoplayer2.audio.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/a.class */
public final class C10880a {

    /* renamed from: a */
    private static final int[] f35114a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 12000, 11025, 8000, 7350};

    /* renamed from: b */
    private static final int[] f35115b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: com.google.android.exoplayer2.audio.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/a$a.class */
    public static final class C10882a {

        /* renamed from: a */
        public final int f35116a;

        /* renamed from: b */
        public final int f35117b;

        /* renamed from: c */
        public final String f35118c;

        private C10882a(int i, int i2, String str) {
            this.f35116a = i;
            this.f35117b = i2;
            this.f35118c = str;
        }
    }

    private C10880a() {
    }

    /* renamed from: a */
    public static int m22091a(int i) {
        if (i != 2) {
            if (i == 5) {
                return 11;
            }
            if (i == 29) {
                return 12;
            }
            if (i == 42) {
                return 16;
            }
            if (i == 22) {
                return 1073741824;
            }
            return i != 23 ? 0 : 15;
        }
        return 10;
    }

    /* renamed from: a */
    private static int m22089a(C11627t c11627t) {
        int m19819c = c11627t.m19819c(5);
        int i = m19819c;
        if (m19819c == 31) {
            i = c11627t.m19819c(6) + 32;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 == 29) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.audio.C10880a.C10882a m22087a(com.google.android.exoplayer2.util.C11627t r7, boolean r8) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.C10880a.m22087a(com.google.android.exoplayer2.util.t, boolean):com.google.android.exoplayer2.audio.a$a");
    }

    /* renamed from: a */
    public static C10882a m22086a(byte[] bArr) throws ParserException {
        return m22087a(new C11627t(bArr), false);
    }

    /* renamed from: a */
    private static void m22088a(C11627t c11627t, int i, int i2) {
        if (c11627t.m19815e()) {
            C11617n.m19863a("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (c11627t.m19815e()) {
            c11627t.m19822b(14);
        }
        boolean m19815e = c11627t.m19815e();
        if (i2 != 0) {
            if (i == 6 || i == 20) {
                c11627t.m19822b(3);
            }
            if (!m19815e) {
                return;
            }
            if (i == 22) {
                c11627t.m19822b(16);
            }
            if (i == 17 || i == 19 || i == 20 || i == 23) {
                c11627t.m19822b(3);
            }
            c11627t.m19822b(1);
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static byte[] m22090a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    /* renamed from: b */
    private static int m22085b(C11627t c11627t) throws ParserException {
        int i;
        int m19819c = c11627t.m19819c(4);
        if (m19819c == 15) {
            i = c11627t.m19819c(24);
        } else if (m19819c >= 13) {
            throw new ParserException();
        } else {
            i = f35114a[m19819c];
        }
        return i;
    }
}
