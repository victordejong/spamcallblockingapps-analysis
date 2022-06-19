package com.bytedance.sdk.p127a.p128a;

import android.support.p008v4.media.session.PlaybackStateCompat;
/* renamed from: com.bytedance.sdk.a.a.p */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/p.class */
public final class C3987p {

    /* renamed from: a */
    static C3986o f14458a;

    /* renamed from: b */
    static long f14459b;

    private C3987p() {
    }

    /* renamed from: a */
    public static C3986o m37040a() {
        synchronized (C3987p.class) {
            try {
                C3986o c3986o = f14458a;
                if (c3986o == null) {
                    return new C3986o();
                }
                f14458a = c3986o.f14456f;
                c3986o.f14456f = null;
                f14459b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                return c3986o;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m37039a(C3986o c3986o) {
        if (c3986o.f14456f == null && c3986o.f14457g == null) {
            if (c3986o.f14454d) {
                return;
            }
            synchronized (C3987p.class) {
                try {
                    long j = f14459b;
                    if (j + PlaybackStateCompat.ACTION_PLAY_FROM_URI > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                        return;
                    }
                    f14459b = j + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    c3986o.f14456f = f14458a;
                    c3986o.f14453c = 0;
                    c3986o.f14452b = 0;
                    f14458a = c3986o;
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalArgumentException();
    }
}
