package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecm.class */
public final class ecm {

    /* renamed from: a */
    final ExecutorService f48692a;

    /* renamed from: b */
    eco<? extends ecn> f48693b;

    /* renamed from: c */
    IOException f48694c;

    public ecm(String str) {
        this.f48692a = ede.m15193a(str);
    }

    /* renamed from: a */
    public final <T extends ecn> long m15269a(T t, eck<T> eckVar, int i) {
        Looper myLooper = Looper.myLooper();
        ecr.m15247b(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new eco(this, myLooper, t, eckVar, i, elapsedRealtime).m15261a(0L);
        return elapsedRealtime;
    }

    /* renamed from: a */
    public final boolean m15270a() {
        return this.f48693b != null;
    }

    /* renamed from: b */
    public final void m15268b() {
        this.f48693b.m15260a(false);
    }

    /* renamed from: c */
    public final void m15267c() throws IOException {
        IOException iOException = this.f48694c;
        if (iOException == null) {
            eco<? extends ecn> ecoVar = this.f48693b;
            if (ecoVar == null) {
                return;
            }
            ecoVar.m15262a(ecoVar.f48695a);
            return;
        }
        throw iOException;
    }
}
