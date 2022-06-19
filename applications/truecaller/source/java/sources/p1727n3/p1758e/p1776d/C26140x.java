package p1727n3.p1758e.p1776d;

import android.graphics.Bitmap;
import android.os.Handler;
import android.util.Size;
import android.view.PixelCopy;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.Executor;
import n3.h.a.f;
import p1727n3.p1758e.p1767b.C25910f1;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
import p1727n3.p1758e.p1776d.AbstractC26137v;
import p1727n3.p1758e.p1776d.C26140x;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1820h.AbstractC26552b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.d.x */
/* loaded from: classes-dex2jar.jar:n3/e/d/x.class */
public final class C26140x extends AbstractC26137v {

    /* renamed from: e */
    public SurfaceView f72890e;

    /* renamed from: f */
    public final SurfaceHolder$CallbackC26142b f72891f = new SurfaceHolder$CallbackC26142b();

    /* renamed from: g */
    public AbstractC26137v.AbstractC26138a f72892g;

    /* renamed from: n3.e.d.x$a */
    /* loaded from: classes-dex2jar.jar:n3/e/d/x$a.class */
    public static class C26141a {
        /* renamed from: a */
        public static void m2692a(SurfaceView surfaceView, Bitmap bitmap, PixelCopy.OnPixelCopyFinishedListener onPixelCopyFinishedListener, Handler handler) {
            PixelCopy.request(surfaceView, bitmap, onPixelCopyFinishedListener, handler);
        }
    }

    /* renamed from: n3.e.d.x$b */
    /* loaded from: classes-dex2jar.jar:n3/e/d/x$b.class */
    public class SurfaceHolder$CallbackC26142b implements SurfaceHolder.Callback {

        /* renamed from: a */
        public Size f72893a;

        /* renamed from: b */
        public C25910f1 f72894b;

        /* renamed from: c */
        public Size f72895c;

        /* renamed from: d */
        public boolean f72896d = false;

        public SurfaceHolder$CallbackC26142b() {
            C26140x.this = r4;
        }

        /* renamed from: a */
        public final void m2691a() {
            if (this.f72894b != null) {
                StringBuilder m8728C = C22128a.m8728C("Request canceled: ");
                m8728C.append(this.f72894b);
                C26103y0.m2724a("SurfaceViewImpl", m8728C.toString(), null);
                this.f72894b.m2911b();
            }
        }

        /* renamed from: b */
        public final boolean m2690b() {
            Size size;
            Surface surface = C26140x.this.f72890e.getHolder().getSurface();
            if (!this.f72896d && this.f72894b != null && (size = this.f72893a) != null && size.equals(this.f72895c)) {
                C26103y0.m2724a("SurfaceViewImpl", "Surface set on Preview.", null);
                this.f72894b.m2912a(surface, C26467a.m1797e(C26140x.this.f72890e.getContext()), new AbstractC26552b() { // from class: n3.e.d.j
                    @Override // p1727n3.p1807k.p1820h.AbstractC26552b
                    public final void accept(Object obj) {
                        C26140x.SurfaceHolder$CallbackC26142b surfaceHolder$CallbackC26142b = C26140x.SurfaceHolder$CallbackC26142b.this;
                        C25910f1.AbstractC25916f abstractC25916f = (C25910f1.AbstractC25916f) obj;
                        Objects.requireNonNull(surfaceHolder$CallbackC26142b);
                        C26103y0.m2724a("SurfaceViewImpl", "Safe to release surface.", null);
                        C26140x c26140x = C26140x.this;
                        AbstractC26137v.AbstractC26138a abstractC26138a = c26140x.f72892g;
                        if (abstractC26138a != null) {
                            ((C26119d) abstractC26138a).m2703a();
                            c26140x.f72892g = null;
                        }
                    }
                });
                this.f72896d = true;
                C26140x c26140x = C26140x.this;
                c26140x.f72886d = true;
                c26140x.m2693f();
                return true;
            }
            return false;
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            C26103y0.m2724a("SurfaceViewImpl", C22128a.m8595m2("Surface changed. Size: ", i2, "x", i3), null);
            this.f72895c = new Size(i2, i3);
            m2690b();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            C26103y0.m2724a("SurfaceViewImpl", "Surface created.", null);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            C26103y0.m2724a("SurfaceViewImpl", "Surface destroyed.", null);
            if (!this.f72896d) {
                m2691a();
            } else if (this.f72894b != null) {
                StringBuilder m8728C = C22128a.m8728C("Surface invalidated ");
                m8728C.append(this.f72894b);
                C26103y0.m2724a("SurfaceViewImpl", m8728C.toString(), null);
                this.f72894b.f72481h.m2833a();
            }
            this.f72896d = false;
            this.f72894b = null;
            this.f72895c = null;
            this.f72893a = null;
        }
    }

    public C26140x(FrameLayout frameLayout, C26136u c26136u) {
        super(frameLayout, c26136u);
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: a */
    public View mo2688a() {
        return this.f72890e;
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: b */
    public Bitmap mo2687b() {
        SurfaceView surfaceView = this.f72890e;
        if (surfaceView == null || surfaceView.getHolder().getSurface() == null || !this.f72890e.getHolder().getSurface().isValid()) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(this.f72890e.getWidth(), this.f72890e.getHeight(), Bitmap.Config.ARGB_8888);
        SurfaceView surfaceView2 = this.f72890e;
        C26141a.m2692a(surfaceView2, createBitmap, PixelCopy$OnPixelCopyFinishedListenerC26124i.f72852a, surfaceView2.getHandler());
        return createBitmap;
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: c */
    public void mo2686c() {
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: d */
    public void mo2685d() {
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: e */
    public void mo2684e(final C25910f1 c25910f1, AbstractC26137v.AbstractC26138a abstractC26138a) {
        this.f72883a = c25910f1.f72474a;
        this.f72892g = abstractC26138a;
        Objects.requireNonNull(this.f72884b);
        Objects.requireNonNull(this.f72883a);
        SurfaceView surfaceView = new SurfaceView(this.f72884b.getContext());
        this.f72890e = surfaceView;
        surfaceView.setLayoutParams(new FrameLayout.LayoutParams(this.f72883a.getWidth(), this.f72883a.getHeight()));
        this.f72884b.removeAllViews();
        this.f72884b.addView(this.f72890e);
        this.f72890e.getHolder().addCallback(this.f72891f);
        Executor m1797e = C26467a.m1797e(this.f72890e.getContext());
        Runnable runnable = new Runnable() { // from class: n3.e.d.o
            @Override // java.lang.Runnable
            public final void run() {
                C26140x c26140x = C26140x.this;
                AbstractC26137v.AbstractC26138a abstractC26138a2 = c26140x.f72892g;
                if (abstractC26138a2 != null) {
                    ((C26119d) abstractC26138a2).m2703a();
                    c26140x.f72892g = null;
                }
            }
        };
        f<Void> fVar = c25910f1.f72480g.f73171c;
        if (fVar != null) {
            fVar.addListener(runnable, m1797e);
        }
        this.f72890e.post(new Runnable() { // from class: n3.e.d.h
            @Override // java.lang.Runnable
            public final void run() {
                C26140x c26140x = C26140x.this;
                C25910f1 c25910f12 = c25910f1;
                C26140x.SurfaceHolder$CallbackC26142b surfaceHolder$CallbackC26142b = c26140x.f72891f;
                surfaceHolder$CallbackC26142b.m2691a();
                surfaceHolder$CallbackC26142b.f72894b = c25910f12;
                Size size = c25910f12.f72474a;
                surfaceHolder$CallbackC26142b.f72893a = size;
                surfaceHolder$CallbackC26142b.f72896d = false;
                if (!surfaceHolder$CallbackC26142b.m2690b()) {
                    C26103y0.m2724a("SurfaceViewImpl", "Wait for new Surface creation.", null);
                    C26140x.this.f72890e.getHolder().setFixedSize(size.getWidth(), size.getHeight());
                }
            }
        });
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: g */
    public ListenableFuture<Void> mo2683g() {
        return C26034g.m2781c(null);
    }
}
