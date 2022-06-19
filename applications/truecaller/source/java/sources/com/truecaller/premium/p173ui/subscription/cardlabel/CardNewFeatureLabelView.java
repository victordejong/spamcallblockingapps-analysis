package com.truecaller.premium.p173ui.subscription.cardlabel;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1011l.p1033v2.p1037i.p1039b.View$OnClickListenerC17289b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\nR%\u0010\u0013\u001a\n \u000e*\u0004\u0018\u00010\r0\r8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R%\u0010\u0016\u001a\n \u000e*\u0004\u0018\u00010\r0\r8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0010\u001a\u0004\b\u0015\u0010\u0012R%\u0010\u001b\u001a\n \u000e*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0010\u001a\u0004\b\u0019\u0010\u001aR\u001e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;", "Landroid/widget/LinearLayout;", "Lkotlin/Function0;", "Ls1/s;", "dismissClickEvent", "setOnDismissClick", "(Ls1/z/b/a;)V", "", "titleString", "setTitle", "(Ljava/lang/String;)V", "descriptionString", "setDescription", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "a", "Ls1/g;", "getTitle", "()Landroid/widget/TextView;", "title", C22021b.f61237c, "getDescription", "description", "Landroid/widget/ImageView;", AbstractC2405c.f7629a, "getDismissBtn", "()Landroid/widget/ImageView;", "dismissBtn", "d", "Ls1/z/b/a;", "dismissBtnClick", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.subscription.cardlabel.CardNewFeatureLabelView */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView.class */
public final class CardNewFeatureLabelView extends LinearLayout {

    /* renamed from: a */
    public final g f14329a = C19286f.m13660s(this, 2131366469);

    /* renamed from: b */
    public final g f14330b = C19286f.m13660s(this, 2131363279);

    /* renamed from: c */
    public final g f14331c = C19286f.m13660s(this, C2752R.C2754id.dismissBtn);

    /* renamed from: d */
    public a<s> f14332d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardNewFeatureLabelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        setOrientation(1);
        C17422k.m16099S(this, C2752R.layout.premium_tab_new_feature_label_view, true, false, 4);
        getDismissBtn().setOnClickListener(new View$OnClickListenerC17289b(this));
    }

    private final TextView getDescription() {
        return (TextView) this.f14330b.getValue();
    }

    private final ImageView getDismissBtn() {
        return (ImageView) this.f14331c.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f14329a.getValue();
    }

    public final void setDescription(String str) {
        l.e(str, "descriptionString");
        TextView description = getDescription();
        l.d(description, "description");
        description.setText(str);
        TextView description2 = getDescription();
        l.d(description2, "description");
        C19286f.m13683U(description2, str.length() > 0);
    }

    public final void setOnDismissClick(a<s> aVar) {
        l.e(aVar, "dismissClickEvent");
        this.f14332d = aVar;
    }

    public final void setTitle(String str) {
        l.e(str, "titleString");
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(str);
        TextView title2 = getTitle();
        l.d(title2, "title");
        C19286f.m13683U(title2, str.length() > 0);
    }
}
