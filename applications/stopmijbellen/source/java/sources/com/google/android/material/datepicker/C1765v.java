package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.datepicker.C1740g;
import java.util.WeakHashMap;
import p163m0.C3588u;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: com.google.android.material.datepicker.v */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/v.class */
public class C1765v extends RecyclerView.AbstractC0562e<C1766a> {

    /* renamed from: c */
    public final Context f6610c;

    /* renamed from: d */
    public final C1726a f6611d;

    /* renamed from: e */
    public final AbstractC1736d<?> f6612e;

    /* renamed from: f */
    public final C1740g.AbstractC1745e f6613f;

    /* renamed from: g */
    public final int f6614g;

    /* renamed from: com.google.android.material.datepicker.v$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/v$a.class */
    public static class C1766a extends RecyclerView.AbstractC0558a0 {

        /* renamed from: t */
        public final TextView f6615t;

        /* renamed from: u */
        public final MaterialCalendarGridView f6616u;

        public C1766a(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(2131296810);
            this.f6615t = textView;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            new C3588u(2131297091, Boolean.class, 28).m2096e(textView, Boolean.TRUE);
            this.f6616u = (MaterialCalendarGridView) linearLayout.findViewById(2131296805);
            if (!z) {
                textView.setVisibility(8);
            }
        }
    }

    public C1765v(Context context, AbstractC1736d<?> abstractC1736d, C1726a c1726a, C1740g.AbstractC1745e abstractC1745e) {
        C1761s c1761s = c1726a.f6505a;
        C1761s c1761s2 = c1726a.f6506b;
        C1761s c1761s3 = c1726a.f6508d;
        if (c1761s.compareTo(c1761s3) <= 0) {
            if (c1761s3.compareTo(c1761s2) > 0) {
                throw new IllegalArgumentException("currentPage cannot be after lastPage");
            }
            int i = C1763t.f6602f;
            int i2 = C1740g.f6541l;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131165667);
            int dimensionPixelSize2 = C1753o.m4614d(context) ? context.getResources().getDimensionPixelSize(2131165667) : 0;
            this.f6610c = context;
            this.f6614g = (i * dimensionPixelSize) + dimensionPixelSize2;
            this.f6611d = c1726a;
            this.f6612e = abstractC1736d;
            this.f6613f = abstractC1745e;
            if (this.f2244a.m7830a()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.f2245b = true;
            return;
        }
        throw new IllegalArgumentException("firstPage cannot be after currentPage");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: a */
    public int mo705a() {
        return this.f6611d.f6510f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: b */
    public long mo704b(int i) {
        return this.f6611d.f6505a.m4603g(i).f6595a.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: d */
    public void mo702d(C1766a c1766a, int i) {
        C1766a c1766a2 = c1766a;
        C1761s m4603g = this.f6611d.f6505a.m4603g(i);
        c1766a2.f6615t.setText(m4603g.m4604f(c1766a2.f2224a.getContext()));
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) c1766a2.f6616u.findViewById(2131296805);
        if (materialCalendarGridView.getAdapter2() == null || !m4603g.equals(materialCalendarGridView.getAdapter2().f6603a)) {
            C1763t c1763t = new C1763t(m4603g, this.f6612e, this.f6611d);
            materialCalendarGridView.setNumColumns(m4603g.f6598d);
            materialCalendarGridView.setAdapter((ListAdapter) c1763t);
        } else {
            materialCalendarGridView.invalidate();
            C1763t adapter2 = materialCalendarGridView.getAdapter2();
            for (Long l : adapter2.f6605c) {
                adapter2.m4596f(materialCalendarGridView, l.longValue());
            }
            AbstractC1736d<?> abstractC1736d = adapter2.f6604b;
            if (abstractC1736d != null) {
                for (Long l2 : abstractC1736d.m4633B()) {
                    adapter2.m4596f(materialCalendarGridView, l2.longValue());
                }
                adapter2.f6605c = adapter2.f6604b.m4633B();
            }
        }
        materialCalendarGridView.setOnItemClickListener(new C1764u(this, materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: e */
    public C1766a mo701e(ViewGroup viewGroup, int i) {
        C1766a c1766a;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(2131493033, viewGroup, false);
        if (C1753o.m4614d(viewGroup.getContext())) {
            linearLayout.setLayoutParams(new RecyclerView.C0578n(-1, this.f6614g));
            c1766a = new C1766a(linearLayout, true);
        } else {
            c1766a = new C1766a(linearLayout, false);
        }
        return c1766a;
    }

    /* renamed from: g */
    public C1761s m4595g(int i) {
        return this.f6611d.f6505a.m4603g(i);
    }

    /* renamed from: h */
    public int m4594h(C1761s c1761s) {
        return this.f6611d.f6505a.m4602h(c1761s);
    }
}
