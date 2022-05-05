package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
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
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/SingleDateSelector.class */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new Parcelable.Creator<SingleDateSelector>() { // from class: com.google.android.material.datepicker.SingleDateSelector.2
        @NonNull
        /* renamed from: a */
        public SingleDateSelector createFromParcel(@NonNull Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.f10622f = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @NonNull
        /* renamed from: b */
        public SingleDateSelector[] newArray(int i) {
            return new SingleDateSelector[i];
        }
    };
    @Nullable

    /* renamed from: f */
    private Long f10622f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m9869c() {
        this.f10622f = null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: N */
    public View mo9874N(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull final OnSelectionChangedListener<Long> onSelectionChangedListener) {
        View inflate = layoutInflater.inflate(C1027R.layout.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(C1027R.C1030id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (ManufacturerUtils.m9547a()) {
            editText.setInputType(17);
        }
        SimpleDateFormat l = UtcDates.m9842l();
        String m = UtcDates.m9841m(inflate.getResources(), l);
        Long l2 = this.f10622f;
        if (l2 != null) {
            editText.setText(l.format(l2));
        }
        editText.addTextChangedListener(new DateFormatTextWatcher(m, l, textInputLayout, calendarConstraints) { // from class: com.google.android.material.datepicker.SingleDateSelector.1
            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            /* renamed from: a */
            void mo9862a() {
                onSelectionChangedListener.mo9890a();
            }

            @Override // com.google.android.material.datepicker.DateFormatTextWatcher
            /* renamed from: b */
            void mo9861b(@Nullable Long l3) {
                if (l3 == null) {
                    SingleDateSelector.this.m9869c();
                } else {
                    SingleDateSelector.this.mo9865o0(l3.longValue());
                }
                onSelectionChangedListener.mo9889b(SingleDateSelector.this.mo9866i0());
            }
        });
        ViewUtils.m9425k(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: V */
    public int mo9873V(Context context) {
        return MaterialAttributes.m9396c(context, C1027R.attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: Z */
    public boolean mo9872Z() {
        return this.f10622f != null;
    }

    @Nullable
    /* renamed from: d */
    public Long mo9866i0() {
        return this.f10622f;
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
        Long l = this.f10622f;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* renamed from: o0 */
    public void mo9865o0(long j) {
        this.f10622f = Long.valueOf(j);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    /* renamed from: p */
    public String mo9864p(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l = this.f10622f;
        if (l == null) {
            return resources.getString(C1027R.string.mtrl_picker_date_header_unselected);
        }
        return resources.getString(C1027R.string.mtrl_picker_date_header_selected, DateStrings.m9979i(l.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    /* renamed from: t */
    public Collection<Pair<Long, Long>> mo9863t() {
        return new ArrayList();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeValue(this.f10622f);
    }
}
