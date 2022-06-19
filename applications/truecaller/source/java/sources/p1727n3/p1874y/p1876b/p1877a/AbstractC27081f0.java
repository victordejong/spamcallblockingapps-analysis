package p1727n3.p1874y.p1876b.p1877a;

import androidx.media2.exoplayer.external.source.TrackGroupArray;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0;
import p1727n3.p1874y.p1876b.p1877a.p1902v0.C27386f;
/* renamed from: n3.y.b.a.f0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/f0.class */
public interface AbstractC27081f0 {

    @Deprecated
    /* renamed from: n3.y.b.a.f0$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/f0$a.class */
    public static abstract class AbstractC27082a implements AbstractC27083b {
        @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
        /* renamed from: H5 */
        public void mo890H5(AbstractC27096l0 abstractC27096l0, int i) {
            if (abstractC27096l0.mo906o() == 1) {
                Object obj = abstractC27096l0.m909m(0, new AbstractC27096l0.C27099c()).f75745b;
            }
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
        /* renamed from: J5 */
        public void mo888J5(C27079e0 c27079e0) {
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
        /* renamed from: w1 */
        public void mo885w1(boolean z) {
        }
    }

    /* renamed from: n3.y.b.a.f0$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/f0$b.class */
    public interface AbstractC27083b {
        /* renamed from: A0 */
        void mo898A0();

        /* renamed from: G5 */
        void mo891G5(boolean z, int i);

        /* renamed from: H5 */
        void mo890H5(AbstractC27096l0 abstractC27096l0, int i);

        /* renamed from: I5 */
        void mo889I5(TrackGroupArray trackGroupArray, C27386f c27386f);

        /* renamed from: J5 */
        void mo888J5(C27079e0 c27079e0);

        /* renamed from: K5 */
        void mo887K5(C27080f c27080f);

        /* renamed from: h5 */
        void mo886h5(int i);

        /* renamed from: w1 */
        void mo885w1(boolean z);
    }

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    long getCurrentPosition();

    AbstractC27096l0 getCurrentTimeline();

    int getCurrentWindowIndex();

    long getTotalBufferedDuration();
}
