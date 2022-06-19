package p193e.p194a.p1011l;

import p193e.p194a.p1011l.AbstractC16856e0;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.l.i0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/i0.class */
public final class C16937i0 extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ AbstractC16856e0.C16860d f47535b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16937i0(AbstractC16856e0.C16860d c16860d) {
        super(0);
        this.f47535b = c16860d;
    }

    public Object invoke() {
        AbstractC16856e0 abstractC16856e0 = AbstractC16856e0.this;
        AbstractC17237t1 abstractC17237t1 = (AbstractC17237t1) abstractC16856e0.f57683a;
        if (abstractC17237t1 != null) {
            String string = abstractC16856e0.f47275B.getString("subscriptionErrorResolveUrl");
            if (string == null) {
                string = "https://play.google.com/store/account/subscriptions";
            }
            l.d(string, "coreSettings.getString(C…LE_PLAY_SUBSCRIPTIONS_URL");
            abstractC17237t1.mo16346ay(string);
        }
        return s.a;
    }
}
