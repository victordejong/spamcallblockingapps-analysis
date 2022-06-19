package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;
/* renamed from: com.google.android.material.timepicker.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/timepicker/a.class */
class C8346a implements InputFilter {

    /* renamed from: a */
    private int f37612a;

    public C8346a(int i) {
        this.f37612a = i;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i3, i4, charSequence.subSequence(i, i2).toString());
            if (Integer.parseInt(sb.toString()) > this.f37612a) {
                return "";
            }
            return null;
        } catch (NumberFormatException e) {
            return "";
        }
    }
}
