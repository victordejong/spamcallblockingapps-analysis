package androidx.databinding.adapters;

import android.widget.RatingBar;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;
@InverseBindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/RatingBarBindingAdapter.class */
public class RatingBarBindingAdapter {

    /* renamed from: androidx.databinding.adapters.RatingBarBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/RatingBarBindingAdapter$1.class */
    final class C02811 implements RatingBar.OnRatingBarChangeListener {

        /* renamed from: a */
        final /* synthetic */ RatingBar.OnRatingBarChangeListener f3607a;

        /* renamed from: b */
        final /* synthetic */ InverseBindingListener f3608b;

        @Override // android.widget.RatingBar.OnRatingBarChangeListener
        public void onRatingChanged(RatingBar ratingBar, float f, boolean z) {
            RatingBar.OnRatingBarChangeListener onRatingBarChangeListener = this.f3607a;
            if (onRatingBarChangeListener != null) {
                onRatingBarChangeListener.onRatingChanged(ratingBar, f, z);
            }
            this.f3608b.m18673a();
        }
    }
}
