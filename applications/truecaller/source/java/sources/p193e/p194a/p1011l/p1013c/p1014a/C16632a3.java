package p193e.p194a.p1011l.p1013c.p1014a;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.a3 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/a3.class */
public final class C16632a3 extends AbstractC16668g implements AbstractC16773y1 {

    /* renamed from: d */
    public final C8243a f46727d;

    /* renamed from: e */
    public final TextView f46728e;

    /* renamed from: f */
    public final TextView f46729f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16632a3(View view) {
        super(view, null);
        l.e(view, ViewAction.VIEW);
        Context context = view.getContext();
        l.d(context, "view.context");
        C8243a c8243a = new C8243a(new C19235i0(context));
        this.f46727d = c8243a;
        View findViewById = view.findViewById(2131366469);
        l.d(findViewById, "view.findViewById(R.id.title)");
        this.f46728e = (TextView) findViewById;
        View findViewById2 = view.findViewById(2131363279);
        l.d(findViewById2, "view.findViewById(R.id.description)");
        this.f46729f = (TextView) findViewById2;
        ((AvatarXView) view.findViewById(2131362231)).setPresenter(c8243a);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16773y1
    /* renamed from: d */
    public void mo17054d(String str) {
        l.e(str, "text");
        this.f46729f.setText(str);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16773y1
    public void setAvatarXConfig(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(this.f46727d, avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16773y1
    public void setTitle(String str) {
        l.e(str, "text");
        this.f46728e.setText(str);
    }
}
