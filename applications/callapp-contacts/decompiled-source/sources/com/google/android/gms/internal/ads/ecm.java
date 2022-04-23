package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecm.class */
public final class ecm {

    /* renamed from: a  reason: collision with root package name */
    final ExecutorService f27628a;

    /* renamed from: b  reason: collision with root package name */
    eco<? extends ecn> f27629b;

    /* renamed from: c  reason: collision with root package name */
    IOException f27630c;

    public ecm(String str) {
        this.f27628a = ede.a(str);
    }

    public final <T extends ecn> long a(T t, eck<T> eckVar, int i) {
        Looper myLooper = Looper.myLooper();
        ecr.b(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new eco(this, myLooper, t, eckVar, i, elapsedRealtime).a(0L);
        return elapsedRealtime;
    }

    public final boolean a() {
        return this.f27629b != null;
    }

    public final void b() {
        this.f27629b.a(false);
    }

    public final void c() throws IOException {
        IOException iOException = this.f27630c;
        if (iOException == null) {
            eco<? extends ecn> ecoVar = this.f27629b;
            if (ecoVar != null) {
                ecoVar.a(ecoVar.f27631a);
                return;
            }
            return;
        }
        throw iOException;
    }
}
