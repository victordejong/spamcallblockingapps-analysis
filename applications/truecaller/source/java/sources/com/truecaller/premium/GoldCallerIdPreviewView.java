package com.truecaller.premium;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.ShineView;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import kotlin.Metadata;
import p193e.p194a.p1011l.p1025p2.C17135n;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.C8311g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\f\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0016\u0010\u000e\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\tR\u0019\u0010\u0014\u001a\u00020\u000f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\t¨\u0006\u001b"}, d2 = {"Lcom/truecaller/premium/GoldCallerIdPreviewView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/l/p2/n;", RemoteMessageConst.DATA, "Ls1/s;", "f1", "(Le/a/l/p2/n;)V", "Landroid/widget/TextView;", "t", "Landroid/widget/TextView;", "titleView", "u", "subTitleView", "w", "numberTypeView", "Lcom/truecaller/common/ui/ShineView;", "y", "Lcom/truecaller/common/ui/ShineView;", "getShineView", "()Lcom/truecaller/common/ui/ShineView;", "shineView", "Le/a/b0/a/b/a;", "x", "Le/a/b0/a/b/a;", "avatarPresenter", "v", "numberView", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/GoldCallerIdPreviewView.class */
public final class GoldCallerIdPreviewView extends ConstraintLayout {

    /* renamed from: t */
    public final TextView f14188t;

    /* renamed from: u */
    public final TextView f14189u;

    /* renamed from: v */
    public final TextView f14190v;

    /* renamed from: w */
    public final TextView f14191w;

    /* renamed from: x */
    public final C8243a f14192x;

    /* renamed from: y */
    public final ShineView f14193y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GoldCallerIdPreviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        View.inflate(context, C2752R.layout.view_gold_caller_id_preview, this);
        setClipChildren(false);
        C19235i0 c19235i0 = new C19235i0(context);
        C8243a c8243a = new C8243a(c19235i0);
        this.f14192x = c8243a;
        C8311g c8311g = new C8311g(c19235i0);
        c8311g.setCornerRadius(c19235i0.mo13770H(2131165429));
        setBackground(c8311g);
        ((AvatarXView) findViewById(C2752R.C2754id.caller_id_photo)).setPresenter(c8243a);
        View findViewById = findViewById(C2752R.C2754id.caller_id_title);
        l.d(findViewById, "findViewById(R.id.caller_id_title)");
        this.f14188t = (TextView) findViewById;
        View findViewById2 = findViewById(C2752R.C2754id.caller_id_subtitle);
        l.d(findViewById2, "findViewById(R.id.caller_id_subtitle)");
        this.f14189u = (TextView) findViewById2;
        View findViewById3 = findViewById(C2752R.C2754id.caller_id_number);
        l.d(findViewById3, "findViewById(R.id.caller_id_number)");
        this.f14190v = (TextView) findViewById3;
        View findViewById4 = findViewById(C2752R.C2754id.caller_id_number_type);
        l.d(findViewById4, "findViewById(R.id.caller_id_number_type)");
        this.f14191w = (TextView) findViewById4;
        View findViewById5 = findViewById(C2752R.C2754id.gold_shine);
        l.d(findViewById5, "findViewById(R.id.gold_shine)");
        this.f14193y = (ShineView) findViewById5;
    }

    /* renamed from: f1 */
    public final void m34826f1(C17135n c17135n) {
        if (c17135n != null) {
            boolean z = false;
            C8243a.m28739ok(this.f14192x, new AvatarXConfig(c17135n.f48102a, c17135n.f48105d, null, C17891a1.C17902k.m15693B(c17135n.f48103b), false, false, false, false, false, true, false, false, false, false, null, false, 65012), false, 2, null);
            this.f14188t.setText(c17135n.f48103b);
            this.f14189u.setText(c17135n.f48104c);
            TextView textView = this.f14189u;
            String str = c17135n.f48104c;
            if (str == null || str.length() == 0) {
                z = true;
            }
            C19286f.m13683U(textView, !z);
            this.f14190v.setText(c17135n.f48105d);
            this.f14191w.setText(c17135n.f48106e);
            ((ImageView) findViewById(C2752R.C2754id.gold_logo)).setImageResource(c17135n.f48107f ? 2131232299 : 2131232776);
        }
    }

    public final ShineView getShineView() {
        return this.f14193y;
    }
}
