package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k.class */
public class k extends o {

    /* renamed from: b  reason: collision with root package name */
    private j f5484b;

    /* renamed from: c  reason: collision with root package name */
    private j f5485c;

    private static int a(View view, j jVar) {
        return (jVar.a(view) + (jVar.e(view) / 2)) - (jVar.b() + (jVar.e() / 2));
    }

    private static View a(RecyclerView.i iVar, j jVar) {
        int childCount = iVar.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int b2 = jVar.b();
        int e = jVar.e() / 2;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = iVar.getChildAt(i2);
            int abs = Math.abs((jVar.a(childAt) + (jVar.e(childAt) / 2)) - (b2 + e));
            i = i;
            if (abs < i) {
                view = childAt;
                i = abs;
            }
        }
        return view;
    }

    private j c(RecyclerView.i iVar) {
        j jVar = this.f5484b;
        if (jVar == null || jVar.f5481a != iVar) {
            this.f5484b = j.b(iVar);
        }
        return this.f5484b;
    }

    private j d(RecyclerView.i iVar) {
        j jVar = this.f5485c;
        if (jVar == null || jVar.f5481a != iVar) {
            this.f5485c = j.a(iVar);
        }
        return this.f5485c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0185, code lost:
        if (r0.y < com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L_0x0188;
     */
    @Override // androidx.recyclerview.widget.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(androidx.recyclerview.widget.RecyclerView.i r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.k.a(androidx.recyclerview.widget.RecyclerView$i, int, int):int");
    }

    @Override // androidx.recyclerview.widget.o
    public View a(RecyclerView.i iVar) {
        if (iVar.f()) {
            return a(iVar, c(iVar));
        }
        if (iVar.e()) {
            return a(iVar, d(iVar));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.o
    public final int[] a(RecyclerView.i iVar, View view) {
        int[] iArr = new int[2];
        if (iVar.e()) {
            iArr[0] = a(view, d(iVar));
        } else {
            iArr[0] = 0;
        }
        if (iVar.f()) {
            iArr[1] = a(view, c(iVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.recyclerview.widget.o
    public final RecyclerView.r b(RecyclerView.i iVar) {
        if (!(iVar instanceof RecyclerView.r.b)) {
            return null;
        }
        return new g(this.f5490a.getContext()) { // from class: androidx.recyclerview.widget.k.1
            @Override // androidx.recyclerview.widget.g
            protected final float a(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.g, androidx.recyclerview.widget.RecyclerView.r
            protected final void a(View view, RecyclerView.s sVar, RecyclerView.r.a aVar) {
                k kVar = k.this;
                int[] a2 = kVar.a(kVar.f5490a.getLayoutManager(), view);
                int i = a2[0];
                int i2 = a2[1];
                int a3 = a(Math.max(Math.abs(i), Math.abs(i2)));
                if (a3 > 0) {
                    aVar.a(i, i2, a3, this.f5475b);
                }
            }

            @Override // androidx.recyclerview.widget.g
            protected final int b(int i) {
                return Math.min(100, super.b(i));
            }
        };
    }
}
