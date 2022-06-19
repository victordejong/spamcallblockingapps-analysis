package p193e.p194a.p1275v.p1276a.p1283c0;

import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.common.event.ViewActionEvent;
import e.m.d.y.n;
import java.util.Objects;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p997k3.p1000l.C16496d;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.c0.g */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c0/g.class */
public final class C20709g extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C16496d f58309b;

    /* renamed from: c */
    public final /* synthetic */ C20713k f58310c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20709g(C16496d c16496d, C20713k c20713k) {
        super(0);
        this.f58309b = c16496d;
        this.f58310c = c20713k;
    }

    public Object invoke() {
        C20713k c20713k = this.f58310c;
        C16496d c16496d = this.f58309b;
        C20879a c20879a = c20713k.f58316b;
        String str = c16496d.f46385d;
        l.d(str, "action.packageName");
        Objects.requireNonNull(c20879a);
        l.e(str, "subAction");
        l.e("detailView", AnalyticsConstants.CONTEXT);
        l.e(str, "subAction");
        l.e("externalApp", "action");
        n.B0(new ViewActionEvent("externalApp", str, "detailView"), c20879a.f58671b);
        AbstractC20707e abstractC20707e = (AbstractC20707e) c20713k.f57683a;
        if (abstractC20707e != null) {
            Intent intent = c16496d.f46384c;
            l.d(intent, "action.actionIntent");
            abstractC20707e.mo10806V(intent);
        }
        return s.a;
    }
}
