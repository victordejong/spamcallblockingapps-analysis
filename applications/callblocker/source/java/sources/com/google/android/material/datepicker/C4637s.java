package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C4492a;
import com.google.android.material.datepicker.C4605h;
import java.util.Calendar;
import java.util.Locale;
/* renamed from: com.google.android.material.datepicker.s */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/s.class */
public class C4637s extends RecyclerView.AbstractC0914a<C4639a> {

    /* renamed from: a */
    private final C4605h<?> f20142a;

    /* renamed from: com.google.android.material.datepicker.s$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/s$a.class */
    public static class C4639a extends RecyclerView.AbstractC0948x {

        /* renamed from: q */
        final TextView f20145q;

        C4639a(TextView textView) {
            super(textView);
            this.f20145q = textView;
        }
    }

    public C4637s(C4605h<?> c4605h) {
        this.f20142a = c4605h;
    }

    /* renamed from: g */
    private View.OnClickListener m3092g(final int i) {
        return new View.OnClickListener() { // from class: com.google.android.material.datepicker.s.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4637s.this.f20142a.m3191a(C4626l.m3144a(i, C4637s.this.f20142a.m3197a().f20120a));
                C4637s.this.f20142a.m3194a(C4605h.EnumC4616a.DAY);
            }
        };
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo959a() {
        return this.f20142a.m3184d().m3224f();
    }

    /* renamed from: a */
    public void mo956a(C4639a c4639a, int i) {
        int m3093f = m3093f(i);
        String string = c4639a.f20145q.getContext().getString(C4492a.C4502j.mtrl_picker_navigate_to_year_description);
        c4639a.f20145q.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(m3093f)));
        c4639a.f20145q.setContentDescription(String.format(string, Integer.valueOf(m3093f)));
        C4599c m3178g = this.f20142a.m3178g();
        Calendar m3112a = C4636r.m3112a();
        C4598b c4598b = m3112a.get(1) == m3093f ? m3178g.f20051f : m3178g.f20049d;
        for (Long l : this.f20142a.m3180f().m3209c()) {
            m3112a.setTimeInMillis(l.longValue());
            if (m3112a.get(1) == m3093f) {
                c4598b = m3178g.f20050e;
            }
        }
        c4598b.m3217a(c4639a.f20145q);
        c4639a.f20145q.setOnClickListener(m3092g(m3093f));
    }

    /* renamed from: c */
    public C4639a mo957a(ViewGroup viewGroup, int i) {
        return new C4639a((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C4492a.C4500h.mtrl_calendar_year, viewGroup, false));
    }

    /* renamed from: e */
    public int m3094e(int i) {
        return i - this.f20142a.m3184d().m3231b().f20121b;
    }

    /* renamed from: f */
    int m3093f(int i) {
        return this.f20142a.m3184d().m3231b().f20121b + i;
    }
}
