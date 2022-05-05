package androidx.databinding.adapters;

import android.annotation.TargetApi;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
@BindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewBindingAdapter.class */
public class ViewBindingAdapter {

    /* renamed from: androidx.databinding.adapters.ViewBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewBindingAdapter$1.class */
    final class View$OnAttachStateChangeListenerC02881 implements View.OnAttachStateChangeListener {

        /* renamed from: f */
        final /* synthetic */ OnViewAttachedToWindow f3626f;

        /* renamed from: g */
        final /* synthetic */ OnViewDetachedFromWindow f3627g;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            OnViewAttachedToWindow onViewAttachedToWindow = this.f3626f;
            if (onViewAttachedToWindow != null) {
                onViewAttachedToWindow.onViewAttachedToWindow(view);
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            OnViewDetachedFromWindow onViewDetachedFromWindow = this.f3627g;
            if (onViewDetachedFromWindow != null) {
                onViewDetachedFromWindow.onViewDetachedFromWindow(view);
            }
        }
    }

    @TargetApi(12)
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow.class */
    public interface OnViewAttachedToWindow {
        void onViewAttachedToWindow(View view);
    }

    @TargetApi(12)
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow.class */
    public interface OnViewDetachedFromWindow {
        void onViewDetachedFromWindow(View view);
    }
}
