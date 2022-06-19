package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.C0926v;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C14376a;
import com.google.android.material.datepicker.C14519f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.datepicker.j */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/j.class */
public final class C14540j extends RecyclerView.AbstractC2626a<C14542a> {

    /* renamed from: a */
    final Context f53049a;

    /* renamed from: b */
    final C14519f.AbstractC14531b f53050b;

    /* renamed from: c */
    private final CalendarConstraints f53051c;

    /* renamed from: d */
    private final DateSelector<?> f53052d;

    /* renamed from: e */
    private final int f53053e;

    /* renamed from: com.google.android.material.datepicker.j$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/j$a.class */
    public static final class C14542a extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        final TextView f53056r;

        /* renamed from: s */
        final MaterialCalendarGridView f53057s;

        C14542a(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(C14376a.C14382f.month_title);
            this.f53056r = textView;
            C0926v.m44148K(textView);
            this.f53057s = (MaterialCalendarGridView) linearLayout.findViewById(C14376a.C14382f.month_grid);
            if (!z) {
                textView.setVisibility(8);
            }
        }
    }

    public C14540j(Context context, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints, C14519f.AbstractC14531b abstractC14531b) {
        Month start = calendarConstraints.getStart();
        Month end = calendarConstraints.getEnd();
        Month openAt = calendarConstraints.getOpenAt();
        if (start.compareTo(openAt) <= 0) {
            if (openAt.compareTo(end) > 0) {
                throw new IllegalArgumentException("currentPage cannot be after lastPage");
            }
            int i = C14539i.f53043a;
            int m10845a = C14519f.m10845a(context);
            int m10845a2 = C14532g.m10830a(context) ? C14519f.m10845a(context) : 0;
            this.f53049a = context;
            this.f53053e = (i * m10845a) + m10845a2;
            this.f53051c = calendarConstraints;
            this.f53052d = dateSelector;
            this.f53050b = abstractC14531b;
            setHasStableIds(true);
            return;
        }
        throw new IllegalArgumentException("firstPage cannot be after currentPage");
    }

    /* renamed from: a */
    public final int m10805a(Month month) {
        return this.f53051c.getStart().monthsUntil(month);
    }

    /* renamed from: a */
    public final Month m10806a(int i) {
        return this.f53051c.getStart().monthsLater(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final int getItemCount() {
        return this.f53051c.getMonthSpan();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final long getItemId(int i) {
        return this.f53051c.getStart().monthsLater(i).getStableId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ void onBindViewHolder(C14542a c14542a, int i) {
        C14542a c14542a2 = c14542a;
        Month monthsLater = this.f53051c.getStart().monthsLater(i);
        c14542a2.f53056r.setText(monthsLater.getLongName(c14542a2.itemView.getContext()));
        final MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) c14542a2.f53057s.findViewById(C14376a.C14382f.month_grid);
        if (materialCalendarGridView.m10861a() == null || !monthsLater.equals(materialCalendarGridView.m10861a().f53044b)) {
            C14539i c14539i = new C14539i(monthsLater, this.f53052d, this.f53051c);
            materialCalendarGridView.setNumColumns(monthsLater.daysInWeek);
            materialCalendarGridView.setAdapter((ListAdapter) c14539i);
        } else {
            materialCalendarGridView.invalidate();
            C14539i m10861a = materialCalendarGridView.m10861a();
            for (Long l : m10861a.f53046d) {
                m10861a.m10809a(materialCalendarGridView, l.longValue());
            }
            if (m10861a.f53045c != null) {
                for (Long l2 : m10861a.f53045c.getSelectedDays()) {
                    m10861a.m10809a(materialCalendarGridView, l2.longValue());
                }
                m10861a.f53046d = m10861a.f53045c.getSelectedDays();
            }
        }
        materialCalendarGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.google.android.material.datepicker.j.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                C14539i m10861a2 = materialCalendarGridView.m10861a();
                if (i2 >= m10861a2.f53044b.daysFromStartOfWeekToFirstOfMonth() && i2 <= m10861a2.m10813a()) {
                    C14540j.this.f53050b.mo10831a(materialCalendarGridView.m10861a().getItem(i2).longValue());
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ C14542a onCreateViewHolder(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(C14376a.C14384h.mtrl_calendar_month_labeled, viewGroup, false);
        if (C14532g.m10830a(viewGroup.getContext())) {
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f53053e));
            return new C14542a(linearLayout, true);
        }
        return new C14542a(linearLayout, false);
    }
}
