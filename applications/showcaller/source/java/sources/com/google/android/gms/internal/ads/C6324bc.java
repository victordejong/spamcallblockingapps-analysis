package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* renamed from: com.google.android.gms.internal.ads.bc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bc.class */
public final class C6324bc {

    /* renamed from: a */
    private static final int[] f20334a = {1, 2, 3, 6};

    /* renamed from: b */
    private static final int[] f20335b = {48000, 44100, 32000};

    /* renamed from: c */
    private static final int[] f20336c = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: d */
    public static final /* synthetic */ int f20337d = 0;

    /* renamed from: a */
    public static zzanm m16411a(C6665ki c6665ki, String str, String str2, zzapk zzapkVar) {
        int i = f20335b[(c6665ki.m13896l() & 192) >> 6];
        int m13896l = c6665ki.m13896l();
        int i2 = f20336c[(m13896l & 56) >> 3];
        int i3 = i2;
        if ((m13896l & 4) != 0) {
            i3 = i2 + 1;
        }
        return zzanm.m8111b(str, "audio/ac3", null, -1, -1, i3, i, null, zzapkVar, 0, str2);
    }

    /* renamed from: b */
    public static zzanm m16410b(C6665ki c6665ki, String str, String str2, zzapk zzapkVar) {
        c6665ki.m13898j(2);
        int i = f20335b[(c6665ki.m13896l() & 192) >> 6];
        int m13896l = c6665ki.m13896l();
        int i2 = f20336c[(m13896l & 14) >> 1];
        int i3 = i2;
        if ((m13896l & 1) != 0) {
            i3 = i2 + 1;
        }
        return zzanm.m8111b(str, "audio/eac3", null, -1, -1, i3, i, null, zzapkVar, 0, str2);
    }

    /* renamed from: c */
    public static int m16409c(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = f20334a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }
}
