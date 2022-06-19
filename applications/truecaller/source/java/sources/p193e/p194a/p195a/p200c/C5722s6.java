package p193e.p194a.p195a.p200c;

import com.truecaller.messaging.data.types.Message;
import java.util.List;
import p193e.p194a.p1187r2.AbstractC19851d0;
import s1.z.c.l;
/* renamed from: e.a.a.c.s6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s6.class */
public final class C5722s6<R> implements AbstractC19851d0<String> {

    /* renamed from: a */
    public final /* synthetic */ C5768t6 f19174a;

    /* renamed from: b */
    public final /* synthetic */ Message f19175b;

    public C5722s6(C5768t6 c5768t6, Message message) {
        this.f19174a = c5768t6;
        this.f19175b = message;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(String str) {
        String str2 = str;
        this.f19174a.f19345f.mo32682r4();
        C5768t6 c5768t6 = this.f19174a;
        AbstractC5778u6 abstractC5778u6 = (AbstractC5778u6) c5768t6.f57683a;
        if (abstractC5778u6 != null) {
            Message message = this.f19175b;
            List<String> mo31183L = c5768t6.f19343d.mo31183L();
            l.d(mo31183L, "messageSettings.reactionEmojis");
            abstractC5778u6.mo32619xe(message, mo31183L, str2);
        }
    }
}
