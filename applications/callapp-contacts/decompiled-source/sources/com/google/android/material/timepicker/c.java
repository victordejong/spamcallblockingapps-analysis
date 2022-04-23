package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/timepicker/c.class */
final class c implements InputFilter {

    /* renamed from: a  reason: collision with root package name */
    private int f30979a;

    public c(int i) {
        this.f30979a = i;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i3, i4, charSequence.subSequence(i, i2).toString());
            if (Integer.parseInt(sb.toString()) <= this.f30979a) {
                return null;
            }
            return "";
        } catch (NumberFormatException e) {
            return "";
        }
    }
}
