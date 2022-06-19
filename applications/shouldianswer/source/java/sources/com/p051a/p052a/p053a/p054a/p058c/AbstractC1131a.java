package com.p051a.p052a.p053a.p054a.p058c;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.p023g.AbstractC0568z;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0564y;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.a.a.a.a.c.a */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/c/a.class */
public abstract class AbstractC1131a extends RecyclerView.AbstractC0955h {

    /* renamed from: a */
    protected final RecyclerView f3531a;

    /* renamed from: b */
    protected RecyclerView.AbstractC0977w f3532b;

    /* renamed from: c */
    private int f3533c = 200;

    /* renamed from: d */
    private final int f3534d;

    /* renamed from: e */
    private Interpolator f3535e;

    public AbstractC1131a(RecyclerView recyclerView, RecyclerView.AbstractC0977w abstractC0977w) {
        this.f3531a = recyclerView;
        this.f3532b = abstractC0977w;
        this.f3534d = (int) ((recyclerView.getResources().getDisplayMetrics().density * 2.0f) + 0.5f);
    }

    /* renamed from: a */
    protected static void m4132a(View view, float f) {
        view.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
        view.setTranslationY(FlexItem.FLEX_GROW_DEFAULT);
        C0552u.m6259b(view, f);
        view.setAlpha(1.0f);
        view.setRotation(FlexItem.FLEX_GROW_DEFAULT);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
    }

    /* renamed from: a */
    public static void m4128a(RecyclerView recyclerView, RecyclerView.AbstractC0977w abstractC0977w, float f, float f2) {
        RecyclerView.AbstractC0950f itemAnimator = recyclerView.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.mo4167d(abstractC0977w);
        }
        abstractC0977w.itemView.setTranslationX(f);
        abstractC0977w.itemView.setTranslationY(f2);
    }

    /* renamed from: a */
    protected float m4131a(View view, float f, float f2, float f3, float f4) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int width = view.getWidth() / 2;
        int height = view.getHeight() / 2;
        float abs = width > 0 ? Math.abs(translationX / width) : 0.0f;
        float abs2 = height > 0 ? Math.abs(translationY / height) : 0.0f;
        float abs3 = Math.abs(Math.max(f, f2) - 1.0f);
        return Math.min(Math.max(Math.max(Math.max(Math.max(Math.max((float) FlexItem.FLEX_GROW_DEFAULT, abs), abs2), abs3), Math.abs(f3 * 0.033333335f)), Math.abs(f4 - 1.0f)), 1.0f);
    }

    /* renamed from: a */
    public void m4133a(int i) {
        this.f3533c = i;
    }

    /* renamed from: a */
    public void m4130a(View view, float f, float f2, float f3, float f4, boolean z) {
        final float m6231p = C0552u.m6231p(view);
        int m4131a = (int) (this.f3533c * m4131a(view, f, f2, f3, f4));
        if (!z || m4131a <= 20) {
            m4132a(view, m6231p);
            return;
        }
        C0564y m6233n = C0552u.m6233n(view);
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setRotation(f3);
        view.setAlpha(f4);
        C0552u.m6259b(view, m6231p + 1.0f);
        m6233n.m6182b();
        m6233n.m6187a(m4131a);
        m6233n.m6185a(this.f3535e);
        m6233n.m6181b(FlexItem.FLEX_GROW_DEFAULT);
        m6233n.m6178c(FlexItem.FLEX_GROW_DEFAULT);
        m6233n.m6174g(m6231p);
        m6233n.m6188a(1.0f);
        m6233n.m6177d(FlexItem.FLEX_GROW_DEFAULT);
        m6233n.m6176e(1.0f);
        m6233n.m6175f(1.0f);
        m6233n.m6183a(new AbstractC0568z() { // from class: com.a.a.a.a.c.a.1
            @Override // androidx.core.p023g.AbstractC0568z
            /* renamed from: a */
            public void mo3963a(View view2) {
            }

            @Override // androidx.core.p023g.AbstractC0568z
            /* renamed from: b */
            public void mo3962b(View view2) {
                C0552u.m6233n(view2).m6183a((AbstractC0568z) null);
                AbstractC1131a.m4132a(view2, m6231p);
                if (view2.getParent() instanceof RecyclerView) {
                    C0552u.m6249d((RecyclerView) view2.getParent());
                }
            }

            @Override // androidx.core.p023g.AbstractC0568z
            /* renamed from: c */
            public void mo3961c(View view2) {
            }
        });
        m6233n.m6179c();
    }

    /* renamed from: a */
    public void m4129a(Interpolator interpolator) {
        this.f3535e = interpolator;
    }
}
