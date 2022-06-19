package p193e.p194a.p195a.p258m;

import android.content.res.Resources;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.banner.BannerViewX;
import java.util.List;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.m.s2 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/s2.class */
public final class C6950s2 extends RecyclerView.AbstractC0313c0 implements AbstractC6979y1 {

    /* renamed from: a */
    public final BannerViewX f22557a;

    /* renamed from: e.a.a.m.s2$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/s2$a.class */
    public static final class C6951a extends m implements l<String, CharSequence> {

        /* renamed from: b */
        public static final C6951a f22558b = new C6951a();

        public C6951a() {
            super(1);
        }

        /* renamed from: d */
        public Object m30357d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, "s");
            return "• " + str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6950s2(View view, AbstractC18905m abstractC18905m) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        s1.z.c.l.e(abstractC18905m, "eventReceiver");
        this.f22557a = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_UPDATE_APP", "ItemEvent.ACTION_DISMISS_UPDATE_APP");
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6979y1
    /* renamed from: b1 */
    public void mo30336b1(List<String> list) {
        String string;
        s1.z.c.l.e(list, "infoList");
        Resources resources = this.f22557a.getResources();
        if (!(!list.isEmpty())) {
            resources = null;
        }
        if (resources == null || (string = resources.getString(C2752R.string.UnlockNewFeaturesBannerSubtitle, i.O(list, StringConstant.NEW_LINE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C6951a.f22558b, 30))) == null) {
            return;
        }
        BannerViewX bannerViewX = this.f22557a;
        s1.z.c.l.d(string, "subtitle");
        bannerViewX.setSubtitle(string);
    }
}
