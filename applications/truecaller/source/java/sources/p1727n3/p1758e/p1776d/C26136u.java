package p1727n3.p1758e.p1776d;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Size;
import androidx.camera.view.PreviewView;
import p1727n3.p1758e.p1776d.p1777b0.p1778a.p1779a.C26113a;
import p1727n3.p1758e.p1776d.p1777b0.p1778a.p1779a.C26116d;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.d.u */
/* loaded from: classes-dex2jar.jar:n3/e/d/u.class */
public final class C26136u {

    /* renamed from: a */
    public Size f72876a;

    /* renamed from: b */
    public Rect f72877b;

    /* renamed from: c */
    public Rect f72878c;

    /* renamed from: d */
    public int f72879d;

    /* renamed from: e */
    public int f72880e;

    /* renamed from: f */
    public boolean f72881f;

    /* renamed from: g */
    public PreviewView.EnumC0105d f72882g = PreviewView.EnumC0105d.FILL_CENTER;

    /* renamed from: a */
    public Matrix m2699a(Size size, int i) {
        if (!m2694f()) {
            return null;
        }
        Matrix matrix = new Matrix();
        m2697c(size, i).invert(matrix);
        Matrix matrix2 = new Matrix();
        matrix2.setRectToRect(new RectF(0.0f, 0.0f, this.f72876a.getWidth(), this.f72876a.getHeight()), new RectF(0.0f, 0.0f, 1.0f, 1.0f), Matrix.ScaleToFit.FILL);
        matrix.postConcat(matrix2);
        return matrix;
    }

    /* renamed from: b */
    public final Size m2698b() {
        return C26111a0.m2706b(this.f72879d) ? new Size(this.f72878c.height(), this.f72878c.width()) : new Size(this.f72878c.width(), this.f72878c.height());
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x012e, code lost:
        if (r0 != androidx.camera.view.PreviewView.EnumC0105d.FIT_END) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x019c  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Matrix m2697c(android.util.Size r8, int r9) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1758e.p1776d.C26136u.m2697c(android.util.Size, int):android.graphics.Matrix");
    }

    /* renamed from: d */
    public Matrix m2696d() {
        int i;
        MediaSessionCompat.m43187x(m2694f(), null);
        RectF rectF = new RectF(0.0f, 0.0f, this.f72876a.getWidth(), this.f72876a.getHeight());
        int i2 = this.f72880e;
        RectF rectF2 = C26111a0.f72835a;
        if (i2 == 0) {
            i = 0;
        } else if (i2 == 1) {
            i = 90;
        } else if (i2 == 2) {
            i = 180;
        } else if (i2 != 3) {
            throw new IllegalStateException(C22128a.m8611i2("Unexpected rotation value ", i2));
        } else {
            i = 270;
        }
        int i3 = -i;
        int i4 = i3;
        if (((C26116d) C26113a.m2705a(C26116d.class)) != null) {
            i4 = i3 + ((!C26116d.m2704a() || !this.f72881f) ? 0 : 180);
        }
        return C26111a0.m2707a(rectF, rectF, i4);
    }

    /* renamed from: e */
    public final RectF m2695e(Size size, int i) {
        MediaSessionCompat.m43187x(m2694f(), null);
        Matrix m2697c = m2697c(size, i);
        RectF rectF = new RectF(0.0f, 0.0f, this.f72876a.getWidth(), this.f72876a.getHeight());
        m2697c.mapRect(rectF);
        return rectF;
    }

    /* renamed from: f */
    public final boolean m2694f() {
        return (this.f72877b == null || this.f72876a == null) ? false : true;
    }
}
