package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseViewTypeData;
/* renamed from: androidx.recyclerview.widget.o */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/o.class */
public abstract class AbstractC2703o extends RecyclerView.AbstractC2643k {

    /* renamed from: a */
    RecyclerView f10308a;

    /* renamed from: b */
    private Scroller f10309b;

    /* renamed from: c */
    private final RecyclerView.AbstractC2645m f10310c = new RecyclerView.AbstractC2645m() { // from class: androidx.recyclerview.widget.o.1

        /* renamed from: a */
        boolean f10311a = false;

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
        /* renamed from: a */
        public final void mo10833a(RecyclerView recyclerView, int i) {
            super.mo10833a(recyclerView, i);
            if (i != 0 || !this.f10311a) {
                return;
            }
            this.f10311a = false;
            AbstractC2703o.this.m40036a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
        /* renamed from: a */
        public final void mo10832a(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.f10311a = true;
        }
    };

    /* renamed from: a */
    public abstract int mo31235a(RecyclerView.AbstractC2637i abstractC2637i, int i, int i2);

    /* renamed from: a */
    public abstract View mo29893a(RecyclerView.AbstractC2637i abstractC2637i);

    /* renamed from: a */
    final void m40036a() {
        RecyclerView.AbstractC2637i layoutManager;
        View mo29893a;
        RecyclerView recyclerView = this.f10308a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (mo29893a = mo29893a(layoutManager)) == null) {
            return;
        }
        int[] mo29892a = mo29892a(layoutManager, mo29893a);
        if (mo29892a[0] == 0 && mo29892a[1] == 0) {
            return;
        }
        this.f10308a.mo26354a_(mo29892a[0], mo29892a[1]);
    }

    /* renamed from: a */
    public void mo29891a(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.f10308a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.m40459b(this.f10310c);
            this.f10308a.setOnFlingListener(null);
        }
        this.f10308a = recyclerView;
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.f10308a.m40478a(this.f10310c);
        this.f10308a.setOnFlingListener(this);
        this.f10309b = new Scroller(this.f10308a.getContext(), new DecelerateInterpolator());
        m40036a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2643k
    /* renamed from: a */
    public final boolean mo40035a(int i, int i2) {
        boolean z;
        RecyclerView.AbstractC2651r mo29889b;
        int mo31235a;
        RecyclerView.AbstractC2637i layoutManager = this.f10308a.getLayoutManager();
        if (layoutManager == null || this.f10308a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f10308a.getMinFlingVelocity();
        if (Math.abs(i2) <= minFlingVelocity && Math.abs(i) <= minFlingVelocity) {
            return false;
        }
        if (!(layoutManager instanceof RecyclerView.AbstractC2651r.AbstractC2653b) || (mo29889b = mo29889b(layoutManager)) == null || (mo31235a = mo31235a(layoutManager, i, i2)) == -1) {
            z = false;
        } else {
            mo29889b.setTargetPosition(mo31235a);
            layoutManager.m40378a(mo29889b);
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public abstract int[] mo29892a(RecyclerView.AbstractC2637i abstractC2637i, View view);

    /* renamed from: b */
    public RecyclerView.AbstractC2651r mo29889b(RecyclerView.AbstractC2637i abstractC2637i) {
        if (!(abstractC2637i instanceof RecyclerView.AbstractC2651r.AbstractC2653b)) {
            return null;
        }
        return new C2690g(this.f10308a.getContext()) { // from class: androidx.recyclerview.widget.o.2
            @Override // androidx.recyclerview.widget.C2690g
            /* renamed from: a */
            protected final float mo10799a(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.C2690g, androidx.recyclerview.widget.RecyclerView.AbstractC2651r
            /* renamed from: a */
            protected final void mo29887a(View view, RecyclerView.C2654s c2654s, RecyclerView.AbstractC2651r.C2652a c2652a) {
                if (AbstractC2703o.this.f10308a == null) {
                    return;
                }
                AbstractC2703o abstractC2703o = AbstractC2703o.this;
                int[] mo29892a = abstractC2703o.mo29892a(abstractC2703o.f10308a.getLayoutManager(), view);
                int i = mo29892a[0];
                int i2 = mo29892a[1];
                int a = m40088a(Math.max(Math.abs(i), Math.abs(i2)));
                if (a <= 0) {
                    return;
                }
                c2652a.m40308a(i, i2, a, this.f10287b);
            }
        };
    }

    /* renamed from: b */
    public int[] mo29890b(int i, int i2) {
        this.f10309b.fling(0, 0, i, i2, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Integer.MAX_VALUE, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, Integer.MAX_VALUE);
        return new int[]{this.f10309b.getFinalX(), this.f10309b.getFinalY()};
    }
}
