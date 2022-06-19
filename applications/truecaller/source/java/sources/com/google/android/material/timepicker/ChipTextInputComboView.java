package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.C2080R;
import com.google.android.material.chip.Chip;
import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/timepicker/ChipTextInputComboView.class */
public class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: a */
    public final Chip f6960a;

    /* renamed from: b */
    public final TextInputLayout f6961b;

    /* renamed from: c */
    public final EditText f6962c;

    /* renamed from: d */
    public TextWatcher f6963d;

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater from = LayoutInflater.from(context);
        View view = (Chip) from.inflate(C2080R.layout.material_time_chip, (ViewGroup) this, false);
        this.f6960a = view;
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(C2080R.layout.material_time_input, (ViewGroup) this, false);
        this.f6961b = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f6962c = editText;
        editText.setVisibility(4);
        b bVar = new b(this, (C2122a) null);
        this.f6963d = bVar;
        editText.addTextChangedListener(bVar);
        m38327b();
        addView(view);
        addView(textInputLayout);
        TextView textView = (TextView) findViewById(C2080R.C2082id.material_label);
        editText.setSaveEnabled(false);
    }

    /* renamed from: a */
    public static String m38328a(ChipTextInputComboView chipTextInputComboView, CharSequence charSequence) {
        return String.format(chipTextInputComboView.getResources().getConfiguration().locale, "%02d", Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    /* renamed from: b */
    public final void m38327b() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f6962c.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f6960a.isChecked();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m38327b();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.f6960a.setChecked(z);
        this.f6962c.setVisibility(z ? 0 : 4);
        Chip chip = this.f6960a;
        int i = 0;
        if (z) {
            i = 8;
        }
        chip.setVisibility(i);
        if (isChecked()) {
            this.f6962c.requestFocus();
            if (TextUtils.isEmpty(this.f6962c.getText())) {
                return;
            }
            EditText editText = this.f6962c;
            editText.setSelection(editText.getText().length());
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f6960a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.f6960a.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f6960a.toggle();
    }
}
