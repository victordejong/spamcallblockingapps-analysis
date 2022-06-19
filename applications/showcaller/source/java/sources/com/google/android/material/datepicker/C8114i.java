package com.google.android.material.datepicker;

import android.content.Context;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Collection;
import java.util.Iterator;
/* renamed from: com.google.android.material.datepicker.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/i.class */
public class C8114i extends BaseAdapter {

    /* renamed from: d */
    static final int f36681d = C8123o.m4839q().getMaximum(4);

    /* renamed from: e */
    final Month f36682e;

    /* renamed from: f */
    final DateSelector<?> f36683f;

    /* renamed from: g */
    private Collection<Long> f36684g;

    /* renamed from: h */
    C8100b f36685h;

    /* renamed from: i */
    final CalendarConstraints f36686i;

    public C8114i(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints) {
        this.f36682e = month;
        this.f36683f = dateSelector;
        this.f36686i = calendarConstraints;
        this.f36684g = dateSelector.mo4950W();
    }

    /* renamed from: e */
    private void m4880e(Context context) {
        if (this.f36685h == null) {
            this.f36685h = new C8100b(context);
        }
    }

    /* renamed from: h */
    private boolean m4877h(long j) {
        Iterator<Long> it = this.f36683f.mo4950W().iterator();
        while (it.hasNext()) {
            if (C8123o.m4855a(j) == C8123o.m4855a(it.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    private void m4874k(TextView textView, long j) {
        C8099a c8099a;
        if (textView == null) {
            return;
        }
        if (this.f36686i.m5029f().mo5011R(j)) {
            textView.setEnabled(true);
            c8099a = m4877h(j) ? this.f36685h.f36632b : C8123o.m4841o().getTimeInMillis() == j ? this.f36685h.f36633c : this.f36685h.f36631a;
        } else {
            textView.setEnabled(false);
            c8099a = this.f36685h.f36637g;
        }
        c8099a.m4936d(textView);
    }

    /* renamed from: l */
    private void m4873l(MaterialCalendarGridView materialCalendarGridView, long j) {
        if (Month.m4976e(j).equals(this.f36682e)) {
            m4874k((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter2().m4884a(this.f36682e.m4972i(j)) - materialCalendarGridView.getFirstVisiblePosition()), j);
        }
    }

    /* renamed from: a */
    public int m4884a(int i) {
        return m4883b() + (i - 1);
    }

    /* renamed from: b */
    public int m4883b() {
        return this.f36682e.m4974g();
    }

    /* renamed from: c */
    public Long getItem(int i) {
        if (i < this.f36682e.m4974g() || i > m4876i()) {
            return null;
        }
        return Long.valueOf(this.f36682e.m4973h(m4875j(i)));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c9  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.widget.TextView getView(int r9, android.view.View r10, android.view.ViewGroup r11) {
        /*
            r8 = this;
            r0 = r8
            r1 = r11
            android.content.Context r1 = r1.getContext()
            r0.m4880e(r1)
            r0 = r10
            android.widget.TextView r0 = (android.widget.TextView) r0
            r12 = r0
            r0 = r10
            if (r0 != 0) goto L26
            r0 = r11
            android.content.Context r0 = r0.getContext()
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            int r1 = p078c.p084c.p085a.p096b.C1892h.mtrl_calendar_day
            r2 = r11
            r3 = 0
            android.view.View r0 = r0.inflate(r1, r2, r3)
            android.widget.TextView r0 = (android.widget.TextView) r0
            r12 = r0
        L26:
            r0 = r9
            r1 = r8
            int r1 = r1.m4883b()
            int r0 = r0 - r1
            r13 = r0
            r0 = r13
            if (r0 < 0) goto Laf
            r0 = r8
            com.google.android.material.datepicker.Month r0 = r0.f36682e
            r10 = r0
            r0 = r13
            r1 = r10
            int r1 = r1.f36605h
            if (r0 < r1) goto L44
            goto Laf
        L44:
            int r13 = r13 + 1
            r0 = r12
            r1 = r10
            r0.setTag(r1)
            r0 = r12
            r1 = r12
            android.content.res.Resources r1 = r1.getResources()
            android.content.res.Configuration r1 = r1.getConfiguration()
            java.util.Locale r1 = r1.locale
            java.lang.String r2 = "%d"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r13
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r4[r5] = r6
            java.lang.String r1 = java.lang.String.format(r1, r2, r3)
            r0.setText(r1)
            r0 = r8
            com.google.android.material.datepicker.Month r0 = r0.f36682e
            r1 = r13
            long r0 = r0.m4973h(r1)
            r14 = r0
            r0 = r8
            com.google.android.material.datepicker.Month r0 = r0.f36682e
            int r0 = r0.f36603f
            com.google.android.material.datepicker.Month r1 = com.google.android.material.datepicker.Month.m4975f()
            int r1 = r1.f36603f
            if (r0 != r1) goto L96
            r0 = r12
            r1 = r14
            java.lang.String r1 = com.google.android.material.datepicker.C8104d.m4922g(r1)
            r0.setContentDescription(r1)
            goto La0
        L96:
            r0 = r12
            r1 = r14
            java.lang.String r1 = com.google.android.material.datepicker.C8104d.m4917l(r1)
            r0.setContentDescription(r1)
        La0:
            r0 = r12
            r1 = 0
            r0.setVisibility(r1)
            r0 = r12
            r1 = 1
            r0.setEnabled(r1)
            goto Lbc
        Laf:
            r0 = r12
            r1 = 8
            r0.setVisibility(r1)
            r0 = r12
            r1 = 0
            r0.setEnabled(r1)
        Lbc:
            r0 = r8
            r1 = r9
            java.lang.Long r0 = r0.getItem(r1)
            r10 = r0
            r0 = r10
            if (r0 != 0) goto Lc9
            r0 = r12
            return r0
        Lc9:
            r0 = r8
            r1 = r12
            r2 = r10
            long r2 = r2.longValue()
            r0.m4874k(r1, r2)
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.C8114i.getView(int, android.view.View, android.view.ViewGroup):android.widget.TextView");
    }

    /* renamed from: f */
    public boolean m4879f(int i) {
        return i % this.f36682e.f36604g == 0;
    }

    /* renamed from: g */
    public boolean m4878g(int i) {
        boolean z = true;
        if ((i + 1) % this.f36682e.f36604g != 0) {
            z = false;
        }
        return z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f36682e.f36605h + m4883b();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f36682e.f36604g;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    /* renamed from: i */
    public int m4876i() {
        return (this.f36682e.m4974g() + this.f36682e.f36605h) - 1;
    }

    /* renamed from: j */
    int m4875j(int i) {
        return (i - this.f36682e.m4974g()) + 1;
    }

    /* renamed from: m */
    public void m4872m(MaterialCalendarGridView materialCalendarGridView) {
        for (Long l : this.f36684g) {
            m4873l(materialCalendarGridView, l.longValue());
        }
        DateSelector<?> dateSelector = this.f36683f;
        if (dateSelector != null) {
            for (Long l2 : dateSelector.mo4950W()) {
                m4873l(materialCalendarGridView, l2.longValue());
            }
            this.f36684g = this.f36683f.mo4950W();
        }
    }

    /* renamed from: n */
    public boolean m4871n(int i) {
        return i >= m4883b() && i <= m4876i();
    }
}
