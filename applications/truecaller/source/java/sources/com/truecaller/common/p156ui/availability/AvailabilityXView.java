package com.truecaller.common.p156ui.availability;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p386s.AbstractC8331c;
import p193e.p194a.p372b0.p373a.p386s.AbstractC8332d;
import p193e.p194a.p372b0.p373a.p386s.C8333e;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\nJ\u0017\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\nJ\u0017\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\nJ\u0017\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\nJ\u0017\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\nJ\u0017\u0010\u001b\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR%\u0010%\u001a\n  *\u0004\u0018\u00010\u001f0\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R%\u0010(\u001a\n  *\u0004\u0018\u00010\u001f0\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\"\u001a\u0004\b'\u0010$R\u001d\u0010,\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\"\u001a\u0004\b*\u0010+R%\u00101\u001a\n  *\u0004\u0018\u00010-0-8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010\"\u001a\u0004\b/\u00100¨\u00062"}, d2 = {"Lcom/truecaller/common/ui/availability/AvailabilityXView;", "Lcom/google/android/material/card/MaterialCardView;", "Le/a/b0/a/s/d;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "", "activated", "setActivated", "(Z)V", "", "text", "setText", "(Ljava/lang/String;)V", "visible", "setTextVisibility", "setOnCallIconVisibility", "setSilentIconVisibility", "", RemoteMessageConst.Notification.COLOR, "setBackgroundColor", "(I)V", "f", AbstractC2405c.f7629a, "Le/a/b0/a/s/c;", "presenter", "setPresenter", "(Le/a/b0/a/s/c;)V", "j", "Le/a/b0/a/s/c;", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "k", "Ls1/g;", "getIconOnCall", "()Landroid/widget/ImageView;", "iconOnCall", "l", "getIconSilent", "iconSilent", "n", "getTextPadding", "()I", "textPadding", "Landroid/widget/TextView;", "m", "getTextAvailability", "()Landroid/widget/TextView;", "textAvailability", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.availability.AvailabilityXView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/availability/AvailabilityXView.class */
public class AvailabilityXView extends MaterialCardView implements AbstractC8332d {

    /* renamed from: j */
    public AbstractC8331c f11095j;

    /* renamed from: k */
    public final g f11096k = C19286f.m13660s(this, C3700R.C3702id.iconOnCall);

    /* renamed from: l */
    public final g f11097l = C19286f.m13660s(this, C3700R.C3702id.iconSilent);

    /* renamed from: m */
    public final g f11098m = C19286f.m13660s(this, C3700R.C3702id.textAvailability);

    /* renamed from: n */
    public final g f11099n = C25225a.m3978P1(new C8333e(this));

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AvailabilityXView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        C19286f.m13668k(this, C3700R.layout.layout_tcx_availability, true);
        setRadius(getResources().getDimension(C3700R.dimen.availability_tcx_corner_radius));
        setMinimumWidth(getResources().getDimensionPixelSize(C3700R.dimen.availability_tcx_min_width));
        setMinimumHeight(getResources().getDimensionPixelSize(C3700R.dimen.availability_tcx_min_height));
        setCardElevation(getResources().getDimension(C3700R.dimen.availability_tcx_elevation));
    }

    private final ImageView getIconOnCall() {
        return (ImageView) this.f11096k.getValue();
    }

    private final ImageView getIconSilent() {
        return (ImageView) this.f11097l.getValue();
    }

    private final TextView getTextAvailability() {
        return (TextView) this.f11098m.getValue();
    }

    private final int getTextPadding() {
        return ((Number) this.f11099n.getValue()).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p372b0.p373a.p386s.AbstractC8332d
    /* renamed from: c */
    public void mo28666c(boolean z) {
        C19286f.m13683U(this, z);
    }

    @Override // p193e.p194a.p372b0.p373a.p386s.AbstractC8332d
    /* renamed from: f */
    public void mo28665f(boolean z) {
        TextView textAvailability = getTextAvailability();
        textAvailability.setPaddingRelative(z ? getTextPadding() : 0, textAvailability.getPaddingTop(), getTextPadding(), textAvailability.getPaddingBottom());
        textAvailability.invalidate();
    }

    public void onAttachedToWindow() {
        AvailabilityXView.super.onAttachedToWindow();
        AbstractC8331c abstractC8331c = this.f11095j;
        if (abstractC8331c != null) {
            abstractC8331c.mo9029Y0(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onDetachedFromWindow() {
        AvailabilityXView.super.onDetachedFromWindow();
        AbstractC8331c abstractC8331c = this.f11095j;
        if (abstractC8331c != null) {
            abstractC8331c.mo9806c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setActivated(boolean z) {
        AvailabilityXView.super.setActivated(z);
        AbstractC8331c abstractC8331c = this.f11095j;
        if (abstractC8331c != null) {
            abstractC8331c.mo24304Hj(z);
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p386s.AbstractC8332d
    public void setBackgroundColor(int i) {
        setCardBackgroundColor(i);
    }

    @Override // p193e.p194a.p372b0.p373a.p386s.AbstractC8332d
    public void setOnCallIconVisibility(boolean z) {
        ImageView iconOnCall = getIconOnCall();
        l.d(iconOnCall, "iconOnCall");
        C19286f.m13683U(iconOnCall, z);
    }

    public final void setPresenter(AbstractC8331c abstractC8331c) {
        this.f11095j = abstractC8331c;
        if (abstractC8331c != null) {
            abstractC8331c.mo9029Y0(this);
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p386s.AbstractC8332d
    public void setSilentIconVisibility(boolean z) {
        ImageView iconSilent = getIconSilent();
        l.d(iconSilent, "iconSilent");
        C19286f.m13683U(iconSilent, z);
    }

    @Override // p193e.p194a.p372b0.p373a.p386s.AbstractC8332d
    public void setText(String str) {
        l.e(str, "text");
        TextView textAvailability = getTextAvailability();
        l.d(textAvailability, "textAvailability");
        textAvailability.setText(str);
        TextView textAvailability2 = getTextAvailability();
        l.d(textAvailability2, "textAvailability");
        C19286f.m13684T(textAvailability2);
    }

    @Override // p193e.p194a.p372b0.p373a.p386s.AbstractC8332d
    public void setTextVisibility(boolean z) {
        TextView textAvailability = getTextAvailability();
        l.d(textAvailability, "textAvailability");
        C19286f.m13683U(textAvailability, z);
    }
}
