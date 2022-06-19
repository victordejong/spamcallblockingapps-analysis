package p193e.p194a.p195a.p242j;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.C19497e0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.j.g */
/* loaded from: classes7-dex2jar.jar:e/a/a/j/g.class */
public final class C6422g {

    /* renamed from: a */
    public final AbstractC19462a f21356a;

    @Inject
    public C6422g(AbstractC19462a abstractC19462a) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f21356a = abstractC19462a;
    }

    /* renamed from: a */
    public final C19497e0 m31285a(C19497e0 c19497e0, Message message, Entity entity) {
        CharSequence charSequence;
        String str = entity.mo34895l() ? "Photo" : entity.mo34892w() ? "Video" : "Unknown";
        if (C10480a.m25934l1(message)) {
            charSequence = "Draft";
        } else {
            int i = message.f13390k;
            if (i == 1) {
                charSequence = "MMS";
            } else {
                charSequence = "Unknown";
                if (i == 2) {
                    charSequence = "IM";
                }
            }
        }
        String str2 = message.f13382c.f11569b != 4 ? "Single" : "Group";
        c19497e0.m13279c("mediaType", str);
        c19497e0.m13279c("messageType", charSequence);
        c19497e0.m13279c("peer", str2);
        return c19497e0;
    }

    /* renamed from: b */
    public void m31284b(String str, Message message, Entity entity) {
        l.e(str, "action");
        l.e(message, "message");
        l.e(entity, "entity");
        C19497e0 c19497e0 = new C19497e0("MediaViewerAction");
        c19497e0.m13279c("action", str);
        m31285a(c19497e0, message, entity);
        this.f21356a.mo13275a(c19497e0.m13281a());
    }
}
