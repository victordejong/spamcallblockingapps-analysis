package androidx.databinding.adapters;

import android.widget.CalendarView;
import androidx.annotation.RestrictTo;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethods;
@InverseBindingMethods
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/CalendarViewBindingAdapter.class */
public class CalendarViewBindingAdapter {

    /* renamed from: androidx.databinding.adapters.CalendarViewBindingAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/databinding/adapters/CalendarViewBindingAdapter$1.class */
    final class C02751 implements CalendarView.OnDateChangeListener {

        /* renamed from: a */
        final /* synthetic */ CalendarView.OnDateChangeListener f3588a;

        /* renamed from: b */
        final /* synthetic */ InverseBindingListener f3589b;

        @Override // android.widget.CalendarView.OnDateChangeListener
        public void onSelectedDayChange(CalendarView calendarView, int i, int i2, int i3) {
            CalendarView.OnDateChangeListener onDateChangeListener = this.f3588a;
            if (onDateChangeListener != null) {
                onDateChangeListener.onSelectedDayChange(calendarView, i, i2, i3);
            }
            this.f3589b.m18673a();
        }
    }
}
