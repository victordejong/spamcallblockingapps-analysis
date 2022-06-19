package com.google.android.material.datepicker;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.internal.C8202k;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import p078c.p084c.p085a.p096b.C1894j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.datepicker.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/c.class */
public abstract class AbstractC8101c extends C8202k {

    /* renamed from: d */
    private final TextInputLayout f36639d;

    /* renamed from: e */
    private final DateFormat f36640e;

    /* renamed from: f */
    private final CalendarConstraints f36641f;

    /* renamed from: g */
    private final String f36642g;

    /* renamed from: h */
    private final Runnable f36643h;

    /* renamed from: i */
    private Runnable f36644i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.datepicker.c$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/c$a.class */
    public class RunnableC8102a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ String f36645d;

        RunnableC8102a(String str) {
            AbstractC8101c.this = r4;
            this.f36645d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout textInputLayout = AbstractC8101c.this.f36639d;
            DateFormat dateFormat = AbstractC8101c.this.f36640e;
            Context context = textInputLayout.getContext();
            String string = context.getString(C1894j.mtrl_picker_invalid_format);
            String format = String.format(context.getString(C1894j.mtrl_picker_invalid_format_use), this.f36645d);
            String format2 = String.format(context.getString(C1894j.mtrl_picker_invalid_format_example), dateFormat.format(new Date(C8123o.m4841o().getTimeInMillis())));
            textInputLayout.setError(string + "\n" + format + "\n" + format2);
            AbstractC8101c.this.mo4931e();
        }
    }

    /* renamed from: com.google.android.material.datepicker.c$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/c$b.class */
    public class RunnableC8103b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ long f36647d;

        RunnableC8103b(long j) {
            AbstractC8101c.this = r5;
            this.f36647d = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC8101c.this.f36639d.setError(String.format(AbstractC8101c.this.f36642g, C8104d.m4926c(this.f36647d)));
            AbstractC8101c.this.mo4931e();
        }
    }

    public AbstractC8101c(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f36640e = dateFormat;
        this.f36639d = textInputLayout;
        this.f36641f = calendarConstraints;
        this.f36642g = textInputLayout.getContext().getString(C1894j.mtrl_picker_out_of_range);
        this.f36643h = new RunnableC8102a(str);
    }

    /* renamed from: d */
    private Runnable m4932d(long j) {
        return new RunnableC8103b(j);
    }

    /* renamed from: e */
    abstract void mo4931e();

    /* renamed from: f */
    abstract void mo4930f(Long l);

    /* renamed from: g */
    public void m4929g(View view, Runnable runnable) {
        view.postDelayed(runnable, 1000L);
    }

    @Override // com.google.android.material.internal.C8202k, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f36639d.removeCallbacks(this.f36643h);
        this.f36639d.removeCallbacks(this.f36644i);
        this.f36639d.setError(null);
        mo4930f(null);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        try {
            Date parse = this.f36640e.parse(charSequence.toString());
            this.f36639d.setError(null);
            long time = parse.getTime();
            if (this.f36641f.m5029f().mo5011R(time) && this.f36641f.m5023l(time)) {
                mo4930f(Long.valueOf(parse.getTime()));
                return;
            }
            Runnable m4932d = m4932d(time);
            this.f36644i = m4932d;
            m4929g(this.f36639d, m4932d);
        } catch (ParseException e) {
            m4929g(this.f36639d, this.f36643h);
        }
    }
}
