package com.google.android.material.datepicker;

import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
/* renamed from: com.google.android.material.datepicker.t */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/t.class */
public class C1763t extends BaseAdapter {

    /* renamed from: f */
    public static final int f6602f = C1730a0.m4638e().getMaximum(4);

    /* renamed from: a */
    public final C1761s f6603a;

    /* renamed from: b */
    public final AbstractC1736d<?> f6604b;

    /* renamed from: c */
    public Collection<Long> f6605c;

    /* renamed from: d */
    public C1733c f6606d;

    /* renamed from: e */
    public final C1726a f6607e;

    public C1763t(C1761s c1761s, AbstractC1736d<?> abstractC1736d, C1726a c1726a) {
        this.f6603a = c1761s;
        this.f6604b = abstractC1736d;
        this.f6607e = c1726a;
        this.f6605c = abstractC1736d.m4633B();
    }

    /* renamed from: a */
    public int m4601a(int i) {
        return m4600b() + (i - 1);
    }

    /* renamed from: b */
    public int m4600b() {
        return this.f6603a.m4605e();
    }

    /* renamed from: c */
    public Long getItem(int i) {
        if (i < this.f6603a.m4605e() || i > m4598d()) {
            return null;
        }
        C1761s c1761s = this.f6603a;
        int m4605e = c1761s.m4605e();
        Calendar m4641b = C1730a0.m4641b(c1761s.f6595a);
        m4641b.set(5, (i - m4605e) + 1);
        return Long.valueOf(m4641b.getTimeInMillis());
    }

    /* renamed from: d */
    public int m4598d() {
        return (this.f6603a.m4605e() + this.f6603a.f6599e) - 1;
    }

    /* renamed from: e */
    public final void m4597e(TextView textView, long j) {
        C1731b c1731b;
        boolean z;
        if (textView == null) {
            return;
        }
        if (this.f6607e.f6507c.mo4625p(j)) {
            textView.setEnabled(true);
            Iterator<Long> it2 = this.f6604b.m4633B().iterator();
            while (true) {
                z = false;
                if (!it2.hasNext()) {
                    break;
                }
                if (C1730a0.m4642a(j) == C1730a0.m4642a(it2.next().longValue())) {
                    z = true;
                    break;
                }
            }
            c1731b = z ? this.f6606d.f6527b : C1730a0.m4639d().getTimeInMillis() == j ? this.f6606d.f6528c : this.f6606d.f6526a;
        } else {
            textView.setEnabled(false);
            c1731b = this.f6606d.f6532g;
        }
        c1731b.m4635b(textView);
    }

    /* renamed from: f */
    public final void m4596f(MaterialCalendarGridView materialCalendarGridView, long j) {
        if (C1761s.m4606c(j).equals(this.f6603a)) {
            Calendar m4641b = C1730a0.m4641b(this.f6603a.f6595a);
            m4641b.setTimeInMillis(j);
            m4597e((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter2().m4601a(m4641b.get(5)) - materialCalendarGridView.getFirstVisiblePosition()), j);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return m4600b() + this.f6603a.f6599e;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f6603a.f6598d;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x01b1  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r9, android.view.View r10, android.view.ViewGroup r11) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.C1763t.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
