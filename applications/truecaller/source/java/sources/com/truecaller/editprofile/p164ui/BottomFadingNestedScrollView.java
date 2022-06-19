package com.truecaller.editprofile.p164ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.widget.NestedScrollView;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/truecaller/editprofile/ui/BottomFadingNestedScrollView;", "Landroidx/core/widget/NestedScrollView;", "", "getTopFadingEdgeStrength", "()F", "editprofile_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.editprofile.ui.BottomFadingNestedScrollView */
/* loaded from: classes9-dex2jar.jar:com/truecaller/editprofile/ui/BottomFadingNestedScrollView.class */
public final class BottomFadingNestedScrollView extends NestedScrollView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomFadingNestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    public float getTopFadingEdgeStrength() {
        return 0.0f;
    }
}
