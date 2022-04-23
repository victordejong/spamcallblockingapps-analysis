package p012b.p076s.p078b.p079a;

import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import p012b.p076s.p078b.p079a.p110y0.C1671j;
/* renamed from: b.s.b.a.d0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/d0.class */
public interface AbstractC1223d0 {

    @Deprecated
    /* renamed from: b.s.b.a.d0$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/d0$a.class */
    public static abstract class AbstractC1224a implements AbstractC1225b {
        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: a */
        public void mo34018a(C1221c0 c0Var) {
            AbstractC1228e0.m34176a(this, c0Var);
        }

        @Deprecated
        /* renamed from: a */
        public void m34189a(AbstractC1252n0 n0Var, Object obj) {
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: a */
        public void mo34016a(AbstractC1252n0 n0Var, Object obj, int i) {
            m34189a(n0Var, obj);
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        public void onLoadingChanged(boolean z) {
            AbstractC1228e0.m34174a(this, z);
        }
    }

    /* renamed from: b.s.b.a.d0$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/d0$b.class */
    public interface AbstractC1225b {
        /* renamed from: a */
        void mo32193a();

        /* renamed from: a */
        void mo32187a(ExoPlaybackException exoPlaybackException);

        /* renamed from: a */
        void mo32185a(TrackGroupArray trackGroupArray, C1671j jVar);

        /* renamed from: a */
        void mo34018a(C1221c0 c0Var);

        /* renamed from: a */
        void mo34016a(AbstractC1252n0 n0Var, Object obj, int i);

        /* renamed from: b */
        void mo32181b(int i);

        void onLoadingChanged(boolean z);

        void onPlayerStateChanged(boolean z, int i);
    }

    /* renamed from: a */
    void mo34101a(int i, long j);

    /* renamed from: b */
    int mo34079b();

    /* renamed from: c */
    long mo34074c();

    /* renamed from: d */
    long mo34072d();

    /* renamed from: e */
    AbstractC1252n0 mo34070e();

    /* renamed from: f */
    C1671j mo34068f();

    /* renamed from: g */
    long mo34066g();

    long getCurrentPosition();

    long getDuration();

    /* renamed from: h */
    int mo34064h();

    /* renamed from: i */
    int mo34062i();
}
