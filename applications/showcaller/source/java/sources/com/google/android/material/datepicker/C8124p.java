package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.MaterialCalendar;
import java.util.Calendar;
import java.util.Locale;
import p078c.p084c.p085a.p096b.C1892h;
import p078c.p084c.p085a.p096b.C1894j;
/* renamed from: com.google.android.material.datepicker.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/p.class */
public class C8124p extends RecyclerView.Adapter<C8126b> {

    /* renamed from: d */
    private final MaterialCalendar<?> f36702d;

    /* renamed from: com.google.android.material.datepicker.p$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/p$a.class */
    public class View$OnClickListenerC8125a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ int f36703d;

        View$OnClickListenerC8125a(int i) {
            C8124p.this = r4;
            this.f36703d = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C8124p.this.f36702d.m4990t2(C8124p.this.f36702d.m4998l2().m5030e(Month.m4977d(this.f36703d, C8124p.this.f36702d.m4996n2().f36602e)));
            C8124p.this.f36702d.m4989u2(MaterialCalendar.CalendarSelector.DAY);
        }
    }

    /* renamed from: com.google.android.material.datepicker.p$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/p$b.class */
    public static class C8126b extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        final TextView f36705u;

        C8126b(TextView textView) {
            super(textView);
            this.f36705u = textView;
        }
    }

    public C8124p(MaterialCalendar<?> materialCalendar) {
        this.f36702d = materialCalendar;
    }

    /* renamed from: B */
    private View.OnClickListener m4833B(int i) {
        return new View$OnClickListenerC8125a(i);
    }

    /* renamed from: C */
    public int m4832C(int i) {
        return i - this.f36702d.m4998l2().m5025j().f36603f;
    }

    /* renamed from: D */
    int m4831D(int i) {
        return this.f36702d.m4998l2().m5025j().f36603f + i;
    }

    /* renamed from: E */
    public void mo4498p(C8126b c8126b, int i) {
        int m4831D = m4831D(i);
        String string = c8126b.f36705u.getContext().getString(C1894j.mtrl_picker_navigate_to_year_description);
        c8126b.f36705u.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(m4831D)));
        c8126b.f36705u.setContentDescription(String.format(string, Integer.valueOf(m4831D)));
        C8100b m4997m2 = this.f36702d.m4997m2();
        Calendar m4841o = C8123o.m4841o();
        C8099a c8099a = m4841o.get(1) == m4831D ? m4997m2.f36636f : m4997m2.f36634d;
        for (Long l : this.f36702d.m4995o2().mo4950W()) {
            m4841o.setTimeInMillis(l.longValue());
            if (m4841o.get(1) == m4831D) {
                c8099a = m4997m2.f36635e;
            }
        }
        c8099a.m4936d(c8126b.f36705u);
        c8126b.f36705u.setOnClickListener(m4833B(m4831D));
    }

    /* renamed from: F */
    public C8126b mo4497r(ViewGroup viewGroup, int i) {
        return new C8126b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C1892h.mtrl_calendar_year, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public int mo4501d() {
        return this.f36702d.m4998l2().m5024k();
    }
}
