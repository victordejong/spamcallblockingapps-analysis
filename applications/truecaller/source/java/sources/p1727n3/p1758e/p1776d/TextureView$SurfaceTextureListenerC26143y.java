package p1727n3.p1758e.p1776d;

import android.graphics.SurfaceTexture;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.TextureView;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import p1727n3.p1758e.p1767b.C25910f1;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
import p1727n3.p1790h.p1791a.C26247b;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.d.y */
/* loaded from: classes-dex2jar.jar:n3/e/d/y.class */
public class TextureView$SurfaceTextureListenerC26143y implements TextureView.SurfaceTextureListener {

    /* renamed from: a */
    public final /* synthetic */ C26145z f72898a;

    /* renamed from: n3.e.d.y$a */
    /* loaded from: classes-dex2jar.jar:n3/e/d/y$a.class */
    public class C26144a implements AbstractC26030d<C25910f1.AbstractC25916f> {

        /* renamed from: a */
        public final /* synthetic */ SurfaceTexture f72899a;

        public C26144a(SurfaceTexture surfaceTexture) {
            TextureView$SurfaceTextureListenerC26143y.this = r4;
            this.f72899a = surfaceTexture;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        /* renamed from: a */
        public void mo2689a(Throwable th) {
            throw new IllegalStateException("SurfaceReleaseFuture did not complete nicely.", th);
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        public void onSuccess(C25910f1.AbstractC25916f abstractC25916f) {
            MediaSessionCompat.m43187x(abstractC25916f.mo2910a() != 3, "Unexpected result from SurfaceRequest. Surface was provided twice.");
            C26103y0.m2724a("TextureViewImpl", "SurfaceTexture about to manually be destroyed", null);
            this.f72899a.release();
            C26145z c26145z = TextureView$SurfaceTextureListenerC26143y.this.f72898a;
            if (c26145z.f72906j != null) {
                c26145z.f72906j = null;
            }
        }
    }

    public TextureView$SurfaceTextureListenerC26143y(C26145z c26145z) {
        this.f72898a = c26145z;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        C26103y0.m2724a("TextureViewImpl", C22128a.m8595m2("SurfaceTexture available. Size: ", i, "x", i2), null);
        C26145z c26145z = this.f72898a;
        c26145z.f72902f = surfaceTexture;
        if (c26145z.f72903g == null) {
            c26145z.m2682h();
            return;
        }
        Objects.requireNonNull(c26145z.f72904h);
        C26103y0.m2724a("TextureViewImpl", "Surface invalidated " + this.f72898a.f72904h, null);
        this.f72898a.f72904h.f72481h.m2833a();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        C26145z c26145z = this.f72898a;
        c26145z.f72902f = null;
        ListenableFuture<C25910f1.AbstractC25916f> listenableFuture = c26145z.f72903g;
        if (listenableFuture == null) {
            C26103y0.m2724a("TextureViewImpl", "SurfaceTexture about to be destroyed", null);
            return true;
        }
        C26144a c26144a = new C26144a(surfaceTexture);
        listenableFuture.addListener(new C26034g.RunnableC26038d(listenableFuture, c26144a), C26467a.m1797e(c26145z.f72901e.getContext()));
        this.f72898a.f72906j = surfaceTexture;
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        C26103y0.m2724a("TextureViewImpl", C22128a.m8595m2("SurfaceTexture size changed: ", i, "x", i2), null);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        C26247b<Void> andSet = this.f72898a.f72907k.getAndSet(null);
        if (andSet != null) {
            andSet.m2258a(null);
        }
    }
}
