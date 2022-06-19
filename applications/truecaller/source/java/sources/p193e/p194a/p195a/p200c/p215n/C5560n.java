package p193e.p194a.p195a.p200c.p215n;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.listitem.ListItemX;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.c.l;
/* renamed from: e.a.a.c.n.n */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/n.class */
public final class C5560n extends RecyclerView.AbstractC0313c0 implements AbstractC5559m {

    /* renamed from: a */
    public final ListItemX f18783a;

    /* renamed from: b */
    public final C8243a f18784b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5560n(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(C2752R.C2754id.report_item);
        l.d(findViewById, "view.findViewById(R.id.report_item)");
        ListItemX listItemX = (ListItemX) findViewById;
        this.f18783a = listItemX;
        Context context = view.getContext();
        l.d(context, "view.context");
        C8243a c8243a = new C8243a(new C19235i0(context));
        listItemX.setAvatarPresenter(c8243a);
        this.f18784b = c8243a;
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5559m
    /* renamed from: a */
    public void mo32974a(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(this.f18784b, avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5559m
    /* renamed from: f2 */
    public void mo32973f2(Drawable drawable, String str) {
        l.e(drawable, RemoteMessageConst.Notification.ICON);
        l.e(str, "text");
        ListItemX.m35644o1(this.f18783a, str, null, drawable, null, null, null, 0, 0, false, null, null, 2042, null);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5559m
    /* renamed from: p */
    public void mo32972p(String str) {
        l.e(str, "timestamp");
        ListItemX.m35639v1(this.f18783a, str, null, false, 6, null);
    }

    @Override // p193e.p194a.p195a.p200c.p215n.AbstractC5559m
    public void setName(String str) {
        l.e(str, AnalyticsConstants.NAME);
        ListItemX.m35637x1(this.f18783a, str, false, 0, 0, 14, null);
    }
}
