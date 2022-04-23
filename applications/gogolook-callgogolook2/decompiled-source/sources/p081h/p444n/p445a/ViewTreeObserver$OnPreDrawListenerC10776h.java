package p081h.p444n.p445a;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
/* renamed from: h.n.a.h */
/* loaded from: classes2-dex2jar.jar:h/n/a/h.class */
public class ViewTreeObserver$OnPreDrawListenerC10776h implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final C10814y f24596a;
    @VisibleForTesting

    /* renamed from: b */
    public final WeakReference<ImageView> f24597b;
    @VisibleForTesting

    /* renamed from: c */
    public AbstractC10769e f24598c;

    public ViewTreeObserver$OnPreDrawListenerC10776h(C10814y yVar, ImageView imageView, AbstractC10769e eVar) {
        this.f24596a = yVar;
        this.f24597b = new WeakReference<>(imageView);
        this.f24598c = eVar;
        imageView.addOnAttachStateChangeListener(this);
        if (imageView.getWindowToken() != null) {
            onViewAttachedToWindow(imageView);
        }
    }

    /* renamed from: a */
    public void m10659a() {
        this.f24596a.m10576a();
        this.f24598c = null;
        ImageView imageView = this.f24597b.get();
        if (imageView != null) {
            this.f24597b.clear();
            imageView.removeOnAttachStateChangeListener(this);
            ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.f24597b.get();
        if (imageView == null) {
            return true;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        int width = imageView.getWidth();
        int height = imageView.getHeight();
        if (width <= 0 || height <= 0) {
            return true;
        }
        imageView.removeOnAttachStateChangeListener(this);
        viewTreeObserver.removeOnPreDrawListener(this);
        this.f24597b.clear();
        C10814y yVar = this.f24596a;
        yVar.m10567d();
        yVar.m10575a(width, height);
        yVar.m10571a(imageView, this.f24598c);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        view.getViewTreeObserver().addOnPreDrawListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        view.getViewTreeObserver().removeOnPreDrawListener(this);
    }
}
