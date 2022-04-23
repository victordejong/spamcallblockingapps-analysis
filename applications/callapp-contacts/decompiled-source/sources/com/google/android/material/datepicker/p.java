package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.a;
import com.google.android.material.datepicker.f;
import com.google.android.material.timepicker.TimeModel;
import java.util.Calendar;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/p.class */
public final class p extends RecyclerView.a<a> {

    /* renamed from: a  reason: collision with root package name */
    final f<?> f30488a;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/p$a.class */
    public static final class a extends RecyclerView.v {
        final TextView r;

        a(TextView textView) {
            super(textView);
            this.r = textView;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(f<?> fVar) {
        this.f30488a = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(int i) {
        return i - this.f30488a.f.getStart().year;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final int getItemCount() {
        return this.f30488a.f.getYearSpan();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ void onBindViewHolder(a aVar, int i) {
        a aVar2 = aVar;
        final int i2 = this.f30488a.f.getStart().year + i;
        String string = aVar2.r.getContext().getString(a.j.mtrl_picker_navigate_to_year_description);
        aVar2.r.setText(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i2)));
        aVar2.r.setContentDescription(String.format(string, Integer.valueOf(i2)));
        b bVar = this.f30488a.i;
        Calendar a2 = o.a();
        com.google.android.material.datepicker.a aVar3 = a2.get(1) == i2 ? bVar.f : bVar.f30426d;
        for (Long l : this.f30488a.e.getSelectedDays()) {
            a2.setTimeInMillis(l.longValue());
            if (a2.get(1) == i2) {
                aVar3 = bVar.e;
            }
        }
        aVar3.a(aVar2.r);
        aVar2.r.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.p.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                p.this.f30488a.a(p.this.f30488a.f.clamp(Month.create(i2, p.this.f30488a.g.month)));
                p.this.f30488a.a(f.a.f30461a);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final /* synthetic */ a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(a.h.mtrl_calendar_year, viewGroup, false));
    }
}
