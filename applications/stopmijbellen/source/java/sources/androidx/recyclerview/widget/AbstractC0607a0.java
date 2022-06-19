package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0628l;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.a0 */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/a0.class */
public abstract class AbstractC0607a0 extends RecyclerView.AbstractC0567j {

    /* renamed from: g */
    public boolean f2395g = true;

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0567j
    /* renamed from: a */
    public boolean mo7635a(RecyclerView.AbstractC0558a0 abstractC0558a0, RecyclerView.AbstractC0558a0 abstractC0558a02, RecyclerView.AbstractC0567j.C0570c c0570c, RecyclerView.AbstractC0567j.C0570c c0570c2) {
        int i;
        int i2;
        boolean z;
        int i3 = c0570c.f2252a;
        int i4 = c0570c.f2253b;
        if (abstractC0558a02.m7834u()) {
            i2 = c0570c.f2252a;
            i = c0570c.f2253b;
        } else {
            i2 = c0570c2.f2252a;
            i = c0570c2.f2253b;
        }
        C0628l c0628l = (C0628l) this;
        if (abstractC0558a0 == abstractC0558a02) {
            z = c0628l.mo7576i(abstractC0558a0, i3, i4, i2, i);
        } else {
            float translationX = abstractC0558a0.f2224a.getTranslationX();
            float translationY = abstractC0558a0.f2224a.getTranslationY();
            float alpha = abstractC0558a0.f2224a.getAlpha();
            c0628l.m7571n(abstractC0558a0);
            int i5 = (int) ((i2 - i3) - translationX);
            abstractC0558a0.f2224a.setTranslationX(translationX);
            abstractC0558a0.f2224a.setTranslationY(translationY);
            abstractC0558a0.f2224a.setAlpha(alpha);
            c0628l.m7571n(abstractC0558a02);
            abstractC0558a02.f2224a.setTranslationX(-i5);
            abstractC0558a02.f2224a.setTranslationY(-((int) ((i - i4) - translationY)));
            abstractC0558a02.f2224a.setAlpha(0.0f);
            c0628l.f2450k.add(new C0628l.C0629a(abstractC0558a0, abstractC0558a02, i3, i4, i2, i));
            z = true;
        }
        return z;
    }

    /* renamed from: i */
    public abstract boolean mo7576i(RecyclerView.AbstractC0558a0 abstractC0558a0, int i, int i2, int i3, int i4);
}
