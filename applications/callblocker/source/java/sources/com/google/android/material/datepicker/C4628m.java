package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.C4492a;
import java.util.Iterator;
/* renamed from: com.google.android.material.datepicker.m */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/m.class */
public class C4628m extends BaseAdapter {

    /* renamed from: a */
    static final int f20127a = C4636r.m3106b().getMaximum(4);

    /* renamed from: b */
    final C4626l f20128b;

    /* renamed from: c */
    final AbstractC4600d<?> f20129c;

    /* renamed from: d */
    C4599c f20130d;

    /* renamed from: e */
    final C4594a f20131e;

    public C4628m(C4626l c4626l, AbstractC4600d<?> abstractC4600d, C4594a c4594a) {
        this.f20128b = c4626l;
        this.f20129c = abstractC4600d;
        this.f20131e = c4594a;
    }

    /* renamed from: a */
    private void m3131a(Context context) {
        if (this.f20130d == null) {
            this.f20130d = new C4599c(context);
        }
    }

    /* renamed from: a */
    public int m3134a() {
        return this.f20128b.m3141b();
    }

    /* renamed from: a */
    public TextView getView(int i, View view, ViewGroup viewGroup) {
        m3131a(viewGroup.getContext());
        TextView textView = view == null ? (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C4492a.C4500h.mtrl_calendar_day, viewGroup, false) : (TextView) view;
        int m3134a = i - m3134a();
        if (m3134a < 0 || m3134a >= this.f20128b.f20123d) {
            textView.setVisibility(8);
            textView.setEnabled(false);
        } else {
            int i2 = m3134a + 1;
            textView.setTag(this.f20128b);
            textView.setText(String.valueOf(i2));
            long m3145a = this.f20128b.m3145a(i2);
            if (this.f20128b.f20121b == C4626l.m3146a().f20121b) {
                textView.setContentDescription(C4601e.m3207a(m3145a));
            } else {
                textView.setContentDescription(C4601e.m3205b(m3145a));
            }
            textView.setVisibility(0);
            textView.setEnabled(true);
        }
        Long item = getItem(i);
        if (item != null) {
            if (this.f20131e.m3233a().mo3203a(item.longValue())) {
                textView.setEnabled(true);
                Iterator<Long> it = this.f20129c.m3209c().iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (C4636r.m3110a(item.longValue()) == C4636r.m3110a(it.next().longValue())) {
                            this.f20130d.f20047b.m3217a(textView);
                            break;
                        }
                    } else if (C4636r.m3112a().getTimeInMillis() == item.longValue()) {
                        this.f20130d.f20048c.m3217a(textView);
                    } else {
                        this.f20130d.f20046a.m3217a(textView);
                    }
                }
            } else {
                textView.setEnabled(false);
                this.f20130d.f20052g.m3217a(textView);
            }
        }
        return textView;
    }

    /* renamed from: a */
    public Long getItem(int i) {
        return (i < this.f20128b.m3141b() || i > m3130b()) ? null : Long.valueOf(this.f20128b.m3145a(m3129b(i)));
    }

    /* renamed from: b */
    public int m3130b() {
        return (this.f20128b.m3141b() + this.f20128b.f20123d) - 1;
    }

    /* renamed from: b */
    int m3129b(int i) {
        return (i - this.f20128b.m3141b()) + 1;
    }

    /* renamed from: c */
    public int m3128c(int i) {
        return (i - 1) + m3134a();
    }

    /* renamed from: d */
    public boolean m3127d(int i) {
        return i >= m3134a() && i <= m3130b();
    }

    /* renamed from: e */
    public boolean m3126e(int i) {
        return i % this.f20128b.f20122c == 0;
    }

    /* renamed from: f */
    public boolean m3125f(int i) {
        return (i + 1) % this.f20128b.f20122c == 0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f20128b.f20123d + m3134a();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f20128b.f20122c;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
