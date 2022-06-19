package p000;

import android.support.p001v4.media.session.PlaybackStateCompat;
import javax.annotation.Nullable;
/* renamed from: hm1 */
/* loaded from: classes3-dex2jar.jar:hm1.class */
public final class hm1 {
    @Nullable

    /* renamed from: a */
    public static gm1 f6741a;

    /* renamed from: b */
    public static long f6742b;

    /* renamed from: a */
    public static void m1617a(gm1 gm1Var) {
        if (gm1Var.f6711f == null && gm1Var.f6712g == null) {
            if (gm1Var.f6709d) {
                return;
            }
            synchronized (hm1.class) {
                try {
                    long j = f6742b;
                    if (j + PlaybackStateCompat.ACTION_PLAY_FROM_URI > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                        return;
                    }
                    f6742b = j + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    gm1Var.f6711f = f6741a;
                    gm1Var.f6708c = 0;
                    gm1Var.f6707b = 0;
                    f6741a = gm1Var;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public static gm1 m1616b() {
        synchronized (hm1.class) {
            try {
                gm1 gm1Var = f6741a;
                if (gm1Var == null) {
                    return new gm1();
                }
                f6741a = gm1Var.f6711f;
                gm1Var.f6711f = null;
                f6742b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                return gm1Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
