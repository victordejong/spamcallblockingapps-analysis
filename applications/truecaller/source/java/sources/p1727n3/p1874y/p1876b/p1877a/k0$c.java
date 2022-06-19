package p1727n3.p1874y.p1876b.p1877a;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import java.util.Iterator;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27096l0;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27120f;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.C27116e;
import p1727n3.p1874y.p1876b.p1877a.p1880o0.C27154b;
import p1727n3.p1874y.p1876b.p1877a.p1892s0.AbstractC27321d;
import p1727n3.p1874y.p1876b.p1877a.p1902v0.C27386f;
import p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27454g;
import p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o;
/* renamed from: n3.y.b.a.k0$c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/k0$c.class */
public final class k0$c implements AbstractC27462o, AbstractC27129n, AbstractC27321d, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, C27116e.AbstractC27119c, AbstractC27081f0.AbstractC27083b {

    /* renamed from: a */
    public final /* synthetic */ k0 f75735a;

    public k0$c(k0 k0Var, k0$a k0_a) {
        this.f75735a = k0Var;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: A0 */
    public void mo898A0() {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: G5 */
    public void mo891G5(boolean z, int i) {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: H5 */
    public void mo890H5(AbstractC27096l0 abstractC27096l0, int i) {
        if (abstractC27096l0.mo906o() == 1) {
            Object obj = abstractC27096l0.m909m(0, new AbstractC27096l0.C27099c()).f75745b;
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: I5 */
    public void mo889I5(TrackGroupArray trackGroupArray, C27386f c27386f) {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: J5 */
    public void mo888J5(C27079e0 c27079e0) {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: K5 */
    public void mo887K5(C27080f c27080f) {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: a */
    public void mo251a(int i, int i2, int i3, float f) {
        Iterator it = this.f75735a.f.iterator();
        while (it.hasNext()) {
            AbstractC27454g abstractC27454g = (AbstractC27454g) it.next();
            if (!this.f75735a.i.contains(abstractC27454g)) {
                abstractC27454g.m254a(i, i2, i3, f);
            }
        }
        Iterator it2 = this.f75735a.i.iterator();
        while (it2.hasNext()) {
            ((AbstractC27462o) it2.next()).mo251a(i, i2, i3, f);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: b */
    public void mo834b(int i) {
        k0 k0Var = this.f75735a;
        if (k0Var.r == i) {
            return;
        }
        k0Var.r = i;
        Iterator it = k0Var.g.iterator();
        while (it.hasNext()) {
            AbstractC27120f abstractC27120f = (AbstractC27120f) it.next();
            if (!this.f75735a.j.contains(abstractC27120f)) {
                abstractC27120f.m840b(i);
            }
        }
        Iterator it2 = this.f75735a.j.iterator();
        while (it2.hasNext()) {
            ((AbstractC27129n) it2.next()).mo834b(i);
        }
    }

    /* renamed from: c */
    public void m914c(int i) {
        k0 k0Var = this.f75735a;
        k0Var.m(k0Var.d(), i);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: d */
    public void mo833d(String str, long j, long j2) {
        Iterator it = this.f75735a.j.iterator();
        while (it.hasNext()) {
            ((AbstractC27129n) it.next()).mo833d(str, j, j2);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: e */
    public void mo250e(int i, long j) {
        Iterator it = this.f75735a.i.iterator();
        while (it.hasNext()) {
            ((AbstractC27462o) it.next()).mo250e(i, j);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: f */
    public void mo249f(String str, long j, long j2) {
        Iterator it = this.f75735a.i.iterator();
        while (it.hasNext()) {
            ((AbstractC27462o) it.next()).mo249f(str, j, j2);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: g */
    public void mo248g(Surface surface) {
        k0 k0Var = this.f75735a;
        if (k0Var.n == surface) {
            Iterator it = k0Var.f.iterator();
            while (it.hasNext()) {
                ((AbstractC27454g) it.next()).mo253c();
            }
        }
        Iterator it2 = this.f75735a.i.iterator();
        while (it2.hasNext()) {
            ((AbstractC27462o) it2.next()).mo248g(surface);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: h */
    public void mo832h(int i, long j, long j2) {
        Iterator it = this.f75735a.j.iterator();
        while (it.hasNext()) {
            ((AbstractC27129n) it.next()).mo832h(i, j, j2);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: h5 */
    public void mo886h5(int i) {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: n */
    public void mo247n(Format format) {
        Objects.requireNonNull(this.f75735a);
        Iterator it = this.f75735a.i.iterator();
        while (it.hasNext()) {
            ((AbstractC27462o) it.next()).mo247n(format);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: o */
    public void mo831o(C27154b c27154b) {
        Objects.requireNonNull(this.f75735a);
        Iterator it = this.f75735a.j.iterator();
        while (it.hasNext()) {
            ((AbstractC27129n) it.next()).mo831o(c27154b);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f75735a.l(new Surface(surfaceTexture), true);
        this.f75735a.f(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f75735a.l((Surface) null, true);
        this.f75735a.f(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f75735a.f(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: q */
    public void mo830q(Format format) {
        Objects.requireNonNull(this.f75735a);
        Iterator it = this.f75735a.j.iterator();
        while (it.hasNext()) {
            ((AbstractC27129n) it.next()).mo830q(format);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.f75735a.f(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.f75735a.l(surfaceHolder.getSurface(), false);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f75735a.l((Surface) null, false);
        this.f75735a.f(0, 0);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: u */
    public void mo246u(C27154b c27154b) {
        Iterator it = this.f75735a.i.iterator();
        while (it.hasNext()) {
            ((AbstractC27462o) it.next()).mo246u(c27154b);
        }
        Objects.requireNonNull(this.f75735a);
        Objects.requireNonNull(this.f75735a);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o
    /* renamed from: v */
    public void mo245v(C27154b c27154b) {
        Objects.requireNonNull(this.f75735a);
        Iterator it = this.f75735a.i.iterator();
        while (it.hasNext()) {
            ((AbstractC27462o) it.next()).mo245v(c27154b);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.AbstractC27081f0.AbstractC27083b
    /* renamed from: w1 */
    public void mo885w1(boolean z) {
        Objects.requireNonNull(this.f75735a);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1892s0.AbstractC27321d
    /* renamed from: x */
    public void mo569x(Metadata metadata) {
        Iterator it = this.f75735a.h.iterator();
        while (it.hasNext()) {
            ((AbstractC27321d) it.next()).mo569x(metadata);
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n
    /* renamed from: y */
    public void mo829y(C27154b c27154b) {
        Iterator it = this.f75735a.j.iterator();
        while (it.hasNext()) {
            ((AbstractC27129n) it.next()).mo829y(c27154b);
        }
        Objects.requireNonNull(this.f75735a);
        Objects.requireNonNull(this.f75735a);
        this.f75735a.r = 0;
    }
}
