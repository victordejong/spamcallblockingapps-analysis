package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C1027R;
import com.google.android.material.datepicker.MaterialCalendar;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MonthsPagerAdapter.class */
public class MonthsPagerAdapter extends RecyclerView.Adapter<ViewHolder> {
    @NonNull

    /* renamed from: a */
    private final CalendarConstraints f10600a;

    /* renamed from: b */
    private final DateSelector<?> f10601b;

    /* renamed from: c */
    private final MaterialCalendar.OnDayClickListener f10602c;

    /* renamed from: d */
    private final int f10603d;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        final TextView f10606a;

        /* renamed from: b */
        final MaterialCalendarGridView f10607b;

        ViewHolder(@NonNull LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(C1027R.C1030id.month_title);
            this.f10606a = textView;
            ViewCompat.m19181o0(textView, true);
            this.f10607b = (MaterialCalendarGridView) linearLayout.findViewById(C1027R.C1030id.month_grid);
            if (!z) {
                this.f10606a.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MonthsPagerAdapter(@NonNull Context context, DateSelector<?> dateSelector, @NonNull CalendarConstraints calendarConstraints, MaterialCalendar.OnDayClickListener onDayClickListener) {
        Month j = calendarConstraints.m10000j();
        Month g = calendarConstraints.m10003g();
        Month i = calendarConstraints.m10001i();
        if (j.compareTo(i) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        } else if (i.compareTo(g) <= 0) {
            this.f10603d = (MonthAdapter.f10595j * MaterialCalendar.m9954V0(context)) + (MaterialDatePicker.m9925V0(context) ? MaterialCalendar.m9954V0(context) : 0);
            this.f10600a = calendarConstraints;
            this.f10601b = dateSelector;
            this.f10602c = onDayClickListener;
            setHasStableIds(true);
        } else {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: d */
    public Month m9895d(int i) {
        return this.f10600a.m10000j().m9910m(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: e */
    public CharSequence m9894e(int i) {
        return m9895d(i).m9912k();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public int m9893f(@NonNull Month month) {
        return this.f10600a.m10000j().m9909o(month);
    }

    /* renamed from: g */
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
        Month m = this.f10600a.m10000j().m9910m(i);
        viewHolder.f10606a.setText(m.m9912k());
        final MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) viewHolder.f10607b.findViewById(C1027R.C1030id.month_grid);
        if (materialCalendarGridView.getAdapter2() == null || !m.equals(materialCalendarGridView.getAdapter2().f10596f)) {
            MonthAdapter monthAdapter = new MonthAdapter(m, this.f10601b, this.f10600a);
            materialCalendarGridView.setNumColumns(m.f10592j);
            materialCalendarGridView.setAdapter((ListAdapter) monthAdapter);
        } else {
            materialCalendarGridView.getAdapter2().notifyDataSetChanged();
        }
        materialCalendarGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.google.android.material.datepicker.MonthsPagerAdapter.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                if (materialCalendarGridView.getAdapter2().m9897j(i2)) {
                    MonthsPagerAdapter.this.f10602c.mo9945a(materialCalendarGridView.getAdapter2().getItem(i2).longValue());
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f10600a.m10002h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.f10600a.m10000j().m9910m(i).m9911l();
    }

    @NonNull
    /* renamed from: h */
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(C1027R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!MaterialDatePicker.m9925V0(viewGroup.getContext())) {
            return new ViewHolder(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f10603d));
        return new ViewHolder(linearLayout, true);
    }
}
