package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.AbstractC10853ag;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.upstream.AbstractC11534c;
import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.trackselection.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/h.class */
public abstract class AbstractC11444h {

    /* renamed from: a */
    private AbstractC11445a f37831a;

    /* renamed from: b */
    private AbstractC11534c f37832b;

    /* renamed from: com.google.android.exoplayer2.trackselection.h$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/h$a.class */
    public interface AbstractC11445a {
        void onTrackSelectionsInvalidated();
    }

    /* renamed from: a */
    public abstract C11446i mo20554a(AbstractC10853ag[] abstractC10853agArr, TrackGroupArray trackGroupArray, AbstractC11315r.C11316a c11316a, AbstractC10864al abstractC10864al) throws ExoPlaybackException;

    /* renamed from: a */
    public final void m20556a(AbstractC11445a abstractC11445a, AbstractC11534c abstractC11534c) {
        this.f37831a = abstractC11445a;
        this.f37832b = abstractC11534c;
    }

    /* renamed from: a */
    public abstract void mo20555a(Object obj);

    /* renamed from: d */
    public final void m20553d() {
        AbstractC11445a abstractC11445a = this.f37831a;
        if (abstractC11445a != null) {
            abstractC11445a.onTrackSelectionsInvalidated();
        }
    }

    /* renamed from: e */
    public final AbstractC11534c m20552e() {
        return (AbstractC11534c) C11593a.m20020b(this.f37832b);
    }
}
