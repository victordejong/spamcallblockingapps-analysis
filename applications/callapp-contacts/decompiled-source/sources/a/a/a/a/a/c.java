package a.a.a.a.a;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c.class */
public final class c extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    private Map<Long, RecyclerView.v> f374a;

    /* renamed from: b  reason: collision with root package name */
    private b f375b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f376c;

    public c(b bVar) {
        this(bVar, false);
    }

    public c(b bVar, boolean z) {
        this.f375b = bVar;
        this.f374a = new HashMap();
        this.f376c = z;
    }

    private int a(View view) {
        if (this.f376c) {
            return 0;
        }
        return view.getHeight();
    }

    private RecyclerView.v a(RecyclerView recyclerView, int i) {
        long headerId = this.f375b.getHeaderId(i);
        if (this.f374a.containsKey(Long.valueOf(headerId))) {
            return this.f374a.get(Long.valueOf(headerId));
        }
        RecyclerView.v a2 = this.f375b.a(recyclerView);
        View view = a2.itemView;
        this.f375b.a(a2, i);
        view.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(recyclerView.getMeasuredWidth(), 1073741824), recyclerView.getPaddingLeft() + recyclerView.getPaddingRight(), view.getLayoutParams().width), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(recyclerView.getMeasuredHeight(), 0), recyclerView.getPaddingTop() + recyclerView.getPaddingBottom(), view.getLayoutParams().height));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        this.f374a.put(Long.valueOf(headerId), a2);
        return a2;
    }

    private boolean a(int i) {
        return this.f375b.getHeaderId(i) != -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00d4, code lost:
        if (r15 < 0) goto L_0x00ef;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00e0, code lost:
        r15 = java.lang.Math.max(0, r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.recyclerview.widget.RecyclerView.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.graphics.Canvas r7, androidx.recyclerview.widget.RecyclerView r8, androidx.recyclerview.widget.RecyclerView.s r9) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a.a.a.a.a.c.a(android.graphics.Canvas, androidx.recyclerview.widget.RecyclerView, androidx.recyclerview.widget.RecyclerView$s):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
        int i;
        int d2 = RecyclerView.d(view);
        if (d2 != -1 && a(d2)) {
            boolean z = true;
            if (d2 != 0 && this.f375b.getHeaderId(d2 - 1) == this.f375b.getHeaderId(d2)) {
                z = false;
            }
            if (z) {
                i = a(a(recyclerView, d2).itemView);
                rect.set(0, i, 0, 0);
            }
        }
        i = 0;
        rect.set(0, i, 0, 0);
    }
}
