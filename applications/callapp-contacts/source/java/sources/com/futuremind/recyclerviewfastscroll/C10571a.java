package com.futuremind.recyclerviewfastscroll;

import androidx.recyclerview.widget.RecyclerView;
import com.futuremind.recyclerviewfastscroll.p310a.AbstractC10574c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.futuremind.recyclerviewfastscroll.a */
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a.class */
public final class C10571a extends RecyclerView.AbstractC2645m {

    /* renamed from: a */
    List<Object> f34313a = new ArrayList();

    /* renamed from: b */
    int f34314b = 0;

    /* renamed from: c */
    private final FastScroller f34315c;

    public C10571a(FastScroller fastScroller) {
        this.f34315c = fastScroller;
    }

    /* renamed from: a */
    private void m22643a() {
        Iterator<Object> it2 = this.f34313a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: a */
    public final void m22642a(RecyclerView recyclerView) {
        int i;
        int i2;
        int i3;
        if (this.f34315c.m22654a()) {
            i3 = recyclerView.computeVerticalScrollOffset();
            i2 = recyclerView.computeVerticalScrollExtent();
            i = recyclerView.computeVerticalScrollRange();
        } else {
            i3 = recyclerView.computeHorizontalScrollOffset();
            i2 = recyclerView.computeHorizontalScrollExtent();
            i = recyclerView.computeHorizontalScrollRange();
        }
        this.f34315c.m22653a(i3 / (i - i2));
        m22643a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
    /* renamed from: a */
    public final void mo10833a(RecyclerView recyclerView, int i) {
        super.mo10833a(recyclerView, i);
        if (i == 0 && this.f34314b != 0) {
            AbstractC10574c abstractC10574c = this.f34315c.f34300d;
            if (abstractC10574c.m22636e() != null) {
                abstractC10574c.m22636e();
            }
            if (abstractC10574c.m22635f() != null) {
                abstractC10574c.m22635f();
            }
        } else if (i != 0 && this.f34314b == 0) {
            AbstractC10574c abstractC10574c2 = this.f34315c.f34300d;
            if (abstractC10574c2.m22636e() != null) {
                abstractC10574c2.m22636e();
            }
            if (abstractC10574c2.m22635f() != null) {
                abstractC10574c2.m22635f();
            }
        }
        this.f34314b = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
    /* renamed from: a */
    public final void mo10832a(RecyclerView recyclerView, int i, int i2) {
        FastScroller fastScroller = this.f34315c;
        if (fastScroller.f34298b != null && !fastScroller.f34299c && fastScroller.f34297a.getChildCount() > 0) {
            m22642a(recyclerView);
        }
    }
}
