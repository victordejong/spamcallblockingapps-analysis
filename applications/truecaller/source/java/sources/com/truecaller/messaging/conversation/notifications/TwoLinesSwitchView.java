package com.truecaller.messaging.conversation.notifications;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p200c.p217o.C5621l;
import p193e.p194a.p195a.p200c.p217o.View$OnClickListenerC5620k;
import s1.g;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000e\u001a\u00020\u00042\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0012\u001a\u00020\u00042\u001a\u0010\r\u001a\u0016\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010\u001e\u001a\u00020\u001a8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u001dR\u001d\u0010#\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0016\u001a\u0004\b!\u0010\"R\u001d\u0010&\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u0016\u001a\u0004\b%\u0010\"¨\u0006'"}, d2 = {"Lcom/truecaller/messaging/conversation/notifications/TwoLinesSwitchView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "text", "Ls1/s;", "setSubtitle", "(Ljava/lang/String;)V", "", "isChecked", "setIsChecked", "(Z)V", "Lkotlin/Function1;", "Landroid/view/View;", "listener", "setOnViewClickListener", "(Ls1/z/b/l;)V", "Lkotlin/Function2;", "Landroid/widget/CompoundButton;", "setOnCheckedChangeListener", "(Ls1/z/b/p;)V", "Landroidx/appcompat/widget/SwitchCompat;", "v", "Ls1/g;", "getSwitch", "()Landroidx/appcompat/widget/SwitchCompat;", "switch", "Landroid/widget/ImageView;", "w", "getIcon", "()Landroid/widget/ImageView;", RemoteMessageConst.Notification.ICON, "Landroid/widget/TextView;", "t", "getTitle", "()Landroid/widget/TextView;", "title", "u", "getSubtitle", "subtitle", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/notifications/TwoLinesSwitchView.class */
public final class TwoLinesSwitchView extends ConstraintLayout {

    /* renamed from: t */
    public final g f13101t = C19286f.m13660s(this, 2131366469);

    /* renamed from: u */
    public final g f13102u = C19286f.m13660s(this, 2131366110);

    /* renamed from: v */
    public final g f13103v = C19286f.m13660s(this, C2752R.C2754id.switchView);

    /* renamed from: w */
    public final g f13104w = C19286f.m13660s(this, 2131364203);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwoLinesSwitchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        C19286f.m13668k(this, C2752R.layout.layout_two_lines_switch, true);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2752R.styleable.TwoLinesSwitchView, 0, 0);
        getIcon().setImageDrawable(obtainStyledAttributes.getDrawable(0));
        getTitle().setText(obtainStyledAttributes.getString(1));
    }

    private final ImageView getIcon() {
        return (ImageView) this.f13104w.getValue();
    }

    private final TextView getSubtitle() {
        return (TextView) this.f13102u.getValue();
    }

    private final SwitchCompat getSwitch() {
        return (SwitchCompat) this.f13103v.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f13101t.getValue();
    }

    public final void setIsChecked(boolean z) {
        getSwitch().setChecked(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setOnCheckedChangeListener(p<? super CompoundButton, ? super Boolean, s> pVar) {
        SwitchCompat switchCompat = getSwitch();
        C5621l c5621l = pVar;
        if (pVar != 0) {
            c5621l = new C5621l(pVar);
        }
        switchCompat.setOnCheckedChangeListener(c5621l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setOnViewClickListener(s1.z.b.l<? super View, s> lVar) {
        View$OnClickListenerC5620k view$OnClickListenerC5620k = lVar;
        if (lVar != 0) {
            view$OnClickListenerC5620k = new View$OnClickListenerC5620k(lVar);
        }
        setOnClickListener(view$OnClickListenerC5620k);
    }

    public final void setSubtitle(String str) {
        C19286f.m13683U(getSubtitle(), str != null);
        getSubtitle().setText(str);
    }
}
