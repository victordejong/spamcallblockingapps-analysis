package androidx.databinding.adapters;

import android.widget.NumberPicker;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;
@BindingMethods
@InverseBindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/NumberPickerBindingAdapter.class */
public class NumberPickerBindingAdapter {

    /* renamed from: androidx.databinding.adapters.NumberPickerBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/NumberPickerBindingAdapter$1.class */
    final class C02781 implements NumberPicker.OnValueChangeListener {

        /* renamed from: a */
        final /* synthetic */ NumberPicker.OnValueChangeListener f3596a;

        /* renamed from: b */
        final /* synthetic */ InverseBindingListener f3597b;

        @Override // android.widget.NumberPicker.OnValueChangeListener
        public void onValueChange(NumberPicker numberPicker, int i, int i2) {
            NumberPicker.OnValueChangeListener onValueChangeListener = this.f3596a;
            if (onValueChangeListener != null) {
                onValueChangeListener.onValueChange(numberPicker, i, i2);
            }
            this.f3597b.m18673a();
        }
    }
}
