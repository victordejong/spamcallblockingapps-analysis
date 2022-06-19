package androidx.databinding;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$f.class */
public final class ViewDataBinding$f implements View.OnAttachStateChangeListener {
    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        ViewDataBinding.access$100(ViewDataBinding.getBinding(view)).run();
        view.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
