package androidx.databinding.adapters;

import android.widget.RadioGroup;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;
@InverseBindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/RadioGroupBindingAdapter.class */
public class RadioGroupBindingAdapter {

    /* renamed from: androidx.databinding.adapters.RadioGroupBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/RadioGroupBindingAdapter$1.class */
    final class C02801 implements RadioGroup.OnCheckedChangeListener {

        /* renamed from: a */
        final /* synthetic */ RadioGroup.OnCheckedChangeListener f3605a;

        /* renamed from: b */
        final /* synthetic */ InverseBindingListener f3606b;

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            RadioGroup.OnCheckedChangeListener onCheckedChangeListener = this.f3605a;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(radioGroup, i);
            }
            this.f3606b.m18673a();
        }
    }
}
