package p193e.p194a.p195a.p227e;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.listitem.ListItemX;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.c.l;
/* renamed from: e.a.a.e.a0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/a0.class */
public final class C5952a0 extends RecyclerView.AbstractC0313c0 implements AbstractC5970c0 {

    /* renamed from: a */
    public final ListItemX f19863a;

    /* renamed from: b */
    public final C8243a f19864b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5952a0(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(2131364650);
        l.d(findViewById, "view.findViewById(R.id.list_item)");
        ListItemX listItemX = (ListItemX) findViewById;
        this.f19863a = listItemX;
        Context context = view.getContext();
        l.d(context, "view.context");
        C8243a c8243a = new C8243a(new C19235i0(context));
        listItemX.setAvatarPresenter(c8243a);
        this.f19864b = c8243a;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5970c0
    /* renamed from: a */
    public void mo32107a(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(this.f19864b, avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5970c0
    /* renamed from: c */
    public void mo32106c(String str) {
        l.e(str, "text");
        ListItemX.m35644o1(this.f19863a, str, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5970c0
    /* renamed from: f */
    public void mo32105f(String str) {
        l.e(str, "time");
        ListItemX.m35639v1(this.f19863a, str, null, false, 6, null);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5970c0
    public void setTitle(String str) {
        l.e(str, "text");
        ListItemX.m35637x1(this.f19863a, str, false, 0, 0, 14, null);
    }
}
