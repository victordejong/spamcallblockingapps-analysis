package androidx.media2.exoplayer.external.audio;

import android.os.Handler;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.g;
import androidx.media2.exoplayer.external.b.d;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/g.class */
public interface g {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Handler f2884a;

        /* renamed from: b  reason: collision with root package name */
        final g f2885b;

        public a(Handler handler, g gVar) {
            this.f2884a = gVar != null ? (Handler) androidx.media2.exoplayer.external.util.a.a(handler) : null;
            this.f2885b = gVar;
        }

        public final void a(final d dVar) {
            if (this.f2885b != null) {
                this.f2884a.post(new Runnable(this, dVar) { // from class: androidx.media2.exoplayer.external.audio.l

                    /* renamed from: a  reason: collision with root package name */
                    private final g.a f2898a;

                    /* renamed from: b  reason: collision with root package name */
                    private final d f2899b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f2898a = this;
                        this.f2899b = dVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a aVar = this.f2898a;
                        aVar.f2885b.d(this.f2899b);
                    }
                });
            }
        }
    }

    void a(int i, long j, long j2);

    void b(int i);

    void b(Format format);

    void b(String str, long j, long j2);

    void c(d dVar);

    void d(d dVar);
}
