package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.v */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/v.class */
public class C0648v extends AbstractC0609b0 {

    /* renamed from: c */
    public AbstractC0646t f2542c;

    /* renamed from: d */
    public AbstractC0646t f2543d;

    @Override // androidx.recyclerview.widget.AbstractC0609b0
    /* renamed from: a */
    public int[] mo7535a(RecyclerView.AbstractC0573m abstractC0573m, View view) {
        int[] iArr = new int[2];
        if (abstractC0573m.mo7707e()) {
            iArr[0] = m7534c(view, m7532e(abstractC0573m));
        } else {
            iArr[0] = 0;
        }
        if (abstractC0573m.mo7704f()) {
            iArr[1] = m7534c(view, m7531f(abstractC0573m));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    /* renamed from: c */
    public final int m7534c(View view, AbstractC0646t abstractC0646t) {
        int mo7549e = abstractC0646t.mo7549e(view);
        return ((abstractC0646t.mo7551c(view) / 2) + mo7549e) - ((abstractC0646t.mo7542l() / 2) + abstractC0646t.mo7543k());
    }

    /* renamed from: d */
    public final View m7533d(RecyclerView.AbstractC0573m abstractC0573m, AbstractC0646t abstractC0646t) {
        int m7776x = abstractC0573m.m7776x();
        View view = null;
        if (m7776x == 0) {
            return null;
        }
        int mo7543k = abstractC0646t.mo7543k();
        int mo7542l = abstractC0646t.mo7542l() / 2;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (i2 < m7776x) {
            View m7777w = abstractC0573m.m7777w(i2);
            int abs = Math.abs(((abstractC0646t.mo7551c(m7777w) / 2) + abstractC0646t.mo7549e(m7777w)) - (mo7542l + mo7543k));
            int i3 = i;
            if (abs < i) {
                view = m7777w;
                i3 = abs;
            }
            i2++;
            i = i3;
        }
        return view;
    }

    /* renamed from: e */
    public final AbstractC0646t m7532e(RecyclerView.AbstractC0573m abstractC0573m) {
        AbstractC0646t abstractC0646t = this.f2543d;
        if (abstractC0646t == null || abstractC0646t.f2538a != abstractC0573m) {
            this.f2543d = new C0644r(abstractC0573m);
        }
        return this.f2543d;
    }

    /* renamed from: f */
    public final AbstractC0646t m7531f(RecyclerView.AbstractC0573m abstractC0573m) {
        AbstractC0646t abstractC0646t = this.f2542c;
        if (abstractC0646t == null || abstractC0646t.f2538a != abstractC0573m) {
            this.f2542c = new C0645s(abstractC0573m);
        }
        return this.f2542c;
    }
}
