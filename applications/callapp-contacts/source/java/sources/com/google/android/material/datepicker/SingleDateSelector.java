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
import androidx.core.p036e.C0828b;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14620c;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/SingleDateSelector.class */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new Parcelable.Creator<SingleDateSelector>() { // from class: com.google.android.material.datepicker.SingleDateSelector.2
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ SingleDateSelector createFromParcel(Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.selectedItem = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ SingleDateSelector[] newArray(int i) {
            return new SingleDateSelector[i];
        }
    };
    private Long selectedItem;

    public void clearSelection() {
        this.selectedItem = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultThemeResId(Context context) {
        return C14597b.m10657a(context, C14376a.C14378b.materialCalendarTheme, C14532g.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return C14376a.C14386j.mtrl_picker_date_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection<Long> getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l = this.selectedItem;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection<C0828b<Long, Long>> getSelectedRanges() {
        return new ArrayList();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Long getSelection() {
        return this.selectedItem;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public String getSelectionDisplayString(Context context) {
        Resources resources = context.getResources();
        Long l = this.selectedItem;
        if (l == null) {
            return resources.getString(C14376a.C14386j.mtrl_picker_date_header_unselected);
        }
        return resources.getString(C14376a.C14386j.mtrl_picker_date_header_selected, C14517d.m10850a(l.longValue(), Locale.getDefault()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        return this.selectedItem != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, final AbstractC14543k<Long> abstractC14543k) {
        View inflate = layoutInflater.inflate(C14376a.C14384h.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(C14376a.C14382f.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.f54005a;
        if (C14620c.m10554b()) {
            editText.setInputType(17);
        }
        SimpleDateFormat m10786c = C14548o.m10786c();
        String m10794a = C14548o.m10794a(inflate.getResources(), m10786c);
        textInputLayout.setPlaceholderText(m10794a);
        Long l = this.selectedItem;
        if (l != null) {
            editText.setText(m10786c.format(l));
        }
        editText.addTextChangedListener(new AbstractC14514c(m10794a, m10786c, textInputLayout, calendarConstraints) { // from class: com.google.android.material.datepicker.SingleDateSelector.1
            @Override // com.google.android.material.datepicker.AbstractC14514c
            /* renamed from: a */
            final void mo10857a() {
                abstractC14543k.mo10804a();
            }

            @Override // com.google.android.material.datepicker.AbstractC14514c
            /* renamed from: a */
            final void mo10854a(Long l2) {
                if (l2 == null) {
                    SingleDateSelector.this.clearSelection();
                } else {
                    SingleDateSelector.this.select(l2.longValue());
                }
                abstractC14543k.mo10803a(SingleDateSelector.this.getSelection());
            }
        });
        C14654r.m10495b(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j) {
        this.selectedItem = Long.valueOf(j);
    }

    public void setSelection(Long l) {
        this.selectedItem = l == null ? null : Long.valueOf(C14548o.m10795a(l.longValue()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.selectedItem);
    }
}
