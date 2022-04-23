package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.af;
import androidx.media2.exoplayer.external.source.al;
import androidx.media2.exoplayer.external.util.l;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ag.class */
public interface ag extends af.b {
    int a();

    void a(float f) throws ExoPlaybackException;

    void a(int i);

    void a(long j) throws ExoPlaybackException;

    void a(long j, long j2) throws ExoPlaybackException;

    void a(RendererConfiguration rendererConfiguration, Format[] formatArr, al alVar, long j, boolean z, long j2) throws ExoPlaybackException;

    void a(Format[] formatArr, al alVar, long j) throws ExoPlaybackException;

    ah b();

    l c();

    void e() throws ExoPlaybackException;

    al f();

    boolean g();

    long h();

    void i();

    int i_();

    boolean j();

    void k() throws IOException;

    void l() throws ExoPlaybackException;

    void m();

    void n();

    boolean x();

    boolean y();
}
