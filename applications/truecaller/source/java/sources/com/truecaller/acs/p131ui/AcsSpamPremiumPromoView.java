package com.truecaller.acs.p131ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.acs.C2778R;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p773g.p774a.View$OnClickListenerC14185e;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR%\u0010\u0011\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R%\u0010\u0014\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010¨\u0006\u0015"}, d2 = {"Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Ljava/lang/Runnable;", "listener", "Ls1/s;", "setOnLearnMoreClickListener", "(Ljava/lang/Runnable;)V", "f1", "()V", "v", "Ljava/lang/Runnable;", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "t", "Ls1/g;", "getTitle", "()Landroid/widget/TextView;", "title", "u", "getButton", "button", "acs_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.acs.ui.AcsSpamPremiumPromoView */
/* loaded from: classes4-dex2jar.jar:com/truecaller/acs/ui/AcsSpamPremiumPromoView.class */
public final class AcsSpamPremiumPromoView extends ConstraintLayout {

    /* renamed from: t */
    public final g f9714t = C19286f.m13660s(this, C2778R.C2780id.title);

    /* renamed from: u */
    public final g f9715u = C19286f.m13660s(this, C2778R.C2780id.button);

    /* renamed from: v */
    public Runnable f9716v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AcsSpamPremiumPromoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        View.inflate(C17422k.m16113E(context, true), C2778R.layout.view_spam_acs_premium_promo, this);
        getButton().setOnClickListener(new View$OnClickListenerC14185e(this));
    }

    private final TextView getButton() {
        return (TextView) this.f9715u.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f9714t.getValue();
    }

    /* renamed from: f1 */
    public final void m36007f1() {
        getTitle().setTextSize(2, 12.0f);
        TextView title = getTitle();
        Context context = getContext();
        int i = C2778R.color.fullscreen_acs_white_text_color;
        Object obj = C26467a.f74235a;
        title.setTextColor(C26467a.C26471d.m1787a(context, i));
        getButton().setBackgroundResource(C2778R.C2779drawable.bg_acs_button_view_profile);
        getButton().setTextColor(C26467a.C26471d.m1787a(getContext(), i));
    }

    public final void setOnLearnMoreClickListener(Runnable runnable) {
        l.e(runnable, "listener");
        this.f9716v = runnable;
    }
}
