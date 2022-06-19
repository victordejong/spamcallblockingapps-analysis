package com.truecaller.common.p156ui.chip;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\bJ\u0017\u0010\n\u001a\u00020\u00042\b\b\u0001\u0010\t\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\bR%\u0010\u0011\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R%\u0010\u0016\u001a\n \f*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/truecaller/common/ui/chip/SimpleChipXView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "text", "Ls1/s;", "setTitle", "(Ljava/lang/String;)V", "", "(I)V", "iconRes", "setIcon", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "t", "Ls1/g;", "getIcon", "()Landroid/widget/ImageView;", RemoteMessageConst.Notification.ICON, "Landroid/widget/TextView;", "u", "getTitle", "()Landroid/widget/TextView;", "title", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.chip.SimpleChipXView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/chip/SimpleChipXView.class */
public final class SimpleChipXView extends ConstraintLayout {

    /* renamed from: t */
    public final g f11155t = C19286f.m13660s(this, C3700R.C3702id.icon);

    /* renamed from: u */
    public final g f11156u = C19286f.m13660s(this, C3700R.C3702id.title);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleChipXView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        C19286f.m13668k(this, C3700R.layout.layout_tcx_simple_chip, true);
        setBackgroundResource(C3700R.C3701drawable.ripple_tcx_chip);
        int dimensionPixelSize = getResources().getDimensionPixelSize(C3700R.dimen.simple_chip_tcx_padding);
        setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        setClickable(true);
        setFocusable(true);
    }

    /* renamed from: f1 */
    public static void m35695f1(SimpleChipXView simpleChipXView, int i, int i2, int i3) {
        if ((i3 & 2) != 0) {
            i2 = C19291g.m13612L(simpleChipXView.getContext(), C3700R.attr.tcx_brandBackgroundBlue);
        }
        simpleChipXView.getIcon().setImageResource(i);
        C19291g.m13516r1(simpleChipXView.getIcon(), i2);
    }

    private final ImageView getIcon() {
        return (ImageView) this.f11155t.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f11156u.getValue();
    }

    public final void setIcon(int i) {
        getIcon().setImageResource(i);
    }

    public final void setIconWithTint(int i) {
        m35695f1(this, i, 0, 2);
    }

    public final void setTitle(int i) {
        getTitle().setText(i);
    }

    public final void setTitle(String str) {
        l.e(str, "text");
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(str);
    }
}
