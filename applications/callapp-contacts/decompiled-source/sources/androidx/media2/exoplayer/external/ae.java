package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.trackselection.f;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ae.class */
public interface ae {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ae$a.class */
    public static abstract class a implements b {
        @Override // androidx.media2.exoplayer.external.ae.b
        public final void a() {
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public void a(int i) {
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public void a(ExoPlaybackException exoPlaybackException) {
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public final void a(al alVar, int i) {
            if (alVar.b() == 1) {
                alVar.a(0, new al.b(), 0L);
            }
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public void a(f fVar) {
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public final void a(boolean z) {
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public void a(boolean z, int i) {
        }

        @Override // androidx.media2.exoplayer.external.ae.b
        public void b() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ae$b.class */
    public interface b {
        void a();

        void a(int i);

        void a(ExoPlaybackException exoPlaybackException);

        void a(al alVar, int i);

        void a(f fVar);

        void a(boolean z);

        void a(boolean z, int i);

        void b();
    }

    void a(int i, long j);

    int c();

    long d();

    long e();

    long f();

    long g();

    int h();

    int i();

    long j();

    al k();
}
