package com.truecaller.details_view.p162ui.actionbutton;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Space;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1275v.p1276a.p1301x.C20864b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;", "Landroid/widget/LinearLayout;", "", "alpha", "Ls1/s;", "setAlpha", "(F)V", "Lcom/truecaller/details_view/ui/actionbutton/ActionButton;", "actionButton", "a", "(Lcom/truecaller/details_view/ui/actionbutton/ActionButton;)V", C22021b.f61237c, "()V", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.details_view.ui.actionbutton.ActionButtonBarView */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/actionbutton/ActionButtonBarView.class */
public final class ActionButtonBarView extends LinearLayout {

    /* renamed from: com.truecaller.details_view.ui.actionbutton.ActionButtonBarView$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/actionbutton/ActionButtonBarView$a.class */
    public static final class View$OnClickListenerC3867a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ActionButton f11731a;

        public View$OnClickListenerC3867a(ActionButton actionButton) {
            this.f11731a = actionButton;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ActionButton actionButton = this.f11731a;
            actionButton.f11729g.mo10648dd(actionButton);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionButtonBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* renamed from: a */
    public final void m35437a(ActionButton actionButton) {
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        C20864b c20864b = new C20864b(context, null, 0, 0, 14);
        c20864b.setId(actionButton.f11723a);
        c20864b.setTitle(actionButton.f11724b);
        c20864b.setIcon(actionButton.f11725c);
        c20864b.setOnClickedListener(new View$OnClickListenerC3867a(actionButton));
        c20864b.setTextColor(actionButton.f11726d);
        c20864b.setIconPainter(actionButton.f11727e);
        c20864b.setIconTag(actionButton.f11730h);
        c20864b.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        addView(c20864b);
    }

    /* renamed from: b */
    public final void m35436b() {
        Space space = new Space(getContext());
        space.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 0.5f));
        addView(space);
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof C20864b) {
                C20864b c20864b = (C20864b) childAt;
                c20864b.setTextAlpha(f);
                c20864b.setBorderAlpha(f);
            }
        }
    }
}
