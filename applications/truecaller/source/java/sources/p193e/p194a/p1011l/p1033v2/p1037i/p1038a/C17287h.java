package p193e.p194a.p1011l.p1033v2.p1037i.p1038a;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.truecaller.premium.C4334R;
import com.truecaller.premium.p173ui.subscription.buttons.SubscriptionButtonView;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.l.v2.i.a.h */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/i/a/h.class */
public final class C17287h extends m implements a<TextView> {

    /* renamed from: b */
    public final /* synthetic */ SubscriptionButtonView f48502b;

    /* renamed from: c */
    public final /* synthetic */ Context f48503c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17287h(SubscriptionButtonView subscriptionButtonView, Context context) {
        super(0);
        this.f48502b = subscriptionButtonView;
        this.f48503c = context;
    }

    public Object invoke() {
        TextView textView = new TextView(C17422k.m16113E(this.f48503c, true));
        SubscriptionButtonView subscriptionButtonView = this.f48502b;
        String string = this.f48503c.getString(C4334R.string.PremiumMonthlyIntroductoryNote);
        l.d(string, "context.getString(R.stri…mMonthlyIntroductoryNote)");
        int i = SubscriptionButtonView.f14317l;
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, subscriptionButtonView.m34800a(string)));
        textView.setGravity(17);
        textView.setTextAppearance(C4334R.style.StyleX_Text_Caption_Medium);
        textView.setTextColor(C19291g.m13612L(textView.getContext(), C4334R.attr.tcx_textTertiary));
        textView.setMaxLines(1);
        MediaSessionCompat.m43215n1(textView, 8, 12, 1, 2);
        return textView;
    }
}
