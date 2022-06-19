package androidx.media2.exoplayer.external.audio;

import android.os.Handler;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.AbstractC1410g;
import androidx.media2.exoplayer.external.p063b.C1441d;
import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.audio.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/g.class */
public interface AbstractC1410g {

    /* renamed from: androidx.media2.exoplayer.external.audio.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/g$a.class */
    public static final class C1411a {

        /* renamed from: a */
        final Handler f5320a;

        /* renamed from: b */
        final AbstractC1410g f5321b;

        public C1411a(Handler handler, AbstractC1410g abstractC1410g) {
            this.f5320a = abstractC1410g != null ? (Handler) C1993a.m41690a(handler) : null;
            this.f5321b = abstractC1410g;
        }

        /* renamed from: a */
        public final void m43001a(C1441d c1441d) {
            if (this.f5321b != null) {
                this.f5320a.post(new Runnable(this, c1441d) { // from class: androidx.media2.exoplayer.external.audio.l

                    /* renamed from: a */
                    private final AbstractC1410g.C1411a f5334a;

                    /* renamed from: b */
                    private final C1441d f5335b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f5334a = this;
                        this.f5335b = c1441d;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1410g.C1411a c1411a = this.f5334a;
                        c1411a.f5321b.mo43002d(this.f5335b);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    void mo43006a(int i, long j, long j2);

    /* renamed from: b */
    void mo41231b(int i);

    /* renamed from: b */
    void mo43005b(Format format);

    /* renamed from: b */
    void mo43004b(String str, long j, long j2);

    /* renamed from: c */
    void mo43003c(C1441d c1441d);

    /* renamed from: d */
    void mo43002d(C1441d c1441d);
}
