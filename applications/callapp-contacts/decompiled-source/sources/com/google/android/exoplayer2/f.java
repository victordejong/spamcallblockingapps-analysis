package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioManager;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final UUID f21359a = new UUID(0, 0);

    /* renamed from: b  reason: collision with root package name */
    public static final UUID f21360b = new UUID(1186680826959645954L, -5988876978535335093L);

    /* renamed from: c  reason: collision with root package name */
    public static final UUID f21361c = new UUID(-2129748144642739255L, 8654423357094679310L);

    /* renamed from: d  reason: collision with root package name */
    public static final UUID f21362d = new UUID(-1301668207276963122L, -6645017420763422227L);
    public static final UUID e = new UUID(-7348484286925749626L, -6083546864340672619L);

    private f() {
    }

    public static int a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(long r5) {
        /*
            r0 = r5
            r7 = r0
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x001d
            r0 = r5
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0017
            r0 = r5
            r7 = r0
            goto L_0x001d
        L_0x0017:
            r0 = r5
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r1
            r7 = r0
        L_0x001d:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.f.a(long):long");
    }

    public static String a(int i) {
        if (i == 0) {
            return "NO";
        }
        if (i == 1) {
            return "NO_UNSUPPORTED_TYPE";
        }
        if (i == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i == 3) {
            return "NO_EXCEEDS_CAPABILITIES";
        }
        if (i == 4) {
            return "YES";
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long b(long r5) {
        /*
            r0 = r5
            r7 = r0
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x001d
            r0 = r5
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0017
            r0 = r5
            r7 = r0
            goto L_0x001d
        L_0x0017:
            r0 = r5
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            r7 = r0
        L_0x001d:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.f.b(long):long");
    }
}
