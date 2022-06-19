package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.eb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eb.class */
public final class C1717eb {

    /* renamed from: c */
    public static final boolean f6387c = C1718ec.f6391b;

    /* renamed from: a */
    private final List<C1749ga> f6388a = new ArrayList();

    /* renamed from: b */
    private boolean f6389b = false;

    /* renamed from: a */
    public final void m7662a(String str, long j) {
        synchronized (this) {
            if (this.f6389b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f6388a.add(new C1749ga(str, j, SystemClock.elapsedRealtime()));
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* renamed from: b */
    public final void m7661b(String str) {
        char c;
        synchronized (this) {
            this.f6389b = true;
            if (this.f6388a.size() == 0) {
                c = 0;
            } else {
                long j = this.f6388a.get(0).f6630c;
                List<C1749ga> list = this.f6388a;
                c = list.get(list.size() - 1).f6630c - j;
            }
            if (c <= 0) {
                return;
            }
            ?? r0 = this.f6388a.get(0).f6630c;
            C1718ec.m7659b("(%-4d ms) %s", Long.valueOf(c), str);
            Iterator<C1749ga> it = this.f6388a.iterator();
            char c2 = r0;
            while (true) {
                char c3 = c2;
                if (!it.hasNext()) {
                    return;
                }
                C1749ga next = it.next();
                ?? r02 = next.f6630c;
                C1718ec.m7659b("(+%-4d) [%2d] %s", Long.valueOf(r02 - c3), Long.valueOf(next.f6629b), next.f6628a);
                c2 = r02;
            }
        }
    }

    protected final void finalize() {
        if (!this.f6389b) {
            m7661b("Request on the loose");
            C1718ec.m7658c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }
}
