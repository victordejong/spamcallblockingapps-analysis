package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.v;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.a;
import com.google.android.material.datepicker.f;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/j.class */
final class j extends RecyclerView.a<a> {

    /* renamed from: a  reason: collision with root package name */
    final Context f30478a;

    /* renamed from: b  reason: collision with root package name */
    final f.b f30479b;

    /* renamed from: c  reason: collision with root package name */
    private final CalendarConstraints f30480c;

    /* renamed from: d  reason: collision with root package name */
    private final DateSelector<?> f30481d;
    private final int e;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/j$a.class */
    public static final class a extends RecyclerView.v {
        final TextView r;
        final MaterialCalendarGridView s;

        a(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(a.f.month_title);
            this.r = textView;
            v.K(textView);
            this.s = (MaterialCalendarGridView) linearLayout.findViewById(a.f.month_grid);
            if (!z) {
                textView.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Context context, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints, f.b bVar) {
        Month start = calendarConstraints.getStart();
        Month end = calendarConstraints.getEnd();
        Month openAt = calendarConstraints.getOpenAt();
        if (start.compareTo(openAt) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        } else if (openAt.compareTo(end) <= 0) {
            int i = i.f30474a;
            int a2 = f.a(context);
            int a3 = g.a(context) ? f.a(context) : 0;
            this.f30478a = context;
            this.e = (i * a2) + a3;
            this.f30480c = calendarConstraints;
            this.f30481d = dateSelector;
            this.f30479b = bVar;
            setHasStableIds(true);
        } else {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(Month month) {
        return this.f30480c.getStart().monthsUntil(month);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Month a(int i) {
        return this.f30480c.getStart().monthsLater(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final int getItemCount() {
        return this.f30480c.getMonthSpan();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final long getItemId(int i) {
        return this.f30480c.getStart().monthsLater(i).getStableId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ void onBindViewHolder(a aVar, int i) {
        a aVar2 = aVar;
        Month monthsLater = this.f30480c.getStart().monthsLater(i);
        aVar2.r.setText(monthsLater.getLongName(aVar2.itemView.getContext()));
        final MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) aVar2.s.findViewById(a.f.month_grid);
        if (materialCalendarGridView.a() == null || !monthsLater.equals(materialCalendarGridView.a().f30475b)) {
            i iVar = new i(monthsLater, this.f30481d, this.f30480c);
            materialCalendarGridView.setNumColumns(monthsLater.daysInWeek);
            materialCalendarGridView.setAdapter((ListAdapter) iVar);
        } else {
            materialCalendarGridView.invalidate();
            i a2 = materialCalendarGridView.a();
            for (Long l : a2.f30477d) {
                a2.a(materialCalendarGridView, l.longValue());
            }
            if (a2.f30476c != null) {
                for (Long l2 : a2.f30476c.getSelectedDays()) {
                    a2.a(materialCalendarGridView, l2.longValue());
                }
                a2.f30477d = a2.f30476c.getSelectedDays();
            }
        }
        materialCalendarGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.google.android.material.datepicker.j.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                i a3 = materialCalendarGridView.a();
                if (i2 >= a3.f30475b.daysFromStartOfWeekToFirstOfMonth() && i2 <= a3.a()) {
                    j.this.f30479b.a(materialCalendarGridView.a().getItem(i2).longValue());
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ a onCreateViewHolder(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(a.h.mtrl_calendar_month_labeled, viewGroup, false);
        if (!g.a(viewGroup.getContext())) {
            return new a(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.e));
        return new a(linearLayout, true);
    }
}
