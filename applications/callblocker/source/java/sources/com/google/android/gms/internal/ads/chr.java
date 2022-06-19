package com.google.android.gms.internal.ads;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/chr.class */
public final class chr<T> {
    @GuardedBy("this")

    /* renamed from: a */
    private final Deque<crt<T>> f13071a = new LinkedBlockingDeque();

    /* renamed from: b */
    private final Callable<T> f13072b;

    /* renamed from: c */
    private final crs f13073c;

    public chr(Callable<T> callable, crs crsVar) {
        this.f13072b = callable;
        this.f13073c = crsVar;
    }

    /* renamed from: a */
    public final crt<T> m11296a() {
        crt<T> poll;
        synchronized (this) {
            m11295a(1);
            poll = this.f13071a.poll();
        }
        return poll;
    }

    /* renamed from: a */
    public final void m11295a(int i) {
        synchronized (this) {
            int size = this.f13071a.size();
            for (int i2 = 0; i2 < i - size; i2++) {
                this.f13071a.add(this.f13073c.mo10767a(this.f13072b));
            }
        }
    }

    /* renamed from: a */
    public final void m11294a(crt<T> crtVar) {
        synchronized (this) {
            this.f13071a.addFirst(crtVar);
        }
    }
}
