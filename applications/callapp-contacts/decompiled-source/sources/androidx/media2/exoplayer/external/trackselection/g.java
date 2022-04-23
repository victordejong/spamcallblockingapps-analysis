package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.ah;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.upstream.c;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/g.class */
public abstract class g {

    /* renamed from: b  reason: collision with root package name */
    public a f3986b;

    /* renamed from: c  reason: collision with root package name */
    public c f3987c;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/g$a.class */
    public interface a {
        void b();
    }

    public abstract h a(ah[] ahVarArr, TrackGroupArray trackGroupArray) throws ExoPlaybackException;

    public abstract void a(Object obj);
}
