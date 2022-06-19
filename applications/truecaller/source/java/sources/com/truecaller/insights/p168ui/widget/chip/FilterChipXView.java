package com.truecaller.insights.p168ui.widget.chip;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import kotlin.Metadata;
import p193e.p194a.p437c.p438a.p521s.p522g.AbstractC9600a;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nR%\u0010\u0011\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R%\u0010\u0018\u001a\n \f*\u0004\u0018\u00010\u00140\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u000e\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Le/a/c/a/s/g/a;", "presenter", "setPresenter", "(Le/a/c/a/s/g/a;)V", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "kotlin.jvm.PlatformType", "u", "Ls1/g;", "getAvatar", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatar", "t", "Le/a/c/a/s/g/a;", "Landroid/widget/TextView;", "v", "getTitle", "()Landroid/widget/TextView;", "title", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.widget.chip.FilterChipXView */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/widget/chip/FilterChipXView.class */
public final class FilterChipXView extends ConstraintLayout {

    /* renamed from: t */
    public AbstractC9600a f12955t;

    /* renamed from: u */
    public final g f12956u;

    /* renamed from: v */
    public final g f12957v;

    public FilterChipXView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FilterChipXView(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10) {
        /*
            r6 = this;
            r0 = r10
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r10
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L12
            r0 = 0
            r9 = r0
        L12:
            r0 = r7
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r0.<init>(r1, r2, r3)
            r0 = r6
            r1 = r6
            int r2 = com.truecaller.insights.p168ui.C4078R.C4080id.avatar
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f12956u = r1
            r0 = r6
            r1 = r6
            int r2 = com.truecaller.insights.p168ui.C4078R.C4080id.title
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f12957v = r1
            r0 = r6
            int r1 = com.truecaller.insights.p168ui.C4078R.layout.layout_tcx_filter_chip
            r2 = 1
            android.view.View r0 = p193e.p194a.p1129p5.p1132s0.C19286f.m13668k(r0, r1, r2)
            r0 = r6
            int r1 = com.truecaller.insights.p168ui.C4078R.C4079drawable.filter_background_selector
            r0.setBackgroundResource(r1)
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            int r1 = com.truecaller.insights.p168ui.C4078R.dimen.chip_tcx_padding
            int r0 = r0.getDimensionPixelSize(r1)
            r9 = r0
            r0 = r6
            r1 = r9
            r2 = r9
            r3 = r9
            r4 = r9
            r0.setPadding(r1, r2, r3, r4)
            r0 = r6
            r1 = 1
            r0.setClickable(r1)
            r0 = r6
            r1 = 1
            r0.setFocusable(r1)
            r0 = r6
            e.a.c.a.s.g.c r1 = new e.a.c.a.s.g.c
            r2 = r1
            r3 = r6
            r2.<init>(r3)
            r0.setOnClickListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.insights.p168ui.widget.chip.FilterChipXView.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    private final AvatarXView getAvatar() {
        return (AvatarXView) this.f12956u.getValue();
    }

    public final TextView getTitle() {
        return (TextView) this.f12957v.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC9600a abstractC9600a = this.f12955t;
        if (abstractC9600a != null) {
            abstractC9600a.f57683a = this;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC9600a abstractC9600a = this.f12955t;
        if (abstractC9600a != null) {
            abstractC9600a.f57683a = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setPresenter(AbstractC9600a abstractC9600a) {
        l.e(abstractC9600a, "presenter");
        abstractC9600a.f57683a = this;
        this.f12955t = abstractC9600a;
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(abstractC9600a.getTitle());
        getAvatar().setPresenter(abstractC9600a.mo27400Hj());
    }
}
