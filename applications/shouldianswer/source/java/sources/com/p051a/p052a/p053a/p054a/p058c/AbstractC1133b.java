package com.p051a.p052a.p053a.p054a.p058c;

import android.graphics.Canvas;
import android.widget.EdgeEffect;
import androidx.core.p023g.C0552u;
import androidx.core.widget.C0600d;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
/* renamed from: com.a.a.a.a.c.b */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/b.class */
abstract class AbstractC1133b extends RecyclerView.AbstractC0955h {

    /* renamed from: a */
    private RecyclerView f3538a;

    /* renamed from: b */
    private EdgeEffect f3539b;

    /* renamed from: c */
    private EdgeEffect f3540c;

    /* renamed from: d */
    private boolean f3541d;

    /* renamed from: e */
    private int f3542e;

    /* renamed from: f */
    private int f3543f;

    public AbstractC1133b(RecyclerView recyclerView) {
        this.f3538a = recyclerView;
    }

    /* renamed from: a */
    private void m4124a(RecyclerView recyclerView) {
        if (this.f3539b == null) {
            this.f3539b = new EdgeEffect(recyclerView.getContext());
        }
        m4123a(recyclerView, this.f3539b, this.f3542e);
    }

    /* renamed from: a */
    private static void m4123a(RecyclerView recyclerView, EdgeEffect edgeEffect, int i) {
        int measuredWidth = recyclerView.getMeasuredWidth();
        int measuredHeight = recyclerView.getMeasuredHeight();
        int i2 = measuredWidth;
        int i3 = measuredHeight;
        if (m4118c(recyclerView)) {
            i2 = measuredWidth - (recyclerView.getPaddingLeft() + recyclerView.getPaddingRight());
            i3 = measuredHeight - (recyclerView.getPaddingTop() + recyclerView.getPaddingBottom());
        }
        int max = Math.max(0, i2);
        int max2 = Math.max(0, i3);
        int i4 = max;
        int i5 = max2;
        if (i != 0) {
            if (i == 2) {
                i4 = max;
                i5 = max2;
            } else {
                i5 = max;
                i4 = max2;
            }
        }
        edgeEffect.setSize(i5, i4);
    }

    /* renamed from: a */
    private static boolean m4125a(Canvas canvas, RecyclerView recyclerView, int i, EdgeEffect edgeEffect) {
        if (edgeEffect.isFinished()) {
            return false;
        }
        int save = canvas.save();
        boolean m4118c = m4118c(recyclerView);
        if (i == 0) {
            canvas.rotate(-90.0f);
            if (m4118c) {
                canvas.translate((-recyclerView.getHeight()) + recyclerView.getPaddingTop(), recyclerView.getPaddingLeft());
            } else {
                canvas.translate(-recyclerView.getHeight(), FlexItem.FLEX_GROW_DEFAULT);
            }
        } else if (i != 1) {
            if (i == 2) {
                canvas.rotate(90.0f);
                if (m4118c) {
                    canvas.translate(recyclerView.getPaddingTop(), (-recyclerView.getWidth()) + recyclerView.getPaddingRight());
                } else {
                    canvas.translate(FlexItem.FLEX_GROW_DEFAULT, -recyclerView.getWidth());
                }
            } else if (i == 3) {
                canvas.rotate(180.0f);
                if (m4118c) {
                    canvas.translate((-recyclerView.getWidth()) + recyclerView.getPaddingRight(), (-recyclerView.getHeight()) + recyclerView.getPaddingBottom());
                } else {
                    canvas.translate(-recyclerView.getWidth(), -recyclerView.getHeight());
                }
            }
        } else if (m4118c) {
            canvas.translate(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop());
        }
        boolean draw = edgeEffect.draw(canvas);
        canvas.restoreToCount(save);
        return draw;
    }

    /* renamed from: b */
    private void m4120b(RecyclerView recyclerView) {
        if (this.f3540c == null) {
            this.f3540c = new EdgeEffect(recyclerView.getContext());
        }
        m4123a(recyclerView, this.f3540c, this.f3543f);
    }

    /* renamed from: c */
    private static boolean m4118c(RecyclerView recyclerView) {
        return recyclerView.getLayoutManager().getClipToPadding();
    }

    /* renamed from: a */
    protected abstract int mo3960a(int i);

    /* renamed from: a */
    public void m4127a() {
        if (this.f3541d) {
            return;
        }
        this.f3542e = mo3960a(0);
        this.f3543f = mo3960a(1);
        this.f3538a.addItemDecoration(this);
        this.f3541d = true;
    }

    /* renamed from: a */
    public void m4126a(float f) {
        m4124a(this.f3538a);
        C0600d.m5993a(this.f3539b, f, 0.5f);
        C0552u.m6249d(this.f3538a);
    }

    /* renamed from: b */
    public void m4122b() {
        EdgeEffect edgeEffect = this.f3539b;
        boolean z = false;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = false | this.f3539b.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f3540c;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 = z | this.f3540c.isFinished();
        }
        if (z2) {
            C0552u.m6249d(this.f3538a);
        }
    }

    /* renamed from: b */
    public void m4121b(float f) {
        m4120b(this.f3538a);
        C0600d.m5993a(this.f3540c, f, 0.5f);
        C0552u.m6249d(this.f3538a);
    }

    /* renamed from: c */
    public void m4119c() {
        if (this.f3541d) {
            this.f3538a.removeItemDecoration(this);
            this.f3538a.addItemDecoration(this);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0955h
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0974t c0974t) {
        EdgeEffect edgeEffect = this.f3539b;
        boolean z = false;
        if (edgeEffect != null) {
            z = false | m4125a(canvas, recyclerView, this.f3542e, edgeEffect);
        }
        EdgeEffect edgeEffect2 = this.f3540c;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            z2 = z | m4125a(canvas, recyclerView, this.f3543f, edgeEffect2);
        }
        if (z2) {
            C0552u.m6249d(recyclerView);
        }
    }
}
