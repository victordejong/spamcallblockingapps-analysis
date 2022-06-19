package com.truecaller.contactfeedback.p158ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contactfeedback.C3744R;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/contactfeedback/ui/ErrorConstraintLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "extraSpace", "", "onCreateDrawableState", "(I)[I", "", "error", "Ls1/s;", "setError", "(Z)V", "t", "Z", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.contactfeedback.ui.ErrorConstraintLayout */
/* loaded from: classes5-dex2jar.jar:com/truecaller/contactfeedback/ui/ErrorConstraintLayout.class */
public final class ErrorConstraintLayout extends ConstraintLayout {

    /* renamed from: u */
    public static final int[] f11345u = {C3744R.attr.state_error};

    /* renamed from: t */
    public boolean f11346t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ErrorConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.f11346t) {
            View.mergeDrawableStates(onCreateDrawableState, f11345u);
        }
        l.d(onCreateDrawableState, "state");
        return onCreateDrawableState;
    }

    public final void setError(boolean z) {
        this.f11346t = z;
        refreshDrawableState();
    }
}
