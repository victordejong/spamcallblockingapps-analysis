package com.android.contacts.datepicker;

import android.widget.NumberPicker;
import java.text.DecimalFormatSymbols;
import java.util.Formatter;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/datepicker/b.class */
public final class b implements NumberPicker.Formatter {

    /* renamed from: b  reason: collision with root package name */
    char f812b;
    Formatter c;

    /* renamed from: a  reason: collision with root package name */
    final StringBuilder f811a = new StringBuilder();
    final Object[] d = new Object[1];

    public b() {
        a(Locale.getDefault());
    }

    private void a(Locale locale) {
        this.c = new Formatter(this.f811a, locale);
        this.f812b = DecimalFormatSymbols.getInstance(locale).getZeroDigit();
    }

    @Override // android.widget.NumberPicker.Formatter
    public final String format(int i) {
        Locale locale = Locale.getDefault();
        if (this.f812b != DecimalFormatSymbols.getInstance(locale).getZeroDigit()) {
            a(locale);
        }
        this.d[0] = Integer.valueOf(i);
        this.f811a.delete(0, this.f811a.length());
        this.c.format("%02d", this.d);
        return this.c.toString();
    }
}
