package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.google.android.material.C1027R;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/RangeDateSelector.class */
public class RangeDateSelector implements DateSelector<Pair<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new Parcelable.Creator<RangeDateSelector>() { // from class: com.google.android.material.datepicker.RangeDateSelector.3
        @NonNull
        /* renamed from: a */
        public RangeDateSelector createFromParcel(@NonNull Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.f10610g = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.f10611h = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @NonNull
        /* renamed from: b */
        public RangeDateSelector[] newArray(int i) {
            return new RangeDateSelector[i];
        }
    };

    /* renamed from: f */
    private String f10609f;
    @Nullable

    /* renamed from: g */
    private Long f10610g = null;
    @Nullable

    /* renamed from: h */
    private Long f10611h = null;
    @Nullable

    /* renamed from: i */
    private Long f10612i = null;
    @Nullable

    /* renamed from: j */
    private Long f10613j = null;

    /* renamed from: f */
    private void m9881f(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.f10609f.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() != null && " ".contentEquals(textInputLayout2.getError())) {
            textInputLayout2.setError(null);
        }
    }

    /* renamed from: h */
    private boolean m9879h(long j, long j2) {
        return j <= j2;
    }

    /* renamed from: i */
    private void m9878i(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.f10609f);
        textInputLayout2.setError(" ");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m9877j(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull OnSelectionChangedListener<Pair<Long, Long>> onSelectionChangedListener) {
        Long l = this.f10612i;
        if (l == null || this.f10613j == null) {
            m9881f(textInputLayout, textInputLayout2);
            onSelectionChangedListener.mo9890a();
        } else if (m9879h(l.longValue(), this.f10613j.longValue())) {
            this.f10610g = this.f10612i;
            this.f10611h = this.f10613j;
            onSelectionChangedListener.mo9889b(mo9866i0());
        } else {
            m9878i(textInputLayout, textInputLayout2);
            onSelectionChangedListener.mo9890a();
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: N */
    public View mo9874N(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull final OnSelectionChangedListener<Pair<Long, Long>> onSelectionChangedListener) {
        View inflate = layoutInflater.inflate(C1027R.layout.mtrl_picker_text_input_date_range, viewGroup, false);
        final TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(C1027R.C1030id.mtrl_picker_text_input_range_start);
        final TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(C1027R.C1030id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (ManufacturerUtils.m9547a()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f10609f = inflate.getResources().getString(C1027R.string.mtrl_picker_invalid_range);
        SimpleDateFormat l = UtcDates.m9842l();
        Long l2 = this.f10610g;
        if (l2 != null) {
            editText.setText(l.format(l2));
            this.f10612i = this.f10610g;
        }
        Long l3 = this.f10611h;
        if (l3 != null) {
            editText2.setText(l.format(l3));
            this.f10613j = this.f10611h;
        }
        String m = UtcDates.m9841m(inflate.getResources(), l);
        editText.addTextChangedListener(new DateFormatTextWatcher(m, l, textInputLayout, calendarConstraints) { // from class: com.google.android.material.datepicker.RangeDateSelector.1
            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            /* renamed from: a */
            void mo9862a() {
                RangeDateSelector.this.f10612i = null;
                RangeDateSelector.this.m9877j(textInputLayout, textInputLayout2, onSelectionChangedListener);
            }

            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            /* renamed from: b */
            void mo9861b(@Nullable Long l4) {
                RangeDateSelector.this.f10612i = l4;
                RangeDateSelector.this.m9877j(textInputLayout, textInputLayout2, onSelectionChangedListener);
            }
        });
        editText2.addTextChangedListener(new DateFormatTextWatcher(m, l, textInputLayout2, calendarConstraints) { // from class: com.google.android.material.datepicker.RangeDateSelector.2
            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            /* renamed from: a */
            void mo9862a() {
                RangeDateSelector.this.f10613j = null;
                RangeDateSelector.this.m9877j(textInputLayout, textInputLayout2, onSelectionChangedListener);
            }

            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            /* renamed from: b */
            void mo9861b(@Nullable Long l4) {
                RangeDateSelector.this.f10613j = l4;
                RangeDateSelector.this.m9877j(textInputLayout, textInputLayout2, onSelectionChangedListener);
            }
        });
        ViewUtils.m9425k(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: V */
    public int mo9873V(@NonNull Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return MaterialAttributes.m9396c(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(C1027R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? C1027R.attr.materialCalendarTheme : C1027R.attr.materialCalendarFullscreenTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: Z */
    public boolean mo9872Z() {
        Long l = this.f10610g;
        return (l == null || this.f10611h == null || !m9879h(l.longValue(), this.f10611h.longValue())) ? false : true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    /* renamed from: e0 */
    public Collection<Long> mo9867e0() {
        ArrayList arrayList = new ArrayList();
        Long l = this.f10610g;
        if (l != null) {
            arrayList.add(l);
        }
        Long l2 = this.f10611h;
        if (l2 != null) {
            arrayList.add(l2);
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: g */
    public Pair<Long, Long> mo9866i0() {
        return new Pair<>(this.f10610g, this.f10611h);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: o0 */
    public void mo9865o0(long j) {
        Long l = this.f10610g;
        if (l == null) {
            this.f10610g = Long.valueOf(j);
        } else if (this.f10611h != null || !m9879h(l.longValue(), j)) {
            this.f10611h = null;
            this.f10610g = Long.valueOf(j);
        } else {
            this.f10611h = Long.valueOf(j);
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    /* renamed from: p */
    public String mo9864p(@NonNull Context context) {
        Resources resources = context.getResources();
        if (this.f10610g == null && this.f10611h == null) {
            return resources.getString(C1027R.string.mtrl_picker_range_header_unselected);
        }
        Long l = this.f10611h;
        if (l == null) {
            return resources.getString(C1027R.string.mtrl_picker_range_header_only_start_selected, DateStrings.m9985c(this.f10610g.longValue()));
        }
        Long l2 = this.f10610g;
        if (l2 == null) {
            return resources.getString(C1027R.string.mtrl_picker_range_header_only_end_selected, DateStrings.m9985c(l.longValue()));
        }
        Pair<String, String> a = DateStrings.m9987a(l2, l);
        return resources.getString(C1027R.string.mtrl_picker_range_header_selected, a.f3206a, a.f3207b);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    /* renamed from: t */
    public Collection<Pair<Long, Long>> mo9863t() {
        if (this.f10610g == null || this.f10611h == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(this.f10610g, this.f10611h));
        return arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeValue(this.f10610g);
        parcel.writeValue(this.f10611h);
    }
}
