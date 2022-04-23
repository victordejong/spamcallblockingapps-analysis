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
import androidx.core.e.b;
import androidx.core.e.d;
import com.google.android.material.a;
import com.google.android.material.internal.c;
import com.google.android.material.internal.r;
import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/RangeDateSelector.class */
public class RangeDateSelector implements DateSelector<b<Long, Long>> {
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
        if (textInputLayout.d() != null && this.invalidRangeStartError.contentEquals(textInputLayout.d())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.d() != null && StringUtils.SPACE.contentEquals(textInputLayout2.d())) {
            textInputLayout2.setError(null);
        }
    }

    private boolean isValidRange(long j, long j2) {
        return j <= j2;
    }

    private void setInvalidRange(TextInputLayout textInputLayout, TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.invalidRangeStartError);
        textInputLayout2.setError(StringUtils.SPACE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIfValidTextProposal(TextInputLayout textInputLayout, TextInputLayout textInputLayout2, k<b<Long, Long>> kVar) {
        Long l = this.proposedTextStart;
        if (l == null || this.proposedTextEnd == null) {
            clearInvalidRange(textInputLayout, textInputLayout2);
            kVar.a();
        } else if (isValidRange(l.longValue(), this.proposedTextEnd.longValue())) {
            this.selectedStartItem = this.proposedTextStart;
            this.selectedEndItem = this.proposedTextEnd;
            kVar.a(getSelection());
        } else {
            setInvalidRange(textInputLayout, textInputLayout2);
            kVar.a();
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
        return com.google.android.material.h.b.a(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(a.d.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? a.b.materialCalendarTheme : a.b.materialCalendarFullscreenTheme, g.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return a.j.mtrl_picker_range_header_title;
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
    public Collection<b<Long, Long>> getSelectedRanges() {
        if (this.selectedStartItem == null || this.selectedEndItem == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b(this.selectedStartItem, this.selectedEndItem));
        return arrayList;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.material.datepicker.DateSelector
    public b<Long, Long> getSelection() {
        return new b<>(this.selectedStartItem, this.selectedEndItem);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public String getSelectionDisplayString(Context context) {
        b bVar;
        Resources resources = context.getResources();
        Long l = this.selectedStartItem;
        if (l == null && this.selectedEndItem == null) {
            return resources.getString(a.j.mtrl_picker_range_header_unselected);
        }
        Long l2 = this.selectedEndItem;
        if (l2 == null) {
            return resources.getString(a.j.mtrl_picker_range_header_only_start_selected, d.a(this.selectedStartItem.longValue(), (SimpleDateFormat) null));
        }
        if (l == null) {
            return resources.getString(a.j.mtrl_picker_range_header_only_end_selected, d.a(this.selectedEndItem.longValue(), (SimpleDateFormat) null));
        }
        if (l == null && l2 == null) {
            bVar = b.a(null, null);
        } else if (l == null) {
            bVar = b.a(null, d.a(l2.longValue(), (SimpleDateFormat) null));
        } else if (l2 == null) {
            bVar = b.a(d.a(l.longValue(), (SimpleDateFormat) null), null);
        } else {
            Calendar a2 = o.a();
            Calendar b2 = o.b();
            b2.setTimeInMillis(l.longValue());
            Calendar b3 = o.b();
            b3.setTimeInMillis(l2.longValue());
            bVar = b2.get(1) == b3.get(1) ? b2.get(1) == a2.get(1) ? b.a(d.b(l.longValue(), Locale.getDefault()), d.b(l2.longValue(), Locale.getDefault())) : b.a(d.b(l.longValue(), Locale.getDefault()), d.a(l2.longValue(), Locale.getDefault())) : b.a(d.a(l.longValue(), Locale.getDefault()), d.a(l2.longValue(), Locale.getDefault()));
        }
        return resources.getString(a.j.mtrl_picker_range_header_selected, bVar.f1889a, bVar.f1890b);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        Long l = this.selectedStartItem;
        return (l == null || this.selectedEndItem == null || !isValidRange(l.longValue(), this.selectedEndItem.longValue())) ? false : true;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, final k<b<Long, Long>> kVar) {
        View inflate = layoutInflater.inflate(a.h.mtrl_picker_text_input_date_range, viewGroup, false);
        final TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(a.f.mtrl_picker_text_input_range_start);
        final TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(a.f.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.f30880a;
        EditText editText2 = textInputLayout2.f30880a;
        if (c.b()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.invalidRangeStartError = inflate.getResources().getString(a.j.mtrl_picker_invalid_range);
        SimpleDateFormat c2 = o.c();
        Long l = this.selectedStartItem;
        if (l != null) {
            editText.setText(c2.format(l));
            this.proposedTextStart = this.selectedStartItem;
        }
        Long l2 = this.selectedEndItem;
        if (l2 != null) {
            editText2.setText(c2.format(l2));
            this.proposedTextEnd = this.selectedEndItem;
        }
        String a2 = o.a(inflate.getResources(), c2);
        textInputLayout.setPlaceholderText(a2);
        textInputLayout2.setPlaceholderText(a2);
        editText.addTextChangedListener(new c(a2, c2, textInputLayout, calendarConstraints) { // from class: com.google.android.material.datepicker.RangeDateSelector.1
            @Override // com.google.android.material.datepicker.c
            final void a() {
                RangeDateSelector.this.proposedTextStart = null;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, kVar);
            }

            @Override // com.google.android.material.datepicker.c
            final void a(Long l3) {
                RangeDateSelector.this.proposedTextStart = l3;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, kVar);
            }
        });
        editText2.addTextChangedListener(new c(a2, c2, textInputLayout2, calendarConstraints) { // from class: com.google.android.material.datepicker.RangeDateSelector.2
            @Override // com.google.android.material.datepicker.c
            final void a() {
                RangeDateSelector.this.proposedTextEnd = null;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, kVar);
            }

            @Override // com.google.android.material.datepicker.c
            final void a(Long l3) {
                RangeDateSelector.this.proposedTextEnd = l3;
                RangeDateSelector.this.updateIfValidTextProposal(textInputLayout, textInputLayout2, kVar);
            }
        });
        r.b(editText);
        return inflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j) {
        Long l = this.selectedStartItem;
        if (l == null) {
            this.selectedStartItem = Long.valueOf(j);
        } else if (this.selectedEndItem != null || !isValidRange(l.longValue(), j)) {
            this.selectedEndItem = null;
            this.selectedStartItem = Long.valueOf(j);
        } else {
            this.selectedEndItem = Long.valueOf(j);
        }
    }

    public void setSelection(b<Long, Long> bVar) {
        if (!(bVar.f1889a == null || bVar.f1890b == null)) {
            d.a(isValidRange(bVar.f1889a.longValue(), bVar.f1890b.longValue()));
        }
        Long l = bVar.f1889a;
        Long l2 = null;
        this.selectedStartItem = l == null ? null : Long.valueOf(o.a(bVar.f1889a.longValue()));
        if (bVar.f1890b != null) {
            l2 = Long.valueOf(o.a(bVar.f1890b.longValue()));
        }
        this.selectedEndItem = l2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.selectedStartItem);
        parcel.writeValue(this.selectedEndItem);
    }
}
