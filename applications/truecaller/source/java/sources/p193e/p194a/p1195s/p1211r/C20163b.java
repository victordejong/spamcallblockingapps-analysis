package p193e.p194a.p1195s.p1211r;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.voip.debug.VoipAssistantPushNotification;
import java.util.Map;
import javax.inject.Inject;
import p193e.p194a.p619d.AbstractC11705f;
import s1.z.c.l;
/* renamed from: e.a.s.r.b */
/* loaded from: classes17-dex2jar.jar:e/a/s/r/b.class */
public final class C20163b implements AbstractC20162a {

    /* renamed from: a */
    public final AbstractC20164c f56825a;

    /* renamed from: b */
    public final AbstractC11705f f56826b;

    @Inject
    public C20163b(AbstractC20164c abstractC20164c, AbstractC11705f abstractC11705f) {
        l.e(abstractC20164c, "serviceValidationHelper");
        l.e(abstractC11705f, "voip");
        this.f56825a = abstractC20164c;
        this.f56826b = abstractC11705f;
    }

    @Override // p193e.p194a.p1195s.p1211r.AbstractC20162a
    /* renamed from: a */
    public void mo11458a(Map<String, String> map) {
        l.e(map, RemoteMessageConst.DATA);
        String str = map.get("push_type");
        if (str == null) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode != -1666564428) {
            if (hashCode != 648283203 || !str.equals("service_validation")) {
                return;
            }
            this.f56825a.mo11457j1();
        } else if (!str.equals("screen_response")) {
        } else {
            AbstractC11705f abstractC11705f = this.f56826b;
            String str2 = '+' + map.get("fromPhone");
            String str3 = map.get("body");
            if (str3 == null) {
                str3 = "";
            }
            abstractC11705f.mo24178o(new VoipAssistantPushNotification(str2, str3, "https://call-hero.s3.amazonaws.com/tracks/e7b57f4b969c9341c7206c34763f59e1.png"));
        }
    }
}
