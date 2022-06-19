package p193e.p194a.p195a.p200c.p218o8;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.c.l;
/* renamed from: e.a.a.c.o8.f */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o8/f.class */
public final class C5637f extends RecyclerView.AbstractC0313c0 implements AbstractC5635d {

    /* renamed from: a */
    public final TextView f18948a;

    /* renamed from: b */
    public final AvatarXView f18949b;

    /* renamed from: c */
    public final C8243a f18950c;

    /* renamed from: d */
    public final AbstractC18905m f18951d;

    /* renamed from: e */
    public final boolean f18952e;

    /* renamed from: e.a.a.c.o8.f$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o8/f$a.class */
    public static final class View$OnClickListenerC5638a implements View.OnClickListener {
        public View$OnClickListenerC5638a() {
            C5637f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C5637f c5637f = C5637f.this;
            c5637f.f18951d.mo14327t(new C18900h("ItemEvent.CLICKED", c5637f, (View) null, (Object) null, 12));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5637f(View view, AbstractC18905m abstractC18905m, boolean z) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f18951d = abstractC18905m;
        this.f18952e = z;
        View findViewById = view.findViewById(2131364874);
        l.d(findViewById, "view.findViewById(R.id.name)");
        TextView textView = (TextView) findViewById;
        this.f18948a = textView;
        View findViewById2 = view.findViewById(2131362231);
        l.d(findViewById2, "view.findViewById(R.id.avatar)");
        AvatarXView avatarXView = (AvatarXView) findViewById2;
        this.f18949b = avatarXView;
        Context context = view.getContext();
        l.d(context, "view.context");
        C8243a c8243a = new C8243a(new C19235i0(context));
        avatarXView.setPresenter(c8243a);
        this.f18950c = c8243a;
        view.setOnClickListener(new View$OnClickListenerC5638a());
        if (z) {
            Context context2 = textView.getContext();
            Object obj = C26467a.f74235a;
            textView.setTextColor(C26467a.C26471d.m1787a(context2, 2131101388));
        }
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5635d
    /* renamed from: a */
    public void mo32837a(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(this.f18950c, avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5635d
    public void setName(String str) {
        l.e(str, AnalyticsConstants.NAME);
        this.f18948a.setText(str);
    }
}
