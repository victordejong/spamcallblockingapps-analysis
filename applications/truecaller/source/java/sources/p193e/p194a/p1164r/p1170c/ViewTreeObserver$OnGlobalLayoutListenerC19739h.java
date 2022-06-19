package p193e.p194a.p1164r.p1170c;

import android.view.View;
import android.view.ViewTreeObserver;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.r.c.h */
/* loaded from: classes16-dex2jar.jar:e/a/r/c/h.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC19739h implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    public boolean f54779a;

    /* renamed from: b */
    public final View f54780b;

    /* renamed from: c */
    public final AbstractC19738g f54781c;

    public ViewTreeObserver$OnGlobalLayoutListenerC19739h(View view, AbstractC19738g abstractC19738g) {
        l.e(view, ViewAction.VIEW);
        l.e(abstractC19738g, "listener");
        this.f54780b = view;
        this.f54781c = abstractC19738g;
        view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        view.addOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        View rootView = this.f54780b.getRootView();
        l.d(rootView, "view.rootView");
        float height = rootView.getHeight();
        if ((height - this.f54780b.getHeight()) / height > 0.2f) {
            if (!this.f54779a) {
                this.f54781c.mo12922Iq();
            }
            this.f54779a = true;
        } else if (!this.f54779a) {
        } else {
            this.f54781c.mo12921Ys();
            this.f54779a = false;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        l.e(view, "v");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        l.e(view, "v");
        this.f54780b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.f54780b.removeOnAttachStateChangeListener(this);
    }
}
