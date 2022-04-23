package androidx.media2.exoplayer.external.video;

import android.os.Handler;
import android.view.Surface;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.b.d;
import androidx.media2.exoplayer.external.video.g;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/g.class */
public interface g {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Handler f4232a;

        /* renamed from: b  reason: collision with root package name */
        final g f4233b;

        public a(Handler handler, g gVar) {
            this.f4232a = gVar != null ? (Handler) androidx.media2.exoplayer.external.util.a.a(handler) : null;
            this.f4233b = gVar;
        }

        public final void a(final int i, final int i2, final int i3, final float f) {
            if (this.f4233b != null) {
                this.f4232a.post(new Runnable(this, i, i2, i3, f) { // from class: androidx.media2.exoplayer.external.video.l

                    /* renamed from: a  reason: collision with root package name */
                    private final g.a f4245a;

                    /* renamed from: b  reason: collision with root package name */
                    private final int f4246b;

                    /* renamed from: c  reason: collision with root package name */
                    private final int f4247c;

                    /* renamed from: d  reason: collision with root package name */
                    private final int f4248d;
                    private final float e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f4245a = this;
                        this.f4246b = i;
                        this.f4247c = i2;
                        this.f4248d = i3;
                        this.e = f;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a aVar = this.f4245a;
                        aVar.f4233b.a(this.f4246b, this.f4247c, this.f4248d, this.e);
                    }
                });
            }
        }

        public final void a(final int i, final long j) {
            if (this.f4233b != null) {
                this.f4232a.post(new Runnable(this, i, j) { // from class: androidx.media2.exoplayer.external.video.k

                    /* renamed from: a  reason: collision with root package name */
                    private final g.a f4242a;

                    /* renamed from: b  reason: collision with root package name */
                    private final int f4243b;

                    /* renamed from: c  reason: collision with root package name */
                    private final long f4244c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f4242a = this;
                        this.f4243b = i;
                        this.f4244c = j;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a aVar = this.f4242a;
                        aVar.f4233b.a(this.f4243b, this.f4244c);
                    }
                });
            }
        }

        public final void a(final Surface surface) {
            if (this.f4233b != null) {
                this.f4232a.post(new Runnable(this, surface) { // from class: androidx.media2.exoplayer.external.video.m

                    /* renamed from: a  reason: collision with root package name */
                    private final g.a f4249a;

                    /* renamed from: b  reason: collision with root package name */
                    private final Surface f4250b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f4249a = this;
                        this.f4250b = surface;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a aVar = this.f4249a;
                        aVar.f4233b.a(this.f4250b);
                    }
                });
            }
        }

        public final void a(final d dVar) {
            if (this.f4233b != null) {
                this.f4232a.post(new Runnable(this, dVar) { // from class: androidx.media2.exoplayer.external.video.n

                    /* renamed from: a  reason: collision with root package name */
                    private final g.a f4251a;

                    /* renamed from: b  reason: collision with root package name */
                    private final d f4252b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f4251a = this;
                        this.f4252b = dVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a aVar = this.f4251a;
                        aVar.f4233b.b(this.f4252b);
                    }
                });
            }
        }
    }

    void a(int i, int i2, int i3, float f);

    void a(int i, long j);

    void a(Surface surface);

    void a(Format format);

    void a(d dVar);

    void a(String str, long j, long j2);

    void b(d dVar);
}
