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
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.core.content.C0790b;
import com.google.android.material.C14376a;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.C14646k;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.timepicker.TimePickerView;
import java.lang.reflect.Field;
import java.util.Locale;
/* renamed from: com.google.android.material.timepicker.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/g.class */
public final class C14856g implements TimePickerView.AbstractC14845c, AbstractC14854e {

    /* renamed from: a */
    final TimeModel f54251a;

    /* renamed from: b */
    final ChipTextInputComboView f54252b;

    /* renamed from: c */
    final ChipTextInputComboView f54253c;

    /* renamed from: d */
    private final LinearLayout f54254d;

    /* renamed from: e */
    private final TextWatcher f54255e = new C14646k() { // from class: com.google.android.material.timepicker.g.1
        @Override // com.google.android.material.internal.C14646k, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    C14856g.this.f54251a.setMinute(0);
                    return;
                }
                C14856g.this.f54251a.setMinute(Integer.parseInt(editable.toString()));
            } catch (NumberFormatException e) {
            }
        }
    };

    /* renamed from: f */
    private final TextWatcher f54256f = new C14646k() { // from class: com.google.android.material.timepicker.g.2
        @Override // com.google.android.material.internal.C14646k, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    C14856g.this.f54251a.setHour(0);
                    return;
                }
                C14856g.this.f54251a.setHour(Integer.parseInt(editable.toString()));
            } catch (NumberFormatException e) {
            }
        }
    };

    /* renamed from: g */
    private final View$OnKeyListenerC14855f f54257g;

    /* renamed from: h */
    private final EditText f54258h;

    /* renamed from: i */
    private final EditText f54259i;

    /* renamed from: j */
    private MaterialButtonToggleGroup f54260j;

    public C14856g(LinearLayout linearLayout, TimeModel timeModel) {
        this.f54254d = linearLayout;
        this.f54251a = timeModel;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(C14376a.C14382f.material_minute_text_input);
        this.f54252b = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(C14376a.C14382f.material_hour_text_input);
        this.f54253c = chipTextInputComboView2;
        ((TextView) chipTextInputComboView.findViewById(C14376a.C14382f.material_label)).setText(resources.getString(C14376a.C14386j.material_timepicker_minute));
        ((TextView) chipTextInputComboView2.findViewById(C14376a.C14382f.material_label)).setText(resources.getString(C14376a.C14386j.material_timepicker_hour));
        chipTextInputComboView.setTag(C14376a.C14382f.selection_type, 12);
        chipTextInputComboView2.setTag(C14376a.C14382f.selection_type, 10);
        if (timeModel.format == 0) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) linearLayout.findViewById(C14376a.C14382f.material_clock_period_toggle);
            this.f54260j = materialButtonToggleGroup;
            materialButtonToggleGroup.m11054a(new MaterialButtonToggleGroup.AbstractC14470c() { // from class: com.google.android.material.timepicker.g.4
                @Override // com.google.android.material.button.MaterialButtonToggleGroup.AbstractC14470c
                /* renamed from: a */
                public final void mo9853a(int i, boolean z) {
                    C14856g.this.f54251a.setPeriod(i == C14376a.C14382f.material_clock_period_pm_button ? 1 : 0);
                }
            });
            this.f54260j.setVisibility(0);
            m9854g();
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.material.timepicker.g.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C14856g.this.mo9862a(((Integer) view.getTag(C14376a.C14382f.selection_type)).intValue());
            }
        };
        chipTextInputComboView2.setOnClickListener(onClickListener);
        chipTextInputComboView.setOnClickListener(onClickListener);
        chipTextInputComboView2.m9921a(timeModel.getHourInputValidator());
        chipTextInputComboView.m9921a(timeModel.getMinuteInputValidator());
        EditText editText = chipTextInputComboView2.f54160a.f54005a;
        this.f54258h = editText;
        EditText editText2 = chipTextInputComboView.f54160a.f54005a;
        this.f54259i = editText2;
        if (Build.VERSION.SDK_INT < 21) {
            int m10655a = C14597b.m10655a(linearLayout, C14376a.C14378b.colorPrimary);
            m9861a(editText, m10655a);
            m9861a(editText2, m10655a);
        }
        View$OnKeyListenerC14855f view$OnKeyListenerC14855f = new View$OnKeyListenerC14855f(chipTextInputComboView2, chipTextInputComboView, timeModel);
        this.f54257g = view$OnKeyListenerC14855f;
        chipTextInputComboView2.m9920a(new C14846a(linearLayout.getContext(), C14376a.C14386j.material_hour_selection));
        chipTextInputComboView.m9920a(new C14846a(linearLayout.getContext(), C14376a.C14386j.material_minute_selection));
        m9856e();
        m9860a(timeModel);
        TextInputLayout textInputLayout = view$OnKeyListenerC14855f.f54247a.f54160a;
        TextInputLayout textInputLayout2 = view$OnKeyListenerC14855f.f54248b.f54160a;
        EditText editText3 = textInputLayout.f54005a;
        EditText editText4 = textInputLayout2.f54005a;
        editText3.setImeOptions(268435461);
        editText4.setImeOptions(268435462);
        editText3.setOnEditorActionListener(view$OnKeyListenerC14855f);
        editText3.setOnKeyListener(view$OnKeyListenerC14855f);
        editText4.setOnKeyListener(view$OnKeyListenerC14855f);
    }

    /* renamed from: a */
    private static void m9861a(EditText editText, int i) {
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
            Drawable m46374b = C0153a.m46374b(context, i2);
            m46374b.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            declaredField3.set(obj, new Drawable[]{m46374b, m46374b});
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    private void m9860a(TimeModel timeModel) {
        m9855f();
        Locale locale = this.f54254d.getResources().getConfiguration().locale;
        String format = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.minute));
        String format2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.getHourForDisplay()));
        this.f54252b.m9917a(format);
        this.f54253c.m9917a(format2);
        m9856e();
        m9854g();
    }

    /* renamed from: e */
    private void m9856e() {
        this.f54258h.addTextChangedListener(this.f54256f);
        this.f54259i.addTextChangedListener(this.f54255e);
    }

    /* renamed from: f */
    private void m9855f() {
        this.f54258h.removeTextChangedListener(this.f54256f);
        this.f54259i.removeTextChangedListener(this.f54255e);
    }

    /* renamed from: g */
    private void m9854g() {
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f54260j;
        if (materialButtonToggleGroup == null) {
            return;
        }
        materialButtonToggleGroup.m11058a(this.f54251a.period == 0 ? C14376a.C14382f.material_clock_period_am_button : C14376a.C14382f.material_clock_period_pm_button);
    }

    @Override // com.google.android.material.timepicker.AbstractC14854e
    /* renamed from: a */
    public final void mo9863a() {
        m9860a(this.f54251a);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.AbstractC14845c
    /* renamed from: a */
    public final void mo9862a(int i) {
        this.f54251a.selection = i;
        this.f54252b.setChecked(i == 12);
        this.f54253c.setChecked(i == 10);
        m9854g();
    }

    @Override // com.google.android.material.timepicker.AbstractC14854e
    /* renamed from: b */
    public final void mo9859b() {
        this.f54254d.setVisibility(0);
    }

    @Override // com.google.android.material.timepicker.AbstractC14854e
    /* renamed from: c */
    public final void mo9858c() {
        View focusedChild = this.f54254d.getFocusedChild();
        if (focusedChild == null) {
            this.f54254d.setVisibility(8);
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) C0790b.m44499a(this.f54254d.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(focusedChild.getWindowToken(), 0);
        }
        this.f54254d.setVisibility(8);
    }

    /* renamed from: d */
    public final void m9857d() {
        this.f54252b.setChecked(false);
        this.f54253c.setChecked(false);
    }
}
