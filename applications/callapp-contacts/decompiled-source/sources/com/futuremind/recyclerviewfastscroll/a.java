package com.futuremind.recyclerviewfastscroll;

import androidx.recyclerview.widget.RecyclerView;
import com.futuremind.recyclerviewfastscroll.a.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a.class */
public final class a extends RecyclerView.m {

    /* renamed from: a  reason: collision with root package name */
    List<Object> f20242a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    int f20243b = 0;

    /* renamed from: c  reason: collision with root package name */
    private final FastScroller f20244c;

    public a(FastScroller fastScroller) {
        this.f20244c = fastScroller;
    }

    private void a() {
        Iterator<Object> it2 = this.f20242a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(RecyclerView recyclerView) {
        int i;
        int i2;
        int i3;
        if (this.f20244c.a()) {
            i3 = recyclerView.computeVerticalScrollOffset();
            i2 = recyclerView.computeVerticalScrollExtent();
            i = recyclerView.computeVerticalScrollRange();
        } else {
            i3 = recyclerView.computeHorizontalScrollOffset();
            i2 = recyclerView.computeHorizontalScrollExtent();
            i = recyclerView.computeHorizontalScrollRange();
        }
        this.f20244c.a(i3 / (i - i2));
        a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void a(RecyclerView recyclerView, int i) {
        super.a(recyclerView, i);
        if (i == 0 && this.f20243b != 0) {
            c cVar = this.f20244c.f20239d;
            if (cVar.e() != null) {
                cVar.e();
            }
            if (cVar.f() != null) {
                cVar.f();
            }
        } else if (i != 0 && this.f20243b == 0) {
            c cVar2 = this.f20244c.f20239d;
            if (cVar2.e() != null) {
                cVar2.e();
            }
            if (cVar2.f() != null) {
                cVar2.f();
            }
        }
        this.f20243b = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void a(RecyclerView recyclerView, int i, int i2) {
        FastScroller fastScroller = this.f20244c;
        if (fastScroller.f20237b != null && !fastScroller.f20238c && fastScroller.f20236a.getChildCount() > 0) {
            a(recyclerView);
        }
    }
}
