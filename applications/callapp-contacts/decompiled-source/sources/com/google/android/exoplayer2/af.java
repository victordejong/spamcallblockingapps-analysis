package com.google.android.exoplayer2;

import com.google.android.exoplayer2.ad;
import com.google.android.exoplayer2.source.aa;
import com.google.android.exoplayer2.util.p;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/af.class */
public interface af extends ad.b {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/af$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(af afVar, float f, float f2) throws ExoPlaybackException {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/af$a.class */
    public interface a {
        void a();

        void a(long j);
    }

    int C_();

    int a();

    void a(float f, float f2) throws ExoPlaybackException;

    void a(int i);

    void a(long j) throws ExoPlaybackException;

    void a(long j, long j2) throws ExoPlaybackException;

    void a(RendererConfiguration rendererConfiguration, Format[] formatArr, aa aaVar, long j, boolean z, boolean z2, long j2, long j3) throws ExoPlaybackException;

    void a(Format[] formatArr, aa aaVar, long j, long j2) throws ExoPlaybackException;

    ag b();

    p c();

    void e() throws ExoPlaybackException;

    aa f();

    boolean g();

    long h();

    void i();

    boolean j();

    void k() throws IOException;

    void l();

    void m();

    void n();

    String x();

    boolean y();

    boolean z();
}
