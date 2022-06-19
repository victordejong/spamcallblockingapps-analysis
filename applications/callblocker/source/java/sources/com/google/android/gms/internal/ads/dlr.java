package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dlr.class */
public final class dlr {

    /* renamed from: a */
    private static final int[] f14686a = {1, 2, 3, 6};

    /* renamed from: b */
    private static final int[] f14687b = {48000, 44100, 32000};

    /* renamed from: c */
    private static final int[] f14688c = {24000, 22050, 16000};

    /* renamed from: d */
    private static final int[] f14689d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e */
    private static final int[] f14690e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: f */
    private static final int[] f14691f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: a */
    public static int m9195a() {
        return 1536;
    }

    /* renamed from: a */
    public static int m9193a(ByteBuffer byteBuffer) {
        return (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) == 3 ? 6 : f14686a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4]) * 256;
    }

    /* renamed from: a */
    public static dlf m9194a(dsk dskVar, String str, String str2, dmw dmwVar) {
        int i = f14687b[(dskVar.m8728f() & 192) >> 6];
        int m8728f = dskVar.m8728f();
        int i2 = f14689d[(m8728f & 56) >> 3];
        int i3 = i2;
        if ((m8728f & 4) != 0) {
            i3 = i2 + 1;
        }
        return dlf.m9230a(str, "audio/ac3", null, -1, -1, i3, i, null, null, 0, str2);
    }

    /* renamed from: b */
    public static dlf m9192b(dsk dskVar, String str, String str2, dmw dmwVar) {
        dskVar.m8731d(2);
        int i = f14687b[(dskVar.m8728f() & 192) >> 6];
        int m8728f = dskVar.m8728f();
        int i2 = f14689d[(m8728f & 14) >> 1];
        int i3 = i2;
        if ((m8728f & 1) != 0) {
            i3 = i2 + 1;
        }
        return dlf.m9230a(str, "audio/eac3", null, -1, -1, i3, i, null, null, 0, str2);
    }
}
