package p1727n3.p1758e.p1767b;

import android.media.Image;
import p1727n3.p1758e.p1767b.p1768j1.C25996o1;
/* renamed from: n3.e.b.b0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/b0.class */
public final class C25893b0 implements AbstractC26097v0 {

    /* renamed from: a */
    public final Image f72435a;

    /* renamed from: b */
    public final C25894a[] f72436b;

    /* renamed from: c */
    public final AbstractC26095u0 f72437c;

    /* renamed from: n3.e.b.b0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/b0$a.class */
    public static final class C25894a {
        public C25894a(Image.Plane plane) {
        }
    }

    public C25893b0(Image image) {
        this.f72435a = image;
        Image.Plane[] planes = image.getPlanes();
        if (planes != null) {
            this.f72436b = new C25894a[planes.length];
            for (int i = 0; i < planes.length; i++) {
                this.f72436b[i] = new C25894a(planes[i]);
            }
        } else {
            this.f72436b = new C25894a[0];
        }
        this.f72437c = new e0(C25996o1.f72647b, image.getTimestamp(), 0);
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC26097v0, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f72435a.close();
        }
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC26097v0
    public int getHeight() {
        int height;
        synchronized (this) {
            height = this.f72435a.getHeight();
        }
        return height;
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC26097v0
    public int getWidth() {
        int width;
        synchronized (this) {
            width = this.f72435a.getWidth();
        }
        return width;
    }

    @Override // p1727n3.p1758e.p1767b.AbstractC26097v0
    /* renamed from: x0 */
    public AbstractC26095u0 mo2728x0() {
        return this.f72437c;
    }
}
