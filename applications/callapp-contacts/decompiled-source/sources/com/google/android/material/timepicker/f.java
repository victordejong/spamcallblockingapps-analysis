package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/f.class */
final class f implements View.OnKeyListener, TextView.OnEditorActionListener {

    /* renamed from: a  reason: collision with root package name */
    final ChipTextInputComboView f30984a;

    /* renamed from: b  reason: collision with root package name */
    final ChipTextInputComboView f30985b;

    /* renamed from: c  reason: collision with root package name */
    private final TimeModel f30986c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30987d = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, TimeModel timeModel) {
        this.f30984a = chipTextInputComboView;
        this.f30985b = chipTextInputComboView2;
        this.f30986c = timeModel;
    }

    private void a(int i) {
        boolean z = true;
        this.f30985b.setChecked(i == 12);
        ChipTextInputComboView chipTextInputComboView = this.f30984a;
        if (i != 10) {
            z = false;
        }
        chipTextInputComboView.setChecked(z);
        this.f30986c.selection = i;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z = i == 5;
        if (z) {
            a(12);
        }
        return z;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (this.f30987d) {
            return false;
        }
        boolean z = true;
        this.f30987d = true;
        EditText editText = (EditText) view;
        if (this.f30986c.selection == 12) {
            if (i == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText())) {
                a(10);
                this.f30987d = false;
                return z;
            }
            z = false;
            this.f30987d = false;
            return z;
        }
        Editable text = editText.getText();
        if (text != null) {
            if (i >= 7 && i <= 16 && keyEvent.getAction() == 1 && editText.getSelectionStart() == 2 && text.length() == 2) {
                a(12);
                this.f30987d = false;
                return z;
            }
        }
        z = false;
        this.f30987d = false;
        return z;
    }
}
