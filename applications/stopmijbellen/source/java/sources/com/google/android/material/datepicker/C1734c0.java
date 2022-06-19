package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Calendar;
import java.util.Locale;
/* renamed from: com.google.android.material.datepicker.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/c0.class */
public class C1734c0 extends RecyclerView.AbstractC0562e<C1735a> {

    /* renamed from: c */
    public final C1740g<?> f6534c;

    /* renamed from: com.google.android.material.datepicker.c0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/c0$a.class */
    public static class C1735a extends RecyclerView.AbstractC0558a0 {

        /* renamed from: t */
        public final TextView f6535t;

        public C1735a(TextView textView) {
            super(textView);
            this.f6535t = textView;
        }
    }

    public C1734c0(C1740g<?> c1740g) {
        this.f6534c = c1740g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: a */
    public int mo705a() {
        return this.f6534c.f6544d.f6509e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: d */
    public void mo702d(C1735a c1735a, int i) {
        C1735a c1735a2 = c1735a;
        int i2 = this.f6534c.f6544d.f6505a.f6597c + i;
        String string = c1735a2.f6535t.getContext().getString(2131820900);
        c1735a2.f6535t.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i2)));
        c1735a2.f6535t.setContentDescription(String.format(string, Integer.valueOf(i2)));
        C1733c c1733c = this.f6534c.f6547g;
        Calendar m4639d = C1730a0.m4639d();
        C1731b c1731b = m4639d.get(1) == i2 ? c1733c.f6531f : c1733c.f6529d;
        for (Long l : this.f6534c.f6543c.m4633B()) {
            m4639d.setTimeInMillis(l.longValue());
            if (m4639d.get(1) == i2) {
                c1731b = c1733c.f6530e;
            }
        }
        c1731b.m4635b(c1735a2.f6535t);
        c1735a2.f6535t.setOnClickListener(new View$OnClickListenerC1732b0(this, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: e */
    public C1735a mo701e(ViewGroup viewGroup, int i) {
        return new C1735a((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(2131493037, viewGroup, false));
    }

    /* renamed from: g */
    public int m4634g(int i) {
        return i - this.f6534c.f6544d.f6505a.f6597c;
    }
}
