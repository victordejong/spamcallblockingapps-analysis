package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lz3.class */
public final class lz3 {

    /* renamed from: a */
    public static final boolean f26364a = mz3.f26925b;

    /* renamed from: b */
    private final List<kz3> f26365b = new ArrayList();

    /* renamed from: c */
    private boolean f26366c = false;

    /* renamed from: a */
    public final void m13381a(String str, long j) {
        synchronized (this) {
            if (this.f26366c) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f26365b.add(new kz3(str, j, SystemClock.elapsedRealtime()));
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* renamed from: b */
    public final void m13380b(String str) {
        char c;
        synchronized (this) {
            this.f26366c = true;
            if (this.f26365b.size() == 0) {
                c = 0;
            } else {
                long j = this.f26365b.get(0).f25904c;
                List<kz3> list = this.f26365b;
                c = list.get(list.size() - 1).f25904c - j;
            }
            if (c <= 0) {
                return;
            }
            ?? r0 = this.f26365b.get(0).f25904c;
            mz3.m13039b("(%-4d ms) %s", Long.valueOf(c), str);
            Iterator<kz3> it = this.f26365b.iterator();
            char c2 = r0;
            while (true) {
                char c3 = c2;
                if (!it.hasNext()) {
                    return;
                }
                kz3 next = it.next();
                ?? r02 = next.f25904c;
                mz3.m13039b("(+%-4d) [%2d] %s", Long.valueOf(r02 - c3), Long.valueOf(next.f25903b), next.f25902a);
                c2 = r02;
            }
        }
    }

    protected final void finalize() {
        if (!this.f26366c) {
            m13380b("Request on the loose");
            mz3.m13038c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }
}
