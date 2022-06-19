package p001a.p002a.p003a.p004a.p005a;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import java.util.Map;
/* renamed from: a.a.a.a.a.c */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c.class */
public final class C0004c extends RecyclerView.AbstractC2636h {

    /* renamed from: a */
    private Map<Long, RecyclerView.AbstractC2657v> f9a;

    /* renamed from: b */
    private AbstractC0003b f10b;

    /* renamed from: c */
    private boolean f11c;

    public C0004c(AbstractC0003b abstractC0003b) {
        this(abstractC0003b, false);
    }

    public C0004c(AbstractC0003b abstractC0003b, boolean z) {
        this.f10b = abstractC0003b;
        this.f9a = new HashMap();
        this.f11c = z;
    }

    /* renamed from: a */
    private int m46604a(View view) {
        if (this.f11c) {
            return 0;
        }
        return view.getHeight();
    }

    /* renamed from: a */
    private RecyclerView.AbstractC2657v m46603a(RecyclerView recyclerView, int i) {
        long headerId = this.f10b.getHeaderId(i);
        if (this.f9a.containsKey(Long.valueOf(headerId))) {
            return this.f9a.get(Long.valueOf(headerId));
        }
        RecyclerView.AbstractC2657v mo30417a = this.f10b.mo30417a(recyclerView);
        View view = mo30417a.itemView;
        this.f10b.mo30416a(mo30417a, i);
        view.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(recyclerView.getMeasuredWidth(), 1073741824), recyclerView.getPaddingLeft() + recyclerView.getPaddingRight(), view.getLayoutParams().width), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(recyclerView.getMeasuredHeight(), 0), recyclerView.getPaddingTop() + recyclerView.getPaddingBottom(), view.getLayoutParams().height));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        this.f9a.put(Long.valueOf(headerId), mo30417a);
        return mo30417a;
    }

    /* renamed from: a */
    private boolean m46605a(int i) {
        return this.f10b.getHeaderId(i) != -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00d4, code lost:
        if (r15 < 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00e0, code lost:
        r15 = java.lang.Math.max(0, r0);
     */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo30290a(android.graphics.Canvas r7, androidx.recyclerview.widget.RecyclerView r8, androidx.recyclerview.widget.RecyclerView.C2654s r9) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p001a.p002a.p003a.p004a.p005a.C0004c.mo30290a(android.graphics.Canvas, androidx.recyclerview.widget.RecyclerView, androidx.recyclerview.widget.RecyclerView$s):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
    /* renamed from: a */
    public final void mo29937a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
        int i;
        int m40447d = RecyclerView.m40447d(view);
        if (m40447d != -1 && m46605a(m40447d)) {
            boolean z = true;
            if (m40447d != 0 && this.f10b.getHeaderId(m40447d - 1) == this.f10b.getHeaderId(m40447d)) {
                z = false;
            }
            if (z) {
                i = m46604a(m46603a(recyclerView, m40447d).itemView);
                rect.set(0, i, 0, 0);
            }
        }
        i = 0;
        rect.set(0, i, 0, 0);
    }
}
