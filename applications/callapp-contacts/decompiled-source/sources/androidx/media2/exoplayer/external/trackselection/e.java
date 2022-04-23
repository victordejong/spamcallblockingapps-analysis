package androidx.media2.exoplayer.external.trackselection;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.upstream.c;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/e.class */
public interface e {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final TrackGroup f3979a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f3980b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3981c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f3982d;

        public a(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0, null);
        }

        public a(TrackGroup trackGroup, int[] iArr, int i, Object obj) {
            this.f3979a = trackGroup;
            this.f3980b = iArr;
            this.f3981c = i;
            this.f3982d = obj;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/e$b.class */
    public interface b {
        e[] a(a[] aVarArr, c cVar);
    }

    int a();

    Format a(int i);

    void a(float f);

    void a(long j, long j2, long j3);

    boolean a(int i, long j);

    int b();

    int b(int i);

    int c(int i);

    Object c();

    void d();

    TrackGroup e();

    int f();

    Format g();

    int h();

    @Deprecated
    void i();
}
