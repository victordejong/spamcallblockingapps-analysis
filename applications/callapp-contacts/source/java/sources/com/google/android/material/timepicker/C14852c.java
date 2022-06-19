package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;
/* renamed from: com.google.android.material.timepicker.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/c.class */
final class C14852c implements InputFilter {

    /* renamed from: a */
    private int f54238a;

    public C14852c(int i) {
        this.f54238a = i;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i3, i4, charSequence.subSequence(i, i2).toString());
            if (Integer.parseInt(sb.toString()) > this.f54238a) {
                return "";
            }
            return null;
        } catch (NumberFormatException e) {
            return "";
        }
    }
}
