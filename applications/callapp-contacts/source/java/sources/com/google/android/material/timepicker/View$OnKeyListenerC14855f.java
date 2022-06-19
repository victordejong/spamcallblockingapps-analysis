package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
/* renamed from: com.google.android.material.timepicker.f */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/f.class */
final class View$OnKeyListenerC14855f implements View.OnKeyListener, TextView.OnEditorActionListener {

    /* renamed from: a */
    final ChipTextInputComboView f54247a;

    /* renamed from: b */
    final ChipTextInputComboView f54248b;

    /* renamed from: c */
    private final TimeModel f54249c;

    /* renamed from: d */
    private boolean f54250d = false;

    public View$OnKeyListenerC14855f(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, TimeModel timeModel) {
        this.f54247a = chipTextInputComboView;
        this.f54248b = chipTextInputComboView2;
        this.f54249c = timeModel;
    }

    /* renamed from: a */
    private void m9864a(int i) {
        this.f54248b.setChecked(i == 12);
        this.f54247a.setChecked(i == 10);
        this.f54249c.selection = i;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z = i == 5;
        if (z) {
            m9864a(12);
        }
        return z;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (this.f54250d) {
            return false;
        }
        boolean z = true;
        this.f54250d = true;
        EditText editText = (EditText) view;
        if (this.f54249c.selection == 12) {
            if (i == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText())) {
                m9864a(10);
                this.f54250d = false;
                return z;
            }
            z = false;
            this.f54250d = false;
            return z;
        }
        Editable text = editText.getText();
        if (text != null) {
            if (i >= 7 && i <= 16 && keyEvent.getAction() == 1 && editText.getSelectionStart() == 2 && text.length() == 2) {
                m9864a(12);
                this.f54250d = false;
                return z;
            }
        }
        z = false;
        this.f54250d = false;
        return z;
    }
}
