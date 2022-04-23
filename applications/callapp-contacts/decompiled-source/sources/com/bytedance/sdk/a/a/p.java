package com.bytedance.sdk.a.a;

import android.support.v4.media.session.PlaybackStateCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    static o f7819a;

    /* renamed from: b  reason: collision with root package name */
    static long f7820b;

    private p() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o a() {
        synchronized (p.class) {
            try {
                o oVar = f7819a;
                if (oVar == null) {
                    return new o();
                }
                f7819a = oVar.f;
                oVar.f = null;
                f7820b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                return oVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(o oVar) {
        if (oVar.f != null || oVar.g != null) {
            throw new IllegalArgumentException();
        } else if (!oVar.f7818d) {
            synchronized (p.class) {
                try {
                    long j = f7820b;
                    if (j + PlaybackStateCompat.ACTION_PLAY_FROM_URI <= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                        f7820b = j + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                        oVar.f = f7819a;
                        oVar.f7817c = 0;
                        oVar.f7816b = 0;
                        f7819a = oVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
