package p1727n3.p1758e.p1776d;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.util.Size;
import android.view.Display;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import p1727n3.p1758e.p1767b.C25910f1;
import p1727n3.p1758e.p1767b.C26103y0;
/* renamed from: n3.e.d.v */
/* loaded from: classes-dex2jar.jar:n3/e/d/v.class */
public abstract class AbstractC26137v {

    /* renamed from: a */
    public Size f72883a;

    /* renamed from: b */
    public FrameLayout f72884b;

    /* renamed from: c */
    public final C26136u f72885c;

    /* renamed from: d */
    public boolean f72886d = false;

    /* renamed from: n3.e.d.v$a */
    /* loaded from: classes-dex2jar.jar:n3/e/d/v$a.class */
    public interface AbstractC26138a {
    }

    public AbstractC26137v(FrameLayout frameLayout, C26136u c26136u) {
        this.f72884b = frameLayout;
        this.f72885c = c26136u;
    }

    /* renamed from: a */
    public abstract View mo2688a();

    /* renamed from: b */
    public abstract Bitmap mo2687b();

    /* renamed from: c */
    public abstract void mo2686c();

    /* renamed from: d */
    public abstract void mo2685d();

    /* renamed from: e */
    public abstract void mo2684e(C25910f1 c25910f1, AbstractC26138a abstractC26138a);

    /* renamed from: f */
    public void m2693f() {
        View mo2688a = mo2688a();
        if (mo2688a == null || !this.f72886d) {
            return;
        }
        C26136u c26136u = this.f72885c;
        Size size = new Size(this.f72884b.getWidth(), this.f72884b.getHeight());
        int layoutDirection = this.f72884b.getLayoutDirection();
        Objects.requireNonNull(c26136u);
        if (size.getHeight() == 0 || size.getWidth() == 0) {
            C26103y0.m2720e("PreviewTransform", "Transform not applied due to PreviewView size: " + size, null);
        } else if (!c26136u.m2694f()) {
        } else {
            if (mo2688a instanceof TextureView) {
                ((TextureView) mo2688a).setTransform(c26136u.m2696d());
            } else {
                Display display = mo2688a.getDisplay();
                if (display != null && display.getRotation() != c26136u.f72880e) {
                    C26103y0.m2723b("PreviewTransform", "Non-display rotation not supported with SurfaceView / PERFORMANCE mode.", null);
                }
            }
            RectF m2695e = c26136u.m2695e(size, layoutDirection);
            mo2688a.setPivotX(0.0f);
            mo2688a.setPivotY(0.0f);
            mo2688a.setScaleX(m2695e.width() / c26136u.f72876a.getWidth());
            mo2688a.setScaleY(m2695e.height() / c26136u.f72876a.getHeight());
            mo2688a.setTranslationX(m2695e.left - mo2688a.getLeft());
            mo2688a.setTranslationY(m2695e.top - mo2688a.getTop());
        }
    }

    /* renamed from: g */
    public abstract ListenableFuture<Void> mo2683g();
}
