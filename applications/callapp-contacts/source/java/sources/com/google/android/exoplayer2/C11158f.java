package com.google.android.exoplayer2;

import android.content.Context;
import android.media.AudioManager;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/f.class */
public final class C11158f {

    /* renamed from: a */
    public static final UUID f36539a = new UUID(0, 0);

    /* renamed from: b */
    public static final UUID f36540b = new UUID(1186680826959645954L, -5988876978535335093L);

    /* renamed from: c */
    public static final UUID f36541c = new UUID(-2129748144642739255L, 8654423357094679310L);

    /* renamed from: d */
    public static final UUID f36542d = new UUID(-1301668207276963122L, -6645017420763422227L);

    /* renamed from: e */
    public static final UUID f36543e = new UUID(-7348484286925749626L, -6083546864340672619L);

    private C11158f() {
    }

    /* renamed from: a */
    public static int m21373a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    public static long m21374a(long j) {
        char c = j;
        if (j != -9223372036854775807L) {
            c = j == Long.MIN_VALUE ? j : j / 1000;
        }
        return c;
    }

    /* renamed from: a */
    public static String m21375a(int i) {
        if (i != 0) {
            if (i == 1) {
                return "NO_UNSUPPORTED_TYPE";
            }
            if (i == 2) {
                return "NO_UNSUPPORTED_DRM";
            }
            if (i == 3) {
                return "NO_EXCEEDS_CAPABILITIES";
            }
            if (i != 4) {
                throw new IllegalStateException();
            }
            return "YES";
        }
        return "NO";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: b */
    public static long m21372b(long j) {
        char c = j;
        if (j != -9223372036854775807L) {
            c = j == Long.MIN_VALUE ? j : j * 1000;
        }
        return c;
    }
}
