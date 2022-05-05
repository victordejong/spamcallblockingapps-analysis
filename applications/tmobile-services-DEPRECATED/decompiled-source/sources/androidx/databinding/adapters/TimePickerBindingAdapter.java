package androidx.databinding.adapters;

import android.widget.TimePicker;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/TimePickerBindingAdapter.class */
public class TimePickerBindingAdapter {

    /* renamed from: androidx.databinding.adapters.TimePickerBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/TimePickerBindingAdapter$1.class */
    final class C02871 implements TimePicker.OnTimeChangedListener {

        /* renamed from: f */
        final /* synthetic */ TimePicker.OnTimeChangedListener f3623f;

        /* renamed from: g */
        final /* synthetic */ InverseBindingListener f3624g;

        /* renamed from: h */
        final /* synthetic */ InverseBindingListener f3625h;

        @Override // android.widget.TimePicker.OnTimeChangedListener
        public void onTimeChanged(TimePicker timePicker, int i, int i2) {
            TimePicker.OnTimeChangedListener onTimeChangedListener = this.f3623f;
            if (onTimeChangedListener != null) {
                onTimeChangedListener.onTimeChanged(timePicker, i, i2);
            }
            InverseBindingListener inverseBindingListener = this.f3624g;
            if (inverseBindingListener != null) {
                inverseBindingListener.m18673a();
            }
            InverseBindingListener inverseBindingListener2 = this.f3625h;
            if (inverseBindingListener2 != null) {
                inverseBindingListener2.m18673a();
            }
        }
    }
}
