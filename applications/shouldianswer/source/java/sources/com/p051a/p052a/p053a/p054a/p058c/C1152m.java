package com.p051a.p052a.p053a.p054a.p058c;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.p023g.AbstractC0568z;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0564y;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import com.p051a.p052a.p053a.p054a.p059d.C1155a;
/* renamed from: com.a.a.a.a.c.m */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/m.class */
class C1152m extends AbstractC1131a {

    /* renamed from: o */
    private static final AbstractC0568z f3690o = new AbstractC0568z() { // from class: com.a.a.a.a.c.m.1
        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: a */
        public void mo3963a(View view) {
        }

        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: b */
        public void mo3962b(View view) {
            C0552u.m6233n(view).m6183a((AbstractC0568z) null);
            view.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
            view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
        }

        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: c */
        public void mo3961c(View view) {
        }
    };

    /* renamed from: c */
    private RecyclerView.AbstractC0977w f3691c;

    /* renamed from: d */
    private Interpolator f3692d;

    /* renamed from: e */
    private int f3693e;

    /* renamed from: f */
    private int f3694f;

    /* renamed from: g */
    private final Rect f3695g = new Rect();

    /* renamed from: h */
    private final Rect f3696h = new Rect();

    /* renamed from: i */
    private final Rect f3697i = new Rect();

    /* renamed from: j */
    private boolean f3698j;

    /* renamed from: k */
    private float f3699k;

    /* renamed from: l */
    private float f3700l;

    /* renamed from: m */
    private C1140i f3701m;

    /* renamed from: n */
    private boolean f3702n;

    public C1152m(RecyclerView recyclerView, RecyclerView.AbstractC0977w abstractC0977w, C1140i c1140i) {
        super(recyclerView, abstractC0977w);
        this.f3701m = c1140i;
        C1155a.m3952a(this.f3531a.getLayoutManager(), this.f3532b.itemView, this.f3697i);
    }

    /* renamed from: a */
    private static float m3971a(float f, float f2) {
        float f3 = (f * 0.7f) + (0.3f * f2);
        float f4 = f3;
        if (Math.abs(f3 - f2) < 0.01f) {
            f4 = f2;
        }
        return f4;
    }

    /* renamed from: a */
    private float m3968a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2) {
        View view = abstractC0977w2.itemView;
        int layoutPosition = abstractC0977w.getLayoutPosition();
        int layoutPosition2 = abstractC0977w2.getLayoutPosition();
        C1155a.m3952a(this.f3531a.getLayoutManager(), view, this.f3695g);
        C1155a.m3958a(view, this.f3696h);
        Rect rect = this.f3696h;
        Rect rect2 = this.f3695g;
        int height = view.getHeight() + rect.top + rect.bottom + rect2.top + rect2.bottom;
        int width = view.getWidth() + rect.left + rect.right + rect2.left + rect2.right;
        float left = width != 0 ? (abstractC0977w.itemView.getLeft() - this.f3693e) / width : 0.0f;
        float top = height != 0 ? (abstractC0977w.itemView.getTop() - this.f3694f) / height : 0.0f;
        int m3939e = C1155a.m3939e(this.f3531a);
        if (m3939e == 1) {
            left = layoutPosition > layoutPosition2 ? top : top + 1.0f;
        } else if (m3939e != 0) {
            left = 0.0f;
        } else if (layoutPosition <= layoutPosition2) {
            left += 1.0f;
        }
        return Math.min(Math.max(left, (float) FlexItem.FLEX_GROW_DEFAULT), 1.0f);
    }

    /* renamed from: a */
    private void m3967a(RecyclerView.AbstractC0977w abstractC0977w, RecyclerView.AbstractC0977w abstractC0977w2, float f) {
        View view = abstractC0977w2.itemView;
        int layoutPosition = abstractC0977w.getLayoutPosition();
        int layoutPosition2 = abstractC0977w2.getLayoutPosition();
        Rect rect = this.f3701m.f3602h;
        Rect rect2 = this.f3697i;
        int i = this.f3701m.f3596b + rect.top + rect.bottom + rect2.top + rect2.bottom;
        int i2 = this.f3701m.f3595a + rect.left + rect.right + rect2.left + rect2.right;
        Interpolator interpolator = this.f3692d;
        float f2 = f;
        if (interpolator != null) {
            f2 = interpolator.getInterpolation(f);
        }
        int m3939e = C1155a.m3939e(this.f3531a);
        if (m3939e == 0) {
            if (layoutPosition > layoutPosition2) {
                view.setTranslationX(f2 * i2);
            } else {
                view.setTranslationX((f2 - 1.0f) * i2);
            }
        } else if (m3939e != 1) {
        } else {
            if (layoutPosition > layoutPosition2) {
                view.setTranslationY(f2 * i);
            } else {
                view.setTranslationY((f2 - 1.0f) * i);
            }
        }
    }

    /* renamed from: a */
    public void m3972a() {
        if (this.f3698j) {
            return;
        }
        this.f3531a.addItemDecoration(this, 0);
        this.f3698j = true;
    }

    /* renamed from: a */
    public void m3970a(int i, int i2) {
        this.f3693e = i;
        this.f3694f = i2;
    }

    /* renamed from: a */
    public void m3969a(RecyclerView.AbstractC0977w abstractC0977w) {
        RecyclerView.AbstractC0977w abstractC0977w2 = this.f3691c;
        if (abstractC0977w2 == abstractC0977w) {
            return;
        }
        if (abstractC0977w2 != null) {
            C0564y m6233n = C0552u.m6233n(abstractC0977w2.itemView);
            m6233n.m6182b();
            m6233n.m6187a(10L).m6181b(FlexItem.FLEX_GROW_DEFAULT).m6178c(FlexItem.FLEX_GROW_DEFAULT).m6183a(f3690o).m6179c();
        }
        this.f3691c = abstractC0977w;
        RecyclerView.AbstractC0977w abstractC0977w3 = this.f3691c;
        if (abstractC0977w3 != null) {
            C0552u.m6233n(abstractC0977w3.itemView).m6182b();
        }
        this.f3702n = true;
    }

    /* renamed from: a */
    public void m3966a(boolean z) {
        if (this.f3698j) {
            this.f3531a.removeItemDecoration(this);
        }
        RecyclerView.AbstractC0950f itemAnimator = this.f3531a.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.mo4168d();
        }
        this.f3531a.stopScroll();
        if (this.f3691c != null) {
            m3967a(this.f3532b, this.f3691c, this.f3700l);
            m4130a(this.f3691c.itemView, 1.0f, 1.0f, FlexItem.FLEX_GROW_DEFAULT, 1.0f, z);
            this.f3691c = null;
        }
        this.f3532b = null;
        this.f3693e = 0;
        this.f3694f = 0;
        this.f3700l = FlexItem.FLEX_GROW_DEFAULT;
        this.f3699k = FlexItem.FLEX_GROW_DEFAULT;
        this.f3698j = false;
        this.f3701m = null;
    }

    /* renamed from: b */
    public void m3965b(Interpolator interpolator) {
        this.f3692d = interpolator;
    }

    /* renamed from: b */
    public void m3964b(RecyclerView.AbstractC0977w abstractC0977w) {
        if (abstractC0977w == this.f3691c) {
            m3969a((RecyclerView.AbstractC0977w) null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0955h
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0974t c0974t) {
        RecyclerView.AbstractC0977w abstractC0977w = this.f3532b;
        RecyclerView.AbstractC0977w abstractC0977w2 = this.f3691c;
        if (abstractC0977w == null || abstractC0977w2 == null || abstractC0977w.getItemId() != this.f3701m.f3597c) {
            return;
        }
        this.f3699k = m3968a(abstractC0977w, abstractC0977w2);
        if (this.f3702n) {
            this.f3702n = false;
            this.f3700l = this.f3699k;
        } else {
            this.f3700l = m3971a(this.f3700l, this.f3699k);
        }
        m3967a(abstractC0977w, abstractC0977w2, this.f3700l);
    }
}
