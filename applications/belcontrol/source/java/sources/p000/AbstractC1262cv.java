package p000;

import android.os.Handler;
import android.view.Surface;
import androidx.media2.exoplayer.external.Format;
import p000.AbstractC1262cv;
/* renamed from: cv */
/* loaded from: classes-dex2jar.jar:cv.class */
public interface AbstractC1262cv {

    /* renamed from: cv$a */
    /* loaded from: classes-dex2jar.jar:cv$a.class */
    public static final class C1263a {

        /* renamed from: a */
        public final Handler f5677a;

        /* renamed from: b */
        public final AbstractC1262cv f5678b;

        public C1263a(Handler handler, AbstractC1262cv abstractC1262cv) {
            Handler handler2;
            if (abstractC1262cv != null) {
                it.e(handler);
                handler2 = handler;
            } else {
                handler2 = null;
            }
            this.f5677a = handler2;
            this.f5678b = abstractC1262cv;
        }

        /* renamed from: a */
        public void m2994a(String str, long j, long j2) {
            if (this.f5678b != null) {
                this.f5677a.post(new wu(this, str, j, j2));
            }
        }

        /* renamed from: b */
        public void m2993b(yi yiVar) {
            yiVar.a();
            if (this.f5678b != null) {
                this.f5677a.post(new Runnable(this, yiVar) { // from class: bv

                    /* renamed from: a */
                    public final AbstractC1262cv.C1263a f2008a;

                    /* renamed from: b */
                    public final yi f2009b;

                    {
                        this.f2008a = this;
                        this.f2009b = yiVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f2008a.m2988g(this.f2009b);
                    }
                });
            }
        }

        /* renamed from: c */
        public void m2992c(int i, long j) {
            if (this.f5678b != null) {
                this.f5677a.post(new yu(this, i, j));
            }
        }

        /* renamed from: d */
        public void m2991d(yi yiVar) {
            if (this.f5678b != null) {
                this.f5677a.post(new vu(this, yiVar));
            }
        }

        /* renamed from: e */
        public void m2990e(Format format) {
            if (this.f5678b != null) {
                this.f5677a.post(new xu(this, format));
            }
        }

        /* renamed from: f */
        public final /* synthetic */ void m2989f(String str, long j, long j2) {
            this.f5678b.onVideoDecoderInitialized(str, j, j2);
        }

        /* renamed from: g */
        public final /* synthetic */ void m2988g(yi yiVar) {
            yiVar.a();
            this.f5678b.m2996l(yiVar);
        }

        /* renamed from: h */
        public final /* synthetic */ void m2987h(int i, long j) {
            this.f5678b.onDroppedFrames(i, j);
        }

        /* renamed from: i */
        public final /* synthetic */ void m2986i(yi yiVar) {
            this.f5678b.m2995o(yiVar);
        }

        /* renamed from: j */
        public final /* synthetic */ void m2985j(Format format) {
            this.f5678b.m2997g(format);
        }

        /* renamed from: k */
        public final /* synthetic */ void m2984k(Surface surface) {
            this.f5678b.onRenderedFirstFrame(surface);
        }

        /* renamed from: l */
        public final /* synthetic */ void m2983l(int i, int i2, int i3, float f) {
            this.f5678b.onVideoSizeChanged(i, i2, i3, f);
        }

        /* renamed from: m */
        public void m2982m(Surface surface) {
            if (this.f5678b != null) {
                this.f5677a.post(new Runnable(this, surface) { // from class: av

                    /* renamed from: a */
                    public final AbstractC1262cv.C1263a f1690a;

                    /* renamed from: b */
                    public final Surface f1691b;

                    {
                        this.f1690a = this;
                        this.f1691b = surface;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f1690a.m2984k(this.f1691b);
                    }
                });
            }
        }

        /* renamed from: n */
        public void m2981n(int i, int i2, int i3, float f) {
            if (this.f5678b != null) {
                this.f5677a.post(new zu(this, i, i2, i3, f));
            }
        }
    }

    /* renamed from: g */
    void m2997g(Format format);

    /* renamed from: l */
    void m2996l(yi yiVar);

    /* renamed from: o */
    void m2995o(yi yiVar);

    void onDroppedFrames(int i, long j);

    void onRenderedFirstFrame(Surface surface);

    void onVideoDecoderInitialized(String str, long j, long j2);

    void onVideoSizeChanged(int i, int i2, int i3, float f);
}
