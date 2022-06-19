package com.truecaller.insights.p168ui.filters.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.chip.Chip;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u001d\b\u0016\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004R\u001d\u0010\n\u001a\u00020\u00058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/truecaller/insights/ui/filters/view/SenderQuickFilterChip;", "Lcom/google/android/material/chip/Chip;", "Ls1/s;", "onDetachedFromWindow", "()V", "Le/a/p5/i0;", "x", "Ls1/g;", "getResourceProvider", "()Le/a/p5/i0;", "resourceProvider", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.filters.view.SenderQuickFilterChip */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/filters/view/SenderQuickFilterChip.class */
public final class SenderQuickFilterChip extends Chip {

    /* renamed from: x */
    public final g f12735x = C25225a.m3978P1(new C4084a());

    /* renamed from: com.truecaller.insights.ui.filters.view.SenderQuickFilterChip$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/filters/view/SenderQuickFilterChip$a.class */
    public static final class C4084a extends m implements a<C19235i0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4084a() {
            super(0);
            SenderQuickFilterChip.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.insights.ui.filters.view.SenderQuickFilterChip, android.widget.CheckBox] */
        public Object invoke() {
            View rootView = SenderQuickFilterChip.this.getRootView();
            l.d(rootView, "rootView");
            Context context = rootView.getContext();
            l.d(context, "rootView.context");
            return new C19235i0(context);
        }
    }

    public SenderQuickFilterChip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private final C19235i0 getResourceProvider() {
        return (C19235i0) this.f12735x.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onDetachedFromWindow() {
        SenderQuickFilterChip.super.onDetachedFromWindow();
    }
}
