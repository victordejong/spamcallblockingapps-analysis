package p131c.p161d.p170b.p188c;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.source.TrackGroupArray;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.p196c1.AbstractC2763c;
import p131c.p161d.p170b.p188c.p198d1.C2783g;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2923l;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2925n;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2929p;
import p131c.p161d.p170b.p188c.p204h1.p205r.AbstractC2932a;
/* renamed from: c.d.b.c.j0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/j0.class */
public interface AbstractC2941j0 {

    @Deprecated
    /* renamed from: c.d.b.c.j0$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/j0$a.class */
    public static abstract class AbstractC2942a implements AbstractC2943b {
        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: a */
        public /* synthetic */ void mo18324a() {
            C2947k0.m28422a(this);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: a */
        public /* synthetic */ void mo18323a(int i) {
            C2947k0.m28421a(this, i);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: a */
        public /* synthetic */ void mo18322a(boolean z) {
            C2947k0.m28411c(this, z);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: b */
        public /* synthetic */ void mo18321b(int i) {
            C2947k0.m28414b(this, i);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: b */
        public /* synthetic */ void mo18320b(boolean z) {
            C2947k0.m28415a(this, z);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: d */
        public /* synthetic */ void mo18318d(int i) {
            C2947k0.m28412c(this, i);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public void onTimelineChanged(AbstractC2965r0 r0Var, int i) {
            onTimelineChanged(r0Var, r0Var.mo28338b() == 1 ? r0Var.m28352a(0, new AbstractC2965r0.C2968c()).f10687c : null, i);
        }

        @Deprecated
        public void onTimelineChanged(AbstractC2965r0 r0Var, Object obj) {
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public void onTimelineChanged(AbstractC2965r0 r0Var, Object obj, int i) {
            onTimelineChanged(r0Var, obj);
        }
    }

    /* renamed from: c.d.b.c.j0$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/j0$b.class */
    public interface AbstractC2943b {
        /* renamed from: a */
        void mo18324a();

        /* renamed from: a */
        void mo18323a(int i);

        /* renamed from: a */
        void mo18322a(boolean z);

        /* renamed from: b */
        void mo18321b(int i);

        /* renamed from: b */
        void mo18320b(boolean z);

        /* renamed from: d */
        void mo18318d(int i);

        void onLoadingChanged(boolean z);

        void onPlaybackParametersChanged(C2910h0 h0Var);

        void onPlayerError(ExoPlaybackException exoPlaybackException);

        void onPlayerStateChanged(boolean z, int i);

        void onTimelineChanged(AbstractC2965r0 r0Var, int i);

        @Deprecated
        void onTimelineChanged(AbstractC2965r0 r0Var, Object obj, int i);

        void onTracksChanged(TrackGroupArray trackGroupArray, C2783g gVar);
    }

    /* renamed from: c.d.b.c.j0$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/j0$c.class */
    public interface AbstractC2944c {
        /* renamed from: a */
        void m28437a(AbstractC2763c cVar);

        /* renamed from: b */
        void m28436b(AbstractC2763c cVar);
    }

    /* renamed from: c.d.b.c.j0$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/j0$d.class */
    public interface AbstractC2945d {
        /* renamed from: a */
        void m28435a(Surface surface);

        /* renamed from: a */
        void m28434a(SurfaceView surfaceView);

        /* renamed from: a */
        void m28433a(TextureView textureView);

        /* renamed from: a */
        void m28432a(AbstractC2923l lVar);

        /* renamed from: a */
        void m28431a(AbstractC2925n nVar);

        /* renamed from: a */
        void m28430a(AbstractC2929p pVar);

        /* renamed from: a */
        void m28429a(AbstractC2932a aVar);

        /* renamed from: b */
        void m28428b(Surface surface);

        /* renamed from: b */
        void m28427b(SurfaceView surfaceView);

        /* renamed from: b */
        void m28426b(TextureView textureView);

        /* renamed from: b */
        void m28425b(AbstractC2925n nVar);

        /* renamed from: b */
        void m28424b(AbstractC2929p pVar);

        /* renamed from: b */
        void m28423b(AbstractC2932a aVar);
    }

    /* renamed from: P */
    int mo27498P();

    /* renamed from: Q */
    boolean mo27497Q();

    /* renamed from: R */
    boolean mo27496R();

    /* renamed from: S */
    ExoPlaybackException mo27495S();

    /* renamed from: T */
    boolean mo28391T();

    /* renamed from: U */
    AbstractC2945d mo27494U();

    /* renamed from: V */
    int mo28390V();

    /* renamed from: W */
    int mo28389W();

    /* renamed from: X */
    int mo27493X();

    /* renamed from: Y */
    TrackGroupArray mo27492Y();

    /* renamed from: Z */
    int mo27491Z();

    /* renamed from: a */
    void mo27490a();

    /* renamed from: a */
    void mo27489a(int i);

    /* renamed from: a */
    void mo27488a(int i, long j);

    /* renamed from: a */
    void mo28388a(long j);

    /* renamed from: a */
    void mo27478a(AbstractC2943b bVar);

    /* renamed from: a */
    void mo27473a(boolean z);

    /* renamed from: a0 */
    Looper mo27468a0();

    /* renamed from: b */
    int mo27467b();

    /* renamed from: b */
    int mo27466b(int i);

    /* renamed from: b */
    void mo27465b(AbstractC2943b bVar);

    /* renamed from: b */
    void mo27463b(boolean z);

    /* renamed from: b0 */
    boolean mo27462b0();

    /* renamed from: c */
    long mo27461c();

    /* renamed from: c */
    void mo27458c(boolean z);

    /* renamed from: c0 */
    long mo27457c0();

    /* renamed from: d0 */
    AbstractC2944c mo27456d0();

    /* renamed from: e */
    AbstractC2965r0 mo27455e();

    /* renamed from: f */
    C2783g mo27454f();

    /* renamed from: g */
    C2910h0 mo27453g();

    long getCurrentPosition();

    long getDuration();

    boolean hasNext();

    boolean hasPrevious();

    boolean isPlaying();

    void stop();
}
