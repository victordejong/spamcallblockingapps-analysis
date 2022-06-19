package com.google.android.material.datepicker;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14646k;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.datepicker.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/c.class */
public abstract class AbstractC14514c extends C14646k {

    /* renamed from: a */
    private final TextInputLayout f52966a;

    /* renamed from: b */
    private final DateFormat f52967b;

    /* renamed from: c */
    private final CalendarConstraints f52968c;

    /* renamed from: d */
    private final String f52969d;

    /* renamed from: e */
    private final Runnable f52970e;

    /* renamed from: f */
    private Runnable f52971f;

    public AbstractC14514c(final String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f52967b = dateFormat;
        this.f52966a = textInputLayout;
        this.f52968c = calendarConstraints;
        this.f52969d = textInputLayout.getContext().getString(C14376a.C14386j.mtrl_picker_out_of_range);
        this.f52970e = new Runnable() { // from class: com.google.android.material.datepicker.c.1
            @Override // java.lang.Runnable
            public final void run() {
                TextInputLayout textInputLayout2 = AbstractC14514c.this.f52966a;
                DateFormat dateFormat2 = AbstractC14514c.this.f52967b;
                Context context = textInputLayout2.getContext();
                String string = context.getString(C14376a.C14386j.mtrl_picker_invalid_format);
                String format = String.format(context.getString(C14376a.C14386j.mtrl_picker_invalid_format_use), str);
                String format2 = String.format(context.getString(C14376a.C14386j.mtrl_picker_invalid_format_example), dateFormat2.format(new Date(C14548o.m10797a().getTimeInMillis())));
                textInputLayout2.setError(string + StringUtils.f67179LF + format + StringUtils.f67179LF + format2);
                AbstractC14514c.this.mo10857a();
            }
        };
    }

    /* renamed from: a */
    private static void m10856a(View view, Runnable runnable) {
        view.postDelayed(runnable, 1000L);
    }

    /* renamed from: a */
    void mo10857a() {
    }

    /* renamed from: a */
    abstract void mo10854a(Long l);

    @Override // com.google.android.material.internal.C14646k, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f52966a.removeCallbacks(this.f52970e);
        this.f52966a.removeCallbacks(this.f52971f);
        this.f52966a.setError(null);
        mo10854a((Long) null);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        try {
            Date parse = this.f52967b.parse(charSequence.toString());
            this.f52966a.setError(null);
            final long time = parse.getTime();
            if (this.f52968c.getDateValidator().isValid(time) && this.f52968c.isWithinBounds(time)) {
                mo10854a(Long.valueOf(parse.getTime()));
                return;
            }
            Runnable runnable = new Runnable() { // from class: com.google.android.material.datepicker.c.2
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC14514c.this.f52966a.setError(String.format(AbstractC14514c.this.f52969d, C14517d.m10851a(time, (SimpleDateFormat) null)));
                    AbstractC14514c.this.mo10857a();
                }
            };
            this.f52971f = runnable;
            m10856a(this.f52966a, runnable);
        } catch (ParseException e) {
            m10856a(this.f52966a, this.f52970e);
        }
    }
}
