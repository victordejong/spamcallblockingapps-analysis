package p107g9;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* renamed from: g9.h */
/* loaded from: classes2-dex2jar.jar:g9/h.class */
public class ViewTreeObserver$OnPreDrawListenerC2935h implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final C2967w f9883a;

    /* renamed from: b */
    public final WeakReference<ImageView> f9884b;

    /* renamed from: c */
    public AbstractC2932e f9885c;

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.f9884b.get();
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
        this.f9884b.clear();
        C2967w c2967w = this.f9883a;
        Objects.requireNonNull(c2967w);
        c2967w.f9981b.m2810a(width, height);
        c2967w.m2808b(imageView, this.f9885c);
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
