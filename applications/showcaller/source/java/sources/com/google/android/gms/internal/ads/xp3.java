package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xp3.class */
public final class xp3 {

    /* renamed from: a */
    private static final int[] f32153a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: b */
    private static final int[] f32154b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: c */
    public static final /* synthetic */ int f32155c = 0;

    /* renamed from: a */
    public static vp3 m9089a(byte[] bArr) {
        return m9088b(new C6657ka(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0045, code lost:
        if (r0 == 29) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01b6, code lost:
        if (r0 != 3) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01a3  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.vp3 m9088b(com.google.android.gms.internal.ads.C6657ka r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.xp3.m9088b(com.google.android.gms.internal.ads.ka, boolean):com.google.android.gms.internal.ads.vp3");
    }

    /* renamed from: c */
    private static int m9087c(C6657ka c6657ka) {
        int m13947h = c6657ka.m13947h(5);
        return m13947h == 31 ? c6657ka.m13947h(6) + 32 : m13947h;
    }

    /* renamed from: d */
    private static int m9086d(C6657ka c6657ka) {
        int i;
        int m13947h = c6657ka.m13947h(4);
        if (m13947h == 15) {
            i = c6657ka.m13947h(24);
        } else if (m13947h >= 13) {
            throw zzaha.zzb(null, null);
        } else {
            i = f32153a[m13947h];
        }
        return i;
    }
}
