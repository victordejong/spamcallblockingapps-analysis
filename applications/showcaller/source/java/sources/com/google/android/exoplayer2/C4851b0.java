package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Looper;
import com.google.android.exoplayer2.drm.AbstractC5040k;
import com.google.android.exoplayer2.drm.C5049o;
import com.google.android.exoplayer2.p241a1.C4799a;
import com.google.android.exoplayer2.trackselection.AbstractC5412h;
import com.google.android.exoplayer2.upstream.AbstractC5473f;
import com.google.android.exoplayer2.upstream.C5483n;
import com.google.android.exoplayer2.util.AbstractC5510f;
import com.google.android.exoplayer2.util.C5515h0;
@Deprecated
/* renamed from: com.google.android.exoplayer2.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/b0.class */
public final class C4851b0 {
    @Deprecated
    /* renamed from: a */
    public static C5581x0 m21438a(Context context, AbstractC5544v0 abstractC5544v0, AbstractC5412h abstractC5412h, AbstractC5092g0 abstractC5092g0) {
        return m21437b(context, abstractC5544v0, abstractC5412h, abstractC5092g0, null, C5515h0.m18868D());
    }

    @Deprecated
    /* renamed from: b */
    public static C5581x0 m21437b(Context context, AbstractC5544v0 abstractC5544v0, AbstractC5412h abstractC5412h, AbstractC5092g0 abstractC5092g0, AbstractC5040k<C5049o> abstractC5040k, Looper looper) {
        return m21436c(context, abstractC5544v0, abstractC5412h, abstractC5092g0, abstractC5040k, new C4799a(AbstractC5510f.f17868a), looper);
    }

    @Deprecated
    /* renamed from: c */
    public static C5581x0 m21436c(Context context, AbstractC5544v0 abstractC5544v0, AbstractC5412h abstractC5412h, AbstractC5092g0 abstractC5092g0, AbstractC5040k<C5049o> abstractC5040k, C4799a c4799a, Looper looper) {
        return m21435d(context, abstractC5544v0, abstractC5412h, abstractC5092g0, abstractC5040k, C5483n.m18998l(context), c4799a, looper);
    }

    @Deprecated
    /* renamed from: d */
    public static C5581x0 m21435d(Context context, AbstractC5544v0 abstractC5544v0, AbstractC5412h abstractC5412h, AbstractC5092g0 abstractC5092g0, AbstractC5040k<C5049o> abstractC5040k, AbstractC5473f abstractC5473f, C4799a c4799a, Looper looper) {
        return new C5581x0(context, abstractC5544v0, abstractC5412h, abstractC5092g0, abstractC5040k, abstractC5473f, c4799a, AbstractC5510f.f17868a, looper);
    }
}
