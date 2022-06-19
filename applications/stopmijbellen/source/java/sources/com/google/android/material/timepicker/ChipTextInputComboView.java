package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.chip.Chip;
import com.google.android.material.textfield.TextInputLayout;
import p262v3.C4633o;
import p262v3.RunnableC4635q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/ChipTextInputComboView.class */
public class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: a */
    public final Chip f6893a;

    /* renamed from: b */
    public final EditText f6894b;

    /* renamed from: com.google.android.material.timepicker.ChipTextInputComboView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/ChipTextInputComboView$b.class */
    public class C1831b extends C4633o {
        public C1831b(C1830a c1830a) {
            ChipTextInputComboView.this = r4;
        }

        @Override // p262v3.C4633o, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView chipTextInputComboView = ChipTextInputComboView.this;
                chipTextInputComboView.f6893a.setText(ChipTextInputComboView.m4500a(chipTextInputComboView, "00"));
                return;
            }
            ChipTextInputComboView chipTextInputComboView2 = ChipTextInputComboView.this;
            chipTextInputComboView2.f6893a.setText(ChipTextInputComboView.m4500a(chipTextInputComboView2, editable));
        }
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(2131492980, (ViewGroup) this, false);
        this.f6893a = chip;
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(2131492981, (ViewGroup) this, false);
        EditText editText = textInputLayout.getEditText();
        this.f6894b = editText;
        editText.setVisibility(4);
        editText.addTextChangedListener(new C1831b(null));
        m4499b();
        addView(chip);
        addView(textInputLayout);
        TextView textView = (TextView) findViewById(2131296757);
        editText.setSaveEnabled(false);
    }

    /* renamed from: a */
    public static String m4500a(ChipTextInputComboView chipTextInputComboView, CharSequence charSequence) {
        return String.format(chipTextInputComboView.getResources().getConfiguration().locale, "%02d", Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    /* renamed from: b */
    public final void m4499b() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f6894b.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f6893a.isChecked();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m4499b();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.f6893a.setChecked(z);
        this.f6894b.setVisibility(z ? 0 : 4);
        Chip chip = this.f6893a;
        int i = 0;
        if (z) {
            i = 8;
        }
        chip.setVisibility(i);
        if (isChecked()) {
            EditText editText = this.f6894b;
            editText.requestFocus();
            editText.post(new RunnableC4635q(editText));
            if (TextUtils.isEmpty(this.f6894b.getText())) {
                return;
            }
            EditText editText2 = this.f6894b;
            editText2.setSelection(editText2.getText().length());
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f6893a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.f6893a.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f6893a.toggle();
    }
}
