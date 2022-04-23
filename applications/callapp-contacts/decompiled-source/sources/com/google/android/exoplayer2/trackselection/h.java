package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ag;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.upstream.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/h.class */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private a f21944a;

    /* renamed from: b  reason: collision with root package name */
    private c f21945b;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/h$a.class */
    public interface a {
        void onTrackSelectionsInvalidated();
    }

    public abstract i a(ag[] agVarArr, TrackGroupArray trackGroupArray, r.a aVar, al alVar) throws ExoPlaybackException;

    public final void a(a aVar, c cVar) {
        this.f21944a = aVar;
        this.f21945b = cVar;
    }

    public abstract void a(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        a aVar = this.f21944a;
        if (aVar != null) {
            aVar.onTrackSelectionsInvalidated();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final c e() {
        return (c) com.google.android.exoplayer2.util.a.b(this.f21945b);
    }
}
