package p193e.p194a.p1195s.p1201n.p1202a;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.mopub.mobileads.VastIconXmlManager;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.callhero_assistant.C3605R;
import s1.z.c.l;
/* renamed from: e.a.s.n.a.c */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/a/c.class */
public final class C20054c extends RecyclerView.AbstractC0313c0 implements AbstractC20056e {

    /* renamed from: a */
    public final TextView f56630a;

    /* renamed from: b */
    public final TextView f56631b;

    /* renamed from: c */
    public final TextView f56632c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20054c(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(C3605R.C3606id.from);
        l.d(findViewById, "view.findViewById(R.id.from)");
        this.f56630a = (TextView) findViewById;
        View findViewById2 = view.findViewById(C3605R.C3606id.duration);
        l.d(findViewById2, "view.findViewById(R.id.duration)");
        this.f56631b = (TextView) findViewById2;
        View findViewById3 = view.findViewById(C3605R.C3606id.status);
        l.d(findViewById3, "view.findViewById(R.id.status)");
        this.f56632c = (TextView) findViewById3;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20056e
    /* renamed from: E1 */
    public void mo11609E1(String str) {
        l.e(str, RemoteMessageConst.FROM);
        this.f56630a.setText(str);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20056e
    /* renamed from: G */
    public void mo11608G(String str) {
        l.e(str, UpdateKey.STATUS);
        this.f56632c.setText(str);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1202a.AbstractC20056e
    /* renamed from: W */
    public void mo11607W(String str) {
        l.e(str, VastIconXmlManager.DURATION);
        this.f56631b.setText(str);
    }
}
