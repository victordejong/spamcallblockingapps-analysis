package p193e.p194a.p1011l.p1024o2;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import javax.inject.Inject;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import s1.z.c.l;
/* renamed from: e.a.l.o2.g */
/* loaded from: classes12-dex2jar.jar:e/a/l/o2/g.class */
public final class C17019g implements AbstractC17018f {

    /* renamed from: a */
    public C17010a f47753a;

    /* renamed from: b */
    public AbstractC17012b f47754b;

    /* renamed from: c */
    public final AbstractC16832c2 f47755c;

    @Inject
    public C17019g(AbstractC16832c2 abstractC16832c2) {
        l.e(abstractC16832c2, "premiumSettings");
        this.f47755c = abstractC16832c2;
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17018f
    /* renamed from: a */
    public void mo16628a(FragmentManager fragmentManager, String str, int i, C16993f c16993f, C17280b c17280b) {
        l.e(fragmentManager, "fragmentManager");
        l.e(str, "promptText");
        l.e(c16993f, "subscription");
        l.e(c17280b, "button");
        l.e(str, "promptText");
        l.e(c16993f, "subscription");
        l.e(c17280b, "subscriptionButton");
        Fragment c17010a = new C17010a();
        Bundle bundle = new Bundle();
        bundle.putString("promptText", str);
        bundle.putInt("iconRes", i);
        bundle.putSerializable("subscription", c16993f);
        bundle.putSerializable("subscriptionButton", c17280b);
        c17010a.setArguments(bundle);
        c17010a.f47716a = this.f47754b;
        this.f47753a = c17010a;
        C26907a c26907a = new C26907a(fragmentManager);
        c26907a.mo1122k(0, c17010a, C17010a.class.getSimpleName(), 1);
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17018f
    /* renamed from: b */
    public void mo16627b(AbstractC17012b abstractC17012b) {
        this.f47754b = abstractC17012b;
    }

    @Override // p193e.p194a.p1011l.p1024o2.AbstractC17018f
    public void dismiss() {
        this.f47755c.mo16915H0(false);
        C17010a c17010a = this.f47753a;
        if (c17010a != null) {
            c17010a.dismissAllowingStateLoss();
        }
        this.f47753a = null;
    }
}
