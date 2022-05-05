package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C1027R;
import com.google.android.material.datepicker.MaterialCalendar;
import java.util.Calendar;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/YearGridAdapter.class */
public class YearGridAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a */
    private final MaterialCalendar<?> f10629a;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/YearGridAdapter$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        final TextView f10632a;

        ViewHolder(TextView textView) {
            super(textView);
            this.f10632a = textView;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public YearGridAdapter(MaterialCalendar<?> materialCalendar) {
        this.f10629a = materialCalendar;
    }

    @NonNull
    /* renamed from: d */
    private View.OnClickListener m9828d(final int i) {
        return new View.OnClickListener() { // from class: com.google.android.material.datepicker.YearGridAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                YearGridAdapter.this.f10629a.m9950Z0(YearGridAdapter.this.f10629a.m9958R0().m10005e(Month.m9917b(i, YearGridAdapter.this.f10629a.m9956T0().f10590h)));
                YearGridAdapter.this.f10629a.m9949a1(MaterialCalendar.CalendarSelector.DAY);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public int m9827e(int i) {
        return i - this.f10629a.m9958R0().m10000j().f10591i;
    }

    /* renamed from: f */
    int m9826f(int i) {
        return this.f10629a.m9958R0().m10000j().f10591i + i;
    }

    /* renamed from: g */
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
        int f = m9826f(i);
        String string = viewHolder.f10632a.getContext().getString(C1027R.string.mtrl_picker_navigate_to_year_description);
        viewHolder.f10632a.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(f)));
        viewHolder.f10632a.setContentDescription(String.format(string, Integer.valueOf(f)));
        CalendarStyle S0 = this.f10629a.m9957S0();
        Calendar p = UtcDates.m9838p();
        CalendarItemStyle calendarItemStyle = p.get(1) == f ? S0.f10512f : S0.f10510d;
        for (Long l : this.f10629a.m9955U0().mo9867e0()) {
            p.setTimeInMillis(l.longValue());
            if (p.get(1) == f) {
                calendarItemStyle = S0.f10511e;
            }
        }
        calendarItemStyle.m9990d(viewHolder.f10632a);
        viewHolder.f10632a.setOnClickListener(m9828d(f));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f10629a.m9958R0().m9999k();
    }

    @NonNull
    /* renamed from: h */
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ViewHolder((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C1027R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
