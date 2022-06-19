package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.MaterialCalendar;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1892h;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.datepicker.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/j.class */
public class C8115j extends RecyclerView.Adapter<C8117b> {

    /* renamed from: d */
    private final Context f36687d;

    /* renamed from: e */
    private final CalendarConstraints f36688e;

    /* renamed from: f */
    private final DateSelector<?> f36689f;

    /* renamed from: g */
    private final MaterialCalendar.AbstractC8091k f36690g;

    /* renamed from: h */
    private final int f36691h;

    /* renamed from: com.google.android.material.datepicker.j$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/j$a.class */
    public class C8116a implements AdapterView.OnItemClickListener {

        /* renamed from: d */
        final /* synthetic */ MaterialCalendarGridView f36692d;

        C8116a(MaterialCalendarGridView materialCalendarGridView) {
            C8115j.this = r4;
            this.f36692d = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (this.f36692d.getAdapter2().m4871n(i)) {
                C8115j.this.f36690g.mo4983a(this.f36692d.getAdapter2().getItem(i).longValue());
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.j$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/j$b.class */
    public static class C8117b extends RecyclerView.AbstractC0905b0 {

        /* renamed from: u */
        final TextView f36694u;

        /* renamed from: v */
        final MaterialCalendarGridView f36695v;

        C8117b(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(C1890f.month_title);
            this.f36694u = textView;
            C1679w.m29271s0(textView, true);
            this.f36695v = (MaterialCalendarGridView) linearLayout.findViewById(C1890f.month_grid);
            if (!z) {
                textView.setVisibility(8);
            }
        }
    }

    public C8115j(Context context, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints, MaterialCalendar.AbstractC8091k abstractC8091k) {
        Month m5025j = calendarConstraints.m5025j();
        Month m5028g = calendarConstraints.m5028g();
        Month m5026i = calendarConstraints.m5026i();
        if (m5025j.compareTo(m5026i) <= 0) {
            if (m5026i.compareTo(m5028g) > 0) {
                throw new IllegalArgumentException("currentPage cannot be after lastPage");
            }
            int i = C8114i.f36681d;
            int m4994p2 = MaterialCalendar.m4994p2(context);
            int m4994p22 = C8106f.m4909E2(context) ? MaterialCalendar.m4994p2(context) : 0;
            this.f36687d = context;
            this.f36691h = (i * m4994p2) + m4994p22;
            this.f36688e = calendarConstraints;
            this.f36689f = dateSelector;
            this.f36690g = abstractC8091k;
            m31959y(true);
            return;
        }
        throw new IllegalArgumentException("firstPage cannot be after currentPage");
    }

    /* renamed from: B */
    public Month m4869B(int i) {
        return this.f36688e.m5025j().m4969l(i);
    }

    /* renamed from: C */
    public CharSequence m4868C(int i) {
        return m4869B(i).m4971j(this.f36687d);
    }

    /* renamed from: D */
    public int m4867D(Month month) {
        return this.f36688e.m5025j().m4968m(month);
    }

    /* renamed from: E */
    public void mo4498p(C8117b c8117b, int i) {
        Month m4969l = this.f36688e.m5025j().m4969l(i);
        c8117b.f36694u.setText(m4969l.m4971j(c8117b.f4070b.getContext()));
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) c8117b.f36695v.findViewById(C1890f.month_grid);
        if (materialCalendarGridView.getAdapter2() == null || !m4969l.equals(materialCalendarGridView.getAdapter2().f36682e)) {
            C8114i c8114i = new C8114i(m4969l, this.f36689f, this.f36688e);
            materialCalendarGridView.setNumColumns(m4969l.f36604g);
            materialCalendarGridView.setAdapter((ListAdapter) c8114i);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter2().m4872m(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new C8116a(materialCalendarGridView));
    }

    /* renamed from: F */
    public C8117b mo4497r(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(C1892h.mtrl_calendar_month_labeled, viewGroup, false);
        if (C8106f.m4909E2(viewGroup.getContext())) {
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f36691h));
            return new C8117b(linearLayout, true);
        }
        return new C8117b(linearLayout, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public int mo4501d() {
        return this.f36688e.m5027h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public long mo4500e(int i) {
        return this.f36688e.m5025j().m4969l(i).m4970k();
    }
}
