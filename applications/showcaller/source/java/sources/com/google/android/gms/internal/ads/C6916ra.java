package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ra */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ra.class */
public final class C6916ra implements AbstractC6693l9 {

    /* renamed from: a */
    private static final List<C6879qa> f28830a = new ArrayList(50);

    /* renamed from: b */
    private final Handler f28831b;

    public C6916ra(Handler handler) {
        this.f28831b = handler;
    }

    /* renamed from: b */
    public static /* synthetic */ void m11630b(C6879qa c6879qa) {
        List<C6879qa> list = f28830a;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(c6879qa);
            }
        }
    }

    /* renamed from: c */
    private static C6879qa m11629c() {
        C6879qa c6879qa;
        List<C6879qa> list = f28830a;
        synchronized (list) {
            c6879qa = list.isEmpty() ? new C6879qa(null) : list.remove(list.size() - 1);
        }
        return c6879qa;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6693l9
    /* renamed from: A */
    public final boolean mo11633A(int i) {
        return this.f28831b.sendEmptyMessage(i);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6693l9
    /* renamed from: B */
    public final boolean mo11632B(int i) {
        return this.f28831b.hasMessages(0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6693l9
    /* renamed from: a */
    public final AbstractC6656k9 mo11631a(int i) {
        C6879qa m11629c = m11629c();
        m11629c.m12002a(this.f28831b.obtainMessage(i), this);
        return m11629c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6693l9
    /* renamed from: d0 */
    public final void mo11628d0(int i) {
        this.f28831b.removeMessages(2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6693l9
    /* renamed from: e0 */
    public final void mo11627e0(Object obj) {
        this.f28831b.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6693l9
    /* renamed from: f0 */
    public final AbstractC6656k9 mo11626f0(int i, Object obj) {
        C6879qa m11629c = m11629c();
        m11629c.m12002a(this.f28831b.obtainMessage(i, obj), this);
        return m11629c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6693l9
    /* renamed from: g0 */
    public final AbstractC6656k9 mo11625g0(int i, int i2, int i3) {
        C6879qa m11629c = m11629c();
        m11629c.m12002a(this.f28831b.obtainMessage(1, i2, i3), this);
        return m11629c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6693l9
    /* renamed from: h0 */
    public final boolean mo11624h0(AbstractC6656k9 abstractC6656k9) {
        return ((C6879qa) abstractC6656k9).m12001b(this.f28831b);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6693l9
    /* renamed from: i0 */
    public final boolean mo11623i0(int i, long j) {
        return this.f28831b.sendEmptyMessageAtTime(2, j);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6693l9
    /* renamed from: j0 */
    public final boolean mo11622j0(Runnable runnable) {
        return this.f28831b.post(runnable);
    }
}
