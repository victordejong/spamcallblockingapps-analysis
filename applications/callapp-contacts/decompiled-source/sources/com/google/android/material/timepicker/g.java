package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.a;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.h.b;
import com.google.android.material.internal.k;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.timepicker.TimePickerView;
import java.lang.reflect.Field;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/g.class */
public final class g implements TimePickerView.c, e {

    /* renamed from: a  reason: collision with root package name */
    final TimeModel f30988a;

    /* renamed from: b  reason: collision with root package name */
    final ChipTextInputComboView f30989b;

    /* renamed from: c  reason: collision with root package name */
    final ChipTextInputComboView f30990c;

    /* renamed from: d  reason: collision with root package name */
    private final LinearLayout f30991d;
    private final TextWatcher e = new k() { // from class: com.google.android.material.timepicker.g.1
        @Override // com.google.android.material.internal.k, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    g.this.f30988a.setMinute(0);
                    return;
                }
                g.this.f30988a.setMinute(Integer.parseInt(editable.toString()));
            } catch (NumberFormatException e) {
            }
        }
    };
    private final TextWatcher f = new k() { // from class: com.google.android.material.timepicker.g.2
        @Override // com.google.android.material.internal.k, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    g.this.f30988a.setHour(0);
                    return;
                }
                g.this.f30988a.setHour(Integer.parseInt(editable.toString()));
            } catch (NumberFormatException e) {
            }
        }
    };
    private final f g;
    private final EditText h;
    private final EditText i;
    private MaterialButtonToggleGroup j;

    public g(LinearLayout linearLayout, TimeModel timeModel) {
        this.f30991d = linearLayout;
        this.f30988a = timeModel;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(a.f.material_minute_text_input);
        this.f30989b = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(a.f.material_hour_text_input);
        this.f30990c = chipTextInputComboView2;
        ((TextView) chipTextInputComboView.findViewById(a.f.material_label)).setText(resources.getString(a.j.material_timepicker_minute));
        ((TextView) chipTextInputComboView2.findViewById(a.f.material_label)).setText(resources.getString(a.j.material_timepicker_hour));
        chipTextInputComboView.setTag(a.f.selection_type, 12);
        chipTextInputComboView2.setTag(a.f.selection_type, 10);
        if (timeModel.format == 0) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) linearLayout.findViewById(a.f.material_clock_period_toggle);
            this.j = materialButtonToggleGroup;
            materialButtonToggleGroup.a(new MaterialButtonToggleGroup.c() { // from class: com.google.android.material.timepicker.g.4
                @Override // com.google.android.material.button.MaterialButtonToggleGroup.c
                public final void a(int i, boolean z) {
                    g.this.f30988a.setPeriod(i == a.f.material_clock_period_pm_button ? 1 : 0);
                }
            });
            this.j.setVisibility(0);
            g();
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.material.timepicker.g.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.this.a(((Integer) view.getTag(a.f.selection_type)).intValue());
            }
        };
        chipTextInputComboView2.setOnClickListener(onClickListener);
        chipTextInputComboView.setOnClickListener(onClickListener);
        chipTextInputComboView2.a(timeModel.getHourInputValidator());
        chipTextInputComboView.a(timeModel.getMinuteInputValidator());
        EditText editText = chipTextInputComboView2.f30942a.f30880a;
        this.h = editText;
        EditText editText2 = chipTextInputComboView.f30942a.f30880a;
        this.i = editText2;
        if (Build.VERSION.SDK_INT < 21) {
            int a2 = b.a(linearLayout, a.b.colorPrimary);
            a(editText, a2);
            a(editText2, a2);
        }
        f fVar = new f(chipTextInputComboView2, chipTextInputComboView, timeModel);
        this.g = fVar;
        chipTextInputComboView2.a(new a(linearLayout.getContext(), a.j.material_hour_selection));
        chipTextInputComboView.a(new a(linearLayout.getContext(), a.j.material_minute_selection));
        e();
        a(timeModel);
        TextInputLayout textInputLayout = fVar.f30984a.f30942a;
        TextInputLayout textInputLayout2 = fVar.f30985b.f30942a;
        EditText editText3 = textInputLayout.f30880a;
        EditText editText4 = textInputLayout2.f30880a;
        editText3.setImeOptions(268435461);
        editText4.setImeOptions(268435462);
        editText3.setOnEditorActionListener(fVar);
        editText3.setOnKeyListener(fVar);
        editText4.setOnKeyListener(fVar);
    }

    private static void a(EditText editText, int i) {
        try {
            Context context = editText.getContext();
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            int i2 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField("mEditor");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
            declaredField3.setAccessible(true);
            Drawable b2 = androidx.appcompat.a.a.a.b(context, i2);
            b2.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            declaredField3.set(obj, new Drawable[]{b2, b2});
        } catch (Throwable th) {
        }
    }

    private void a(TimeModel timeModel) {
        f();
        Locale locale = this.f30991d.getResources().getConfiguration().locale;
        String format = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.minute));
        String format2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.getHourForDisplay()));
        this.f30989b.a(format);
        this.f30990c.a(format2);
        e();
        g();
    }

    private void e() {
        this.h.addTextChangedListener(this.f);
        this.i.addTextChangedListener(this.e);
    }

    private void f() {
        this.h.removeTextChangedListener(this.f);
        this.i.removeTextChangedListener(this.e);
    }

    private void g() {
        MaterialButtonToggleGroup materialButtonToggleGroup = this.j;
        if (materialButtonToggleGroup != null) {
            materialButtonToggleGroup.a(this.f30988a.period == 0 ? a.f.material_clock_period_am_button : a.f.material_clock_period_pm_button);
        }
    }

    @Override // com.google.android.material.timepicker.e
    public final void a() {
        a(this.f30988a);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.c
    public final void a(int i) {
        this.f30988a.selection = i;
        boolean z = true;
        this.f30989b.setChecked(i == 12);
        ChipTextInputComboView chipTextInputComboView = this.f30990c;
        if (i != 10) {
            z = false;
        }
        chipTextInputComboView.setChecked(z);
        g();
    }

    @Override // com.google.android.material.timepicker.e
    public final void b() {
        this.f30991d.setVisibility(0);
    }

    @Override // com.google.android.material.timepicker.e
    public final void c() {
        View focusedChild = this.f30991d.getFocusedChild();
        if (focusedChild == null) {
            this.f30991d.setVisibility(8);
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) androidx.core.content.b.a(this.f30991d.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(focusedChild.getWindowToken(), 0);
        }
        this.f30991d.setVisibility(8);
    }

    public final void d() {
        this.f30989b.setChecked(false);
        this.f30990c.setChecked(false);
    }
}
