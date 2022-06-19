package p193e.p194a.p195a.p258m;

import android.content.Context;
import android.text.SpannableString;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.m.d */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/d.class */
public final class C6794d extends RecyclerView.AbstractC0313c0 implements AbstractC6849f1 {

    /* renamed from: a */
    public final View f22339a;

    /* renamed from: b */
    public final AbstractC18905m f22340b;

    /* renamed from: e.a.a.m.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d$a.class */
    public static final class C6795a extends m implements l<View, s> {

        /* renamed from: c */
        public final /* synthetic */ BannerViewX f22342c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6795a(int i, boolean z, SpannableString spannableString, BannerViewX bannerViewX) {
            super(1);
            C6794d.this = r4;
            this.f22342c = bannerViewX;
        }

        /* renamed from: d */
        public Object m30434d(Object obj) {
            s1.z.c.l.e((View) obj, "it");
            C6794d c6794d = C6794d.this;
            AbstractC18905m abstractC18905m = c6794d.f22340b;
            BannerViewX bannerViewX = this.f22342c;
            s1.z.c.l.d(bannerViewX, "bannerView");
            abstractC18905m.mo14327t(new C18900h("ItemEvent.ACTION_ENABLE_CALLER_ID", c6794d, bannerViewX, (Object) null, 8));
            return s.a;
        }
    }

    /* renamed from: e.a.a.m.d$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d$b.class */
    public static final class C6796b extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ BannerViewX f22344c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6796b(BannerViewX bannerViewX) {
            super(0);
            C6794d.this = r4;
            this.f22344c = bannerViewX;
        }

        public Object invoke() {
            C6794d c6794d = C6794d.this;
            AbstractC18905m abstractC18905m = c6794d.f22340b;
            BannerViewX bannerViewX = this.f22344c;
            s1.z.c.l.d(bannerViewX, "bannerView");
            abstractC18905m.mo14327t(new C18900h("ItemEvent.ACTION_LEARN_MORE", c6794d, bannerViewX, (Object) null, 8));
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6794d(View view, AbstractC18905m abstractC18905m) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        s1.z.c.l.e(abstractC18905m, "eventReceiver");
        this.f22339a = view;
        this.f22340b = abstractC18905m;
    }

    /* renamed from: N4 */
    public static final SpannableString m30436N4(Context context, a<s> aVar) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(aVar, "learnMoreAction");
        String string = context.getString(2131887896);
        s1.z.c.l.d(string, "context.getString(R.string.StrLearnMore)");
        SpannableString spannableString = new SpannableString(context.getString(C2752R.string.promo_caller_id_banner_subtitle) + StringConstant.SPACE + string);
        int length = spannableString.length();
        spannableString.setSpan(new C6788c(aVar, context), length - string.length(), length, 33);
        return spannableString;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6849f1
    /* renamed from: E3 */
    public void mo30421E3() {
        m30435O4(true);
    }

    /* renamed from: O4 */
    public final void m30435O4(boolean z) {
        BannerViewX bannerViewX = (BannerViewX) this.f22339a.findViewById(2131362284);
        Context context = this.f22339a.getContext();
        Object obj = C26467a.f74235a;
        int m1787a = C26467a.C26471d.m1787a(context, 2131101239);
        C6796b c6796b = new C6796b(bannerViewX);
        Context context2 = this.f22339a.getContext();
        s1.z.c.l.d(context2, "view.context");
        s1.z.c.l.e(context2, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(c6796b, "learnMoreAction");
        String string = context2.getString(2131887896);
        s1.z.c.l.d(string, "context.getString(R.string.StrLearnMore)");
        SpannableString spannableString = new SpannableString(context2.getString(C2752R.string.promo_caller_id_banner_subtitle) + StringConstant.SPACE + string);
        int length = spannableString.length();
        spannableString.setSpan(new C6788c(c6796b, context2), length - string.length(), length, 33);
        bannerViewX.setTitleColor(m1787a);
        if (z) {
            BannerViewX.m35697a(bannerViewX, C2752R.C2753drawable.ic_caller_id_banner_icon, 0, 2, null);
        }
        bannerViewX.setSubtitleColor(m1787a);
        bannerViewX.setSubtitleWithLink(spannableString);
        bannerViewX.setPrimaryButtonCLickListener(new C6795a(m1787a, z, spannableString, bannerViewX));
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6849f1
    /* renamed from: w3 */
    public void mo30420w3() {
        m30435O4(false);
    }
}
