package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.AbstractC5315t0;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.upstream.AbstractC5473f;
import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.trackselection.h */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/h.class */
public abstract class AbstractC5412h {

    /* renamed from: a */
    private AbstractC5413a f17387a;

    /* renamed from: b */
    private AbstractC5473f f17388b;

    /* renamed from: com.google.android.exoplayer2.trackselection.h$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/h$a.class */
    public interface AbstractC5413a {
    }

    /* renamed from: a */
    public final AbstractC5473f m19277a() {
        return (AbstractC5473f) C5508e.m18911e(this.f17388b);
    }

    /* renamed from: b */
    public final void m19276b(AbstractC5413a abstractC5413a, AbstractC5473f abstractC5473f) {
        this.f17387a = abstractC5413a;
        this.f17388b = abstractC5473f;
    }

    /* renamed from: c */
    public abstract void mo19275c(Object obj);

    /* renamed from: d */
    public abstract C5414i mo19274d(AbstractC5315t0[] abstractC5315t0Arr, TrackGroupArray trackGroupArray, AbstractC5294v.C5295a c5295a, AbstractC5585y0 abstractC5585y0);
}
