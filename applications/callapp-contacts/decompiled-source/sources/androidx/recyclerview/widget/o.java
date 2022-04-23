package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/o.class */
public abstract class o extends RecyclerView.k {

    /* renamed from: a  reason: collision with root package name */
    RecyclerView f5490a;

    /* renamed from: b  reason: collision with root package name */
    private Scroller f5491b;

    /* renamed from: c  reason: collision with root package name */
    private final RecyclerView.m f5492c = new RecyclerView.m() { // from class: androidx.recyclerview.widget.o.1

        /* renamed from: a  reason: collision with root package name */
        boolean f5493a = false;

        @Override // androidx.recyclerview.widget.RecyclerView.m
        public final void a(RecyclerView recyclerView, int i) {
            super.a(recyclerView, i);
            if (i == 0 && this.f5493a) {
                this.f5493a = false;
                o.this.a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m
        public final void a(RecyclerView recyclerView, int i, int i2) {
            if (i != 0 || i2 != 0) {
                this.f5493a = true;
            }
        }
    };

    public abstract int a(RecyclerView.i iVar, int i, int i2);

    public abstract View a(RecyclerView.i iVar);

    final void a() {
        RecyclerView.i layoutManager;
        View a2;
        RecyclerView recyclerView = this.f5490a;
        if (recyclerView != null && (layoutManager = recyclerView.getLayoutManager()) != null && (a2 = a(layoutManager)) != null) {
            int[] a3 = a(layoutManager, a2);
            if (a3[0] != 0 || a3[1] != 0) {
                this.f5490a.a_(a3[0], a3[1]);
            }
        }
    }

    public void a(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.f5490a;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                recyclerView2.b(this.f5492c);
                this.f5490a.setOnFlingListener(null);
            }
            this.f5490a = recyclerView;
            if (recyclerView == null) {
                return;
            }
            if (recyclerView.getOnFlingListener() == null) {
                this.f5490a.a(this.f5492c);
                this.f5490a.setOnFlingListener(this);
                this.f5491b = new Scroller(this.f5490a.getContext(), new DecelerateInterpolator());
                a();
                return;
            }
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public final boolean a(int i, int i2) {
        boolean z;
        RecyclerView.r b2;
        int a2;
        RecyclerView.i layoutManager = this.f5490a.getLayoutManager();
        if (layoutManager == null || this.f5490a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f5490a.getMinFlingVelocity();
        if (Math.abs(i2) <= minFlingVelocity && Math.abs(i) <= minFlingVelocity) {
            return false;
        }
        if (!(layoutManager instanceof RecyclerView.r.b) || (b2 = b(layoutManager)) == null || (a2 = a(layoutManager, i, i2)) == -1) {
            z = false;
        } else {
            b2.setTargetPosition(a2);
            layoutManager.a(b2);
            z = true;
        }
        return z;
    }

    public abstract int[] a(RecyclerView.i iVar, View view);

    public RecyclerView.r b(RecyclerView.i iVar) {
        if (!(iVar instanceof RecyclerView.r.b)) {
            return null;
        }
        return new g(this.f5490a.getContext()) { // from class: androidx.recyclerview.widget.o.2
            @Override // androidx.recyclerview.widget.g
            protected final float a(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.g, androidx.recyclerview.widget.RecyclerView.r
            protected final void a(View view, RecyclerView.s sVar, RecyclerView.r.a aVar) {
                if (o.this.f5490a != null) {
                    o oVar = o.this;
                    int[] a2 = oVar.a(oVar.f5490a.getLayoutManager(), view);
                    int i = a2[0];
                    int i2 = a2[1];
                    int a3 = a(Math.max(Math.abs(i), Math.abs(i2)));
                    if (a3 > 0) {
                        aVar.a(i, i2, a3, this.f5475b);
                    }
                }
            }
        };
    }

    public int[] b(int i, int i2) {
        this.f5491b.fling(0, 0, i, i2, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Integer.MAX_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Integer.MAX_VALUE);
        return new int[]{this.f5491b.getFinalX(), this.f5491b.getFinalY()};
    }
}
