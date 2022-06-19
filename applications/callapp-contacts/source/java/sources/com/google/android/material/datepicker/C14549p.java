package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C14376a;
import com.google.android.material.datepicker.C14519f;
import com.google.android.material.timepicker.TimeModel;
import java.util.Calendar;
import java.util.Locale;
/* renamed from: com.google.android.material.datepicker.p */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/p.class */
public final class C14549p extends RecyclerView.AbstractC2626a<C14551a> {

    /* renamed from: a */
    final C14519f<?> f53064a;

    /* renamed from: com.google.android.material.datepicker.p$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/p$a.class */
    public static final class C14551a extends RecyclerView.AbstractC2657v {

        /* renamed from: r */
        final TextView f53067r;

        C14551a(TextView textView) {
            super(textView);
            this.f53067r = textView;
        }
    }

    public C14549p(C14519f<?> c14519f) {
        this.f53064a = c14519f;
    }

    /* renamed from: a */
    public final int m10780a(int i) {
        return i - this.f53064a.f52985f.getStart().year;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final int getItemCount() {
        return this.f53064a.f52985f.getYearSpan();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ void onBindViewHolder(C14551a c14551a, int i) {
        C14551a c14551a2 = c14551a;
        final int i2 = this.f53064a.f52985f.getStart().year + i;
        String string = c14551a2.f53067r.getContext().getString(C14376a.C14386j.mtrl_picker_navigate_to_year_description);
        c14551a2.f53067r.setText(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(i2)));
        c14551a2.f53067r.setContentDescription(String.format(string, Integer.valueOf(i2)));
        C14513b c14513b = this.f53064a.f52988i;
        Calendar m10797a = C14548o.m10797a();
        C14512a c14512a = m10797a.get(1) == i2 ? c14513b.f52963f : c14513b.f52961d;
        for (Long l : this.f53064a.f52984e.getSelectedDays()) {
            m10797a.setTimeInMillis(l.longValue());
            if (m10797a.get(1) == i2) {
                c14512a = c14513b.f52962e;
            }
        }
        c14512a.m10858a(c14551a2.f53067r);
        c14551a2.f53067r.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.p.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C14549p.this.f53064a.m10843a(C14549p.this.f53064a.f52985f.clamp(Month.create(i2, C14549p.this.f53064a.f52986g.month)));
                C14549p.this.f53064a.m10846a(C14519f.EnumC14530a.f53012a);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final /* synthetic */ C14551a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C14551a((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C14376a.C14384h.mtrl_calendar_year, viewGroup, false));
    }
}
