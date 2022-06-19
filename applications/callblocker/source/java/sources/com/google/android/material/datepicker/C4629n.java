package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.p026h.C0595u;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C4492a;
import com.google.android.material.datepicker.C4605h;
/* renamed from: com.google.android.material.datepicker.n */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/n.class */
public class C4629n extends RecyclerView.AbstractC0914a<C4631a> {

    /* renamed from: a */
    private final C4594a f20132a;

    /* renamed from: b */
    private final AbstractC4600d<?> f20133b;

    /* renamed from: c */
    private final C4605h.AbstractC4617b f20134c;

    /* renamed from: d */
    private final int f20135d;

    /* renamed from: com.google.android.material.datepicker.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/n$a.class */
    public static class C4631a extends RecyclerView.AbstractC0948x {

        /* renamed from: q */
        final TextView f20138q;

        /* renamed from: r */
        final MaterialCalendarGridView f20139r;

        C4631a(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            this.f20138q = (TextView) linearLayout.findViewById(C4492a.C4498f.month_title);
            C0595u.m20328c((View) this.f20138q, true);
            this.f20139r = (MaterialCalendarGridView) linearLayout.findViewById(C4492a.C4498f.month_grid);
            if (!z) {
                this.f20138q.setVisibility(8);
            }
        }
    }

    public C4629n(Context context, AbstractC4600d<?> abstractC4600d, C4594a c4594a, C4605h.AbstractC4617b abstractC4617b) {
        C4626l m3231b = c4594a.m3231b();
        C4626l m3229c = c4594a.m3229c();
        C4626l m3227d = c4594a.m3227d();
        if (m3231b.compareTo(m3227d) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (m3227d.compareTo(m3229c) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int i = C4628m.f20127a;
        this.f20135d = (C4618i.m3165b(context) ? C4605h.m3187b(context) : 0) + (C4605h.m3187b(context) * i);
        this.f20132a = c4594a;
        this.f20133b = abstractC4600d;
        this.f20134c = abstractC4617b;
        m19051a(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo959a() {
        return this.f20132a.m3225e();
    }

    /* renamed from: a */
    public int m3124a(C4626l c4626l) {
        return this.f20132a.m3231b().m3139b(c4626l);
    }

    /* renamed from: a */
    public void mo956a(C4631a c4631a, int i) {
        C4626l m3140b = this.f20132a.m3231b().m3140b(i);
        c4631a.f20138q.setText(m3140b.m3137d());
        final MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) c4631a.f20139r.findViewById(C4492a.C4498f.month_grid);
        if (materialCalendarGridView.getAdapter2() == null || !m3140b.equals(materialCalendarGridView.getAdapter2().f20128b)) {
            C4628m c4628m = new C4628m(m3140b, this.f20133b, this.f20132a);
            materialCalendarGridView.setNumColumns(m3140b.f20122c);
            materialCalendarGridView.setAdapter((ListAdapter) c4628m);
        } else {
            materialCalendarGridView.getAdapter2().notifyDataSetChanged();
        }
        materialCalendarGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.google.android.material.datepicker.n.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                if (materialCalendarGridView.getAdapter2().m3127d(i2)) {
                    C4629n.this.f20134c.mo3174a(materialCalendarGridView.getAdapter2().getItem(i2).longValue());
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: b */
    public long mo3121b(int i) {
        return this.f20132a.m3231b().m3140b(i).m3138c();
    }

    /* renamed from: c */
    public C4631a mo957a(ViewGroup viewGroup, int i) {
        C4631a c4631a;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(C4492a.C4500h.mtrl_calendar_month_labeled, viewGroup, false);
        if (C4618i.m3165b(viewGroup.getContext())) {
            linearLayout.setLayoutParams(new RecyclerView.C0930j(-1, this.f20135d));
            c4631a = new C4631a(linearLayout, true);
        } else {
            c4631a = new C4631a(linearLayout, false);
        }
        return c4631a;
    }

    /* renamed from: e */
    public CharSequence m3119e(int i) {
        return m3118f(i).m3137d();
    }

    /* renamed from: f */
    public C4626l m3118f(int i) {
        return this.f20132a.m3231b().m3140b(i);
    }
}
