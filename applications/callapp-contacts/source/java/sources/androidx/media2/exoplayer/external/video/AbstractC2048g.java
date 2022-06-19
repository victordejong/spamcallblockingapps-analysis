package androidx.media2.exoplayer.external.video;

import android.os.Handler;
import android.view.Surface;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.p063b.C1441d;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.video.AbstractC2048g;
/* renamed from: androidx.media2.exoplayer.external.video.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/g.class */
public interface AbstractC2048g {

    /* renamed from: androidx.media2.exoplayer.external.video.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/g$a.class */
    public static final class C2049a {

        /* renamed from: a */
        final Handler f8256a;

        /* renamed from: b */
        final AbstractC2048g f8257b;

        public C2049a(Handler handler, AbstractC2048g abstractC2048g) {
            this.f8256a = abstractC2048g != null ? (Handler) C1993a.m41690a(handler) : null;
            this.f8257b = abstractC2048g;
        }

        /* renamed from: a */
        public final void m41423a(int i, int i2, int i3, float f) {
            if (this.f8257b != null) {
                this.f8256a.post(new Runnable(this, i, i2, i3, f) { // from class: androidx.media2.exoplayer.external.video.l

                    /* renamed from: a */
                    private final AbstractC2048g.C2049a f8269a;

                    /* renamed from: b */
                    private final int f8270b;

                    /* renamed from: c */
                    private final int f8271c;

                    /* renamed from: d */
                    private final int f8272d;

                    /* renamed from: e */
                    private final float f8273e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8269a = this;
                        this.f8270b = i;
                        this.f8271c = i2;
                        this.f8272d = i3;
                        this.f8273e = f;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2048g.C2049a c2049a = this.f8269a;
                        c2049a.f8257b.mo41242a(this.f8270b, this.f8271c, this.f8272d, this.f8273e);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m41422a(int i, long j) {
            if (this.f8257b != null) {
                this.f8256a.post(new Runnable(this, i, j) { // from class: androidx.media2.exoplayer.external.video.k

                    /* renamed from: a */
                    private final AbstractC2048g.C2049a f8266a;

                    /* renamed from: b */
                    private final int f8267b;

                    /* renamed from: c */
                    private final long f8268c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8266a = this;
                        this.f8267b = i;
                        this.f8268c = j;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2048g.C2049a c2049a = this.f8266a;
                        c2049a.f8257b.mo41241a(this.f8267b, this.f8268c);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m41421a(Surface surface) {
            if (this.f8257b != null) {
                this.f8256a.post(new Runnable(this, surface) { // from class: androidx.media2.exoplayer.external.video.m

                    /* renamed from: a */
                    private final AbstractC2048g.C2049a f8274a;

                    /* renamed from: b */
                    private final Surface f8275b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8274a = this;
                        this.f8275b = surface;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2048g.C2049a c2049a = this.f8274a;
                        c2049a.f8257b.mo41240a(this.f8275b);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m41420a(C1441d c1441d) {
            if (this.f8257b != null) {
                this.f8256a.post(new Runnable(this, c1441d) { // from class: androidx.media2.exoplayer.external.video.n

                    /* renamed from: a */
                    private final AbstractC2048g.C2049a f8276a;

                    /* renamed from: b */
                    private final C1441d f8277b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f8276a = this;
                        this.f8277b = c1441d;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2048g.C2049a c2049a = this.f8276a;
                        c2049a.f8257b.mo41230b(this.f8277b);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    void mo41242a(int i, int i2, int i3, float f);

    /* renamed from: a */
    void mo41241a(int i, long j);

    /* renamed from: a */
    void mo41240a(Surface surface);

    /* renamed from: a */
    void mo41238a(Format format);

    /* renamed from: a */
    void mo41237a(C1441d c1441d);

    /* renamed from: a */
    void mo41234a(String str, long j, long j2);

    /* renamed from: b */
    void mo41230b(C1441d c1441d);
}
