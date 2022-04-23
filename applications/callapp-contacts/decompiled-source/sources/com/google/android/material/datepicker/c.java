package com.google.android.material.datepicker;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.a;
import com.google.android.material.internal.k;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/c.class */
abstract class c extends k {

    /* renamed from: a  reason: collision with root package name */
    private final TextInputLayout f30427a;

    /* renamed from: b  reason: collision with root package name */
    private final DateFormat f30428b;

    /* renamed from: c  reason: collision with root package name */
    private final CalendarConstraints f30429c;

    /* renamed from: d  reason: collision with root package name */
    private final String f30430d;
    private final Runnable e;
    private Runnable f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(final String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f30428b = dateFormat;
        this.f30427a = textInputLayout;
        this.f30429c = calendarConstraints;
        this.f30430d = textInputLayout.getContext().getString(a.j.mtrl_picker_out_of_range);
        this.e = new Runnable() { // from class: com.google.android.material.datepicker.c.1
            @Override // java.lang.Runnable
            public final void run() {
                TextInputLayout textInputLayout2 = c.this.f30427a;
                DateFormat dateFormat2 = c.this.f30428b;
                Context context = textInputLayout2.getContext();
                String string = context.getString(a.j.mtrl_picker_invalid_format);
                String format = String.format(context.getString(a.j.mtrl_picker_invalid_format_use), str);
                String format2 = String.format(context.getString(a.j.mtrl_picker_invalid_format_example), dateFormat2.format(new Date(o.a().getTimeInMillis())));
                textInputLayout2.setError(string + StringUtils.LF + format + StringUtils.LF + format2);
                c.this.a();
            }
        };
    }

    private static void a(View view, Runnable runnable) {
        view.postDelayed(runnable, 1000L);
    }

    void a() {
    }

    abstract void a(Long l);

    @Override // com.google.android.material.internal.k, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f30427a.removeCallbacks(this.e);
        this.f30427a.removeCallbacks(this.f);
        this.f30427a.setError(null);
        a((Long) null);
        if (!TextUtils.isEmpty(charSequence)) {
            try {
                Date parse = this.f30428b.parse(charSequence.toString());
                this.f30427a.setError(null);
                final long time = parse.getTime();
                if (!this.f30429c.getDateValidator().isValid(time) || !this.f30429c.isWithinBounds(time)) {
                    Runnable runnable = new Runnable() { // from class: com.google.android.material.datepicker.c.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            c.this.f30427a.setError(String.format(c.this.f30430d, d.a(time, (SimpleDateFormat) null)));
                            c.this.a();
                        }
                    };
                    this.f = runnable;
                    a(this.f30427a, runnable);
                    return;
                }
                a(Long.valueOf(parse.getTime()));
            } catch (ParseException e) {
                a(this.f30427a, this.e);
            }
        }
    }
}
