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
import androidx.core.p036e.C0828b;
import androidx.core.p036e.C0833d;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14620c;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/RangeDateSelector.class */
public class RangeDateSelector implements DateSelector<C0828b<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new Parcelable.Creator<RangeDateSelector>() { // from class: com.google.android.material.datepicker.RangeDateSelector.3
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ RangeDateSelector createFromParcel(Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.selectedStartItem = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.selectedEndItem = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ RangeDateSelector[] newArray(int i) {
            return new RangeDateSelector[i];
        }
    };
    private String invalidRangeStartError;
    private final String invalidRangeEndError = StringUtils.SPACE;
    private Long selectedStartItem = null;
    private Long selectedEndItem = null;
    private Long proposedTextStart = null;
    private Long proposedTextEnd = null;

    private void clearInvalidRange(TextInputLayout textInputLayout, TextInputLayout textInputLayout2) {
        if (textInputLayout.m10015d() != null && this.invalidRangeStartError.contentEquals(textInputLayout.m10015d())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.m10015d() == null || !StringUtils.SPACE.contentEquals(textInputLayout2.m10015d())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    private boolean isValidRange(long j, long j2) {
        return j <= j2;
    }

    private void setInvalidRange(TextInputLayout textInputLayout, TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.invalidRangeStartError);
        textInputLayout2.setError(StringUtils.SPACE);
    }

    public void updateIfValidTextProposal(TextInputLayout textInputLayout, TextInputLayout textInputLayout2, AbstractC14543k<C0828b<Long, Long>> abstractC14543k) {
        Long l = this.proposedTextStart;
        if (l == null || this.proposedTextEnd == null) {
            clearInvalidRange(textInputLayout, textInputLayout2);
            abstractC14543k.mo10804a();
        } else if (!isValidRange(l.longValue(), this.proposedTextEnd.longValue())) {
            setInvalidRange(textInputLayout, textInputLayout2);
            abstractC14543k.mo10804a();
        } else {
            this.selectedStartItem = this.proposedTextStart;
            this.selectedEndItem = this.proposedTextEnd;
            abstractC14543k.mo10803a(getSelection());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultThemeResId(Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return C14597b.m10657a(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(C14376a.C14380d.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? C14376a.C14378b.materialCalendarTheme : C14376a.C14378b.materialCalendarFullscreenTheme, C14532g.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return C14376a.C14386j.mtrl_picker_range_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection<Long> getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l = this.selectedStartItem;
        if (l != null) {
            arrayList.add(l);
        }
        Long l2 = this.selectedEndItem;
        if (l2 != null) {
            arrayList.add(l2);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public Collection<C0828b<Long, Long>> getSelectedRanges() {
        if (this.selectedStartItem == null || this.selectedEndItem == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0828b(this.selectedStartItem, this.selectedEndItem));
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public C0828b<Long, Long> getSelection() {
        return new C0828b<>(this.selectedStartItem, this.selectedEndItem);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public String getSelectionDisplayString(Context context) {
        C0828b c0828b;
        Resources resources = context.getResources();
        Long l = this.selectedStartItem;
        if (l == null && this.selectedEndItem == null) {
            return resources.getString(C14376a.C14386j.mtrl_picker_range_header_unselected);
        }
        Long l2 = this.selectedEndItem;
        if (l2 == null) {
            return resources.getString(C14376a.C14386j.mtrl_picker_range_header_only_start_selected, C14517d.m10851a(this.selectedStartItem.longValue(), (SimpleDateFormat) null));
        }
        if (l == null) {
            return resources.getString(C14376a.C14386j.mtrl_picker_range_header_only_end_selected, C14517d.m10851a(this.selectedEndItem.longValue(), (SimpleDateFormat) null));
        }
        if (l == null && l2 == null) {
            c0828b = C0828b.m44412a(null, null);
        } else if (l == null) {
            c0828b = C0828b.m44412a(null, C14517d.m10851a(l2.longValue(), (SimpleDateFormat) null));
        } else if (l2 == null) {
            c0828b = C0828b.m44412a(C14517d.m10851a(l.longValue(), (SimpleDateFormat) null), null);
        } else {
            Calendar m10797a = C14548o.m10797a();
            Calendar m10789b = C14548o.m10789b();
            m10789b.setTimeInMillis(l.longValue());
            Calendar m10789b2 = C14548o.m10789b();
            m10789b2.setTimeInMillis(l2.longValue());
            c0828b = m10789b.get(1) == m10789b2.get(1) ? m10789b.get(1) == m10797a.get(1) ? C0828b.m44412a(C14517d.m10849b(l.longValue(), Locale.getDefault()), C14517d.m10849b(l2.longValue(), Locale.getDefault())) : C0828b.m44412a(C14517d.m10849b(l.longValue(), Locale.getDefault()), C14517d.m10850a(l2.longValue(), Locale.getDefault())) : C0828b.m44412a(C14517d.m10850a(l.longValue(), Locale.getDefault()), C14517d.m10850a(l2.longValue(), Locale.getDefault()));
        }
        return resources.getString(C14376a.C14386j.mtrl_picker_range_header_selected, c0828b.f3556a, c0828b.f3557b);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        Long l = this.selectedStartItem;
        return (l == null || this.selectedEndItem == null || !isValidRange(l.longValue(), this.selectedEndItem.longValue())) ? false : true;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, final AbstractC14543k<C0828b<Long, Long>> abstractC14543k) {
        View inflate = layoutInflater.inflate(C14376a.C14384h.mtrl_picker_text_input_date_range, viewGroup, false);
        final TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(C14376a.C14382f.mtrl_picker_text_input_range_start);
        final TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(C14376a.C14382f.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.f54005a;
        EditText editText2 = textInputLayout2.f54005a;
        if (C14620c.m10554b()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.invalidRangeStartError = inflate.getResources().getString(C14376a.C14386j.mtrl_picker_invalid_range);
        SimpleDateFormat m10786c = C14548o.m10786c();
        Long l = this.selectedStartItem;
        if (l != null) {
            editText.setText(m10786c.format(l));
            this.proposedTextStart = this.selectedStartItem;
        }
        Long l2 = this.selectedEndItem;
        if (l2 != null) {
            editText2.setText(m10786c.format(l2));
            this.proposedTextEnd = this.selectedEndItem;
        }
        String m10794a = C14548o.m10794a(inflate.getResources(), m10786c);
        textInputLayout.setPlaceholderText(m10794a);
        textInputLayout2.setPlaceholderText(m10794a);
        editText.addTextChangedListener(new AbstractC14514c(m10794a, m10786c, textInputLayout, calendarConstraints) { // from class: com.google.android.material.datepicker.RangeDateSelector.1
            @Override // com.google.android.material.datepicker.AbstractC14514c
            /* renamed from: a */
            final void mo10857a() {
                RangeDateSelector.this.proposedTextStart = null;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, abstractC14543k);
            }

            @Override // com.google.android.material.datepicker.AbstractC14514c
            /* renamed from: a */
            final void mo10854a(Long l3) {
                RangeDateSelector.this.proposedTextStart = l3;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, abstractC14543k);
            }
        });
        editText2.addTextChangedListener(new AbstractC14514c(m10794a, m10786c, textInputLayout2, calendarConstraints) { // from class: com.google.android.material.datepicker.RangeDateSelector.2
            @Override // com.google.android.material.datepicker.AbstractC14514c
            /* renamed from: a */
            final void mo10857a() {
                RangeDateSelector.this.proposedTextEnd = null;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, abstractC14543k);
            }

            @Override // com.google.android.material.datepicker.AbstractC14514c
            /* renamed from: a */
            final void mo10854a(Long l3) {
                RangeDateSelector.this.proposedTextEnd = l3;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, abstractC14543k);
            }
        });
        C14654r.m10495b(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j) {
        Long l = this.selectedStartItem;
        if (l == null) {
            this.selectedStartItem = Long.valueOf(j);
        } else if (this.selectedEndItem == null && isValidRange(l.longValue(), j)) {
            this.selectedEndItem = Long.valueOf(j);
        } else {
            this.selectedEndItem = null;
            this.selectedStartItem = Long.valueOf(j);
        }
    }

    public void setSelection(C0828b<Long, Long> c0828b) {
        if (c0828b.f3556a != null && c0828b.f3557b != null) {
            C0833d.m44408a(isValidRange(c0828b.f3556a.longValue(), c0828b.f3557b.longValue()));
        }
        this.selectedStartItem = c0828b.f3556a == null ? null : Long.valueOf(C14548o.m10795a(c0828b.f3556a.longValue()));
        this.selectedEndItem = c0828b.f3557b == null ? null : Long.valueOf(C14548o.m10795a(c0828b.f3557b.longValue()));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.selectedStartItem);
        parcel.writeValue(this.selectedEndItem);
    }
}
