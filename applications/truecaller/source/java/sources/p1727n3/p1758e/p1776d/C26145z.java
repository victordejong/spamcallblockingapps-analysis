package p1727n3.p1758e.p1776d;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Size;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import n3.h.a.f;
import p1727n3.p1758e.p1767b.C25910f1;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1776d.AbstractC26137v;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
import p1727n3.p1790h.p1791a.C26250e;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1820h.AbstractC26552b;
/* renamed from: n3.e.d.z */
/* loaded from: classes-dex2jar.jar:n3/e/d/z.class */
public final class C26145z extends AbstractC26137v {

    /* renamed from: e */
    public TextureView f72901e;

    /* renamed from: f */
    public SurfaceTexture f72902f;

    /* renamed from: g */
    public ListenableFuture<C25910f1.AbstractC25916f> f72903g;

    /* renamed from: h */
    public C25910f1 f72904h;

    /* renamed from: j */
    public SurfaceTexture f72906j;

    /* renamed from: l */
    public AbstractC26137v.AbstractC26138a f72908l;

    /* renamed from: i */
    public boolean f72905i = false;

    /* renamed from: k */
    public AtomicReference<C26247b<Void>> f72907k = new AtomicReference<>();

    public C26145z(FrameLayout frameLayout, C26136u c26136u) {
        super(frameLayout, c26136u);
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: a */
    public View mo2688a() {
        return this.f72901e;
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: b */
    public Bitmap mo2687b() {
        TextureView textureView = this.f72901e;
        if (textureView == null || !textureView.isAvailable()) {
            return null;
        }
        return this.f72901e.getBitmap();
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: c */
    public void mo2686c() {
        if (!this.f72905i || this.f72906j == null) {
            return;
        }
        SurfaceTexture surfaceTexture = this.f72901e.getSurfaceTexture();
        SurfaceTexture surfaceTexture2 = this.f72906j;
        if (surfaceTexture == surfaceTexture2) {
            return;
        }
        this.f72901e.setSurfaceTexture(surfaceTexture2);
        this.f72906j = null;
        this.f72905i = false;
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: d */
    public void mo2685d() {
        this.f72905i = true;
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: e */
    public void mo2684e(final C25910f1 c25910f1, AbstractC26137v.AbstractC26138a abstractC26138a) {
        this.f72883a = c25910f1.f72474a;
        this.f72908l = abstractC26138a;
        Objects.requireNonNull(this.f72884b);
        Objects.requireNonNull(this.f72883a);
        TextureView textureView = new TextureView(this.f72884b.getContext());
        this.f72901e = textureView;
        textureView.setLayoutParams(new FrameLayout.LayoutParams(this.f72883a.getWidth(), this.f72883a.getHeight()));
        this.f72901e.setSurfaceTextureListener(new TextureView$SurfaceTextureListenerC26143y(this));
        this.f72884b.removeAllViews();
        this.f72884b.addView(this.f72901e);
        C25910f1 c25910f12 = this.f72904h;
        if (c25910f12 != null) {
            c25910f12.m2911b();
        }
        this.f72904h = c25910f1;
        Executor m1797e = C26467a.m1797e(this.f72901e.getContext());
        Runnable runnable = new Runnable() { // from class: n3.e.d.l
            @Override // java.lang.Runnable
            public final void run() {
                C26145z c26145z = C26145z.this;
                C25910f1 c25910f13 = c25910f1;
                C25910f1 c25910f14 = c26145z.f72904h;
                if (c25910f14 != null && c25910f14 == c25910f13) {
                    c26145z.f72904h = null;
                    c26145z.f72903g = null;
                }
                AbstractC26137v.AbstractC26138a abstractC26138a2 = c26145z.f72908l;
                if (abstractC26138a2 != null) {
                    ((C26119d) abstractC26138a2).m2703a();
                    c26145z.f72908l = null;
                }
            }
        };
        f<Void> fVar = c25910f1.f72480g.f73171c;
        if (fVar != null) {
            fVar.addListener(runnable, m1797e);
        }
        m2682h();
    }

    @Override // p1727n3.p1758e.p1776d.AbstractC26137v
    /* renamed from: g */
    public ListenableFuture<Void> mo2683g() {
        return MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.d.k
            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
            /* renamed from: a */
            public final Object mo2255a(C26247b c26247b) {
                C26145z.this.f72907k.set(c26247b);
                return "textureViewImpl_waitForNextFrame";
            }
        });
    }

    /* renamed from: h */
    public void m2682h() {
        SurfaceTexture surfaceTexture;
        Size size = this.f72883a;
        if (size == null || (surfaceTexture = this.f72902f) == null || this.f72904h == null) {
            return;
        }
        surfaceTexture.setDefaultBufferSize(size.getWidth(), this.f72883a.getHeight());
        final Surface surface = new Surface(this.f72902f);
        final C25910f1 c25910f1 = this.f72904h;
        final ListenableFuture<C25910f1.AbstractC25916f> m43231i0 = MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.d.n
            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
            /* renamed from: a */
            public final Object mo2255a(final C26247b c26247b) {
                C26145z c26145z = C26145z.this;
                Surface surface2 = surface;
                Objects.requireNonNull(c26145z);
                C26103y0.m2724a("TextureViewImpl", "Surface set on Preview.", null);
                C25910f1 c25910f12 = c26145z.f72904h;
                Executor m43268U = MediaSessionCompat.m43268U();
                Objects.requireNonNull(c26247b);
                c25910f12.m2912a(surface2, m43268U, new AbstractC26552b() { // from class: n3.e.d.p
                    @Override // p1727n3.p1807k.p1820h.AbstractC26552b
                    public final void accept(Object obj) {
                        C26247b.this.m2258a((C25910f1.AbstractC25916f) obj);
                    }
                });
                return "provideSurface[request=" + c26145z.f72904h + " surface=" + surface2 + "]";
            }
        });
        this.f72903g = m43231i0;
        ((C26250e) m43231i0).f73174b.addListener(new Runnable() { // from class: n3.e.d.m
            @Override // java.lang.Runnable
            public final void run() {
                C26145z c26145z = C26145z.this;
                Surface surface2 = surface;
                ListenableFuture<C25910f1.AbstractC25916f> listenableFuture = m43231i0;
                C25910f1 c25910f12 = c25910f1;
                Objects.requireNonNull(c26145z);
                C26103y0.m2724a("TextureViewImpl", "Safe to release surface.", null);
                AbstractC26137v.AbstractC26138a abstractC26138a = c26145z.f72908l;
                if (abstractC26138a != null) {
                    ((C26119d) abstractC26138a).m2703a();
                    c26145z.f72908l = null;
                }
                surface2.release();
                if (c26145z.f72903g == listenableFuture) {
                    c26145z.f72903g = null;
                }
                if (c26145z.f72904h == c25910f12) {
                    c26145z.f72904h = null;
                }
            }
        }, C26467a.m1797e(this.f72901e.getContext()));
        this.f72886d = true;
        m2693f();
    }
}
