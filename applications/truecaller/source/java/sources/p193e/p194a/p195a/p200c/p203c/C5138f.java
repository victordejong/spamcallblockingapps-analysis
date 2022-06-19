package p193e.p194a.p195a.p200c.p203c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ContentFormat;
import com.tenor.android.core.constant.MediaFormat;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.draft.DraftArguments;
import com.truecaller.messaging.data.types.Entity;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p195a.p241i1.C6405h;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.a.c.c.f */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/f.class */
public final class C5138f {

    /* renamed from: a */
    public boolean f17560a;

    /* renamed from: b */
    public final DraftArguments f17561b;

    /* renamed from: c */
    public final AbstractC19462a f17562c;

    @Inject
    public C5138f(DraftArguments draftArguments, AbstractC19462a abstractC19462a) {
        l.e(draftArguments, "arguments");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f17561b = draftArguments;
        this.f17562c = abstractC19462a;
    }

    /* renamed from: a */
    public final AbstractC19502g.C19504b m33817a(String str, Participant[] participantArr, String str2) {
        String str3;
        boolean z;
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b(str);
        c19504b.m13263d("peer", C6405h.m31299e(participantArr) ? "group" : "121");
        l.e(str2, "contentType");
        if (r.n("tenor/gif", str2, true) || r.n(ContentFormat.IMAGE_GIF, str2, true)) {
            str3 = MediaFormat.GIF;
        } else {
            l.e(str2, "contentType");
            if (r.w(str2, "image/", true)) {
                str3 = "photo";
            } else {
                l.e(str2, "contentType");
                if (r.w(str2, "video/", true)) {
                    str3 = "video";
                } else {
                    l.e(str2, "contentType");
                    String[] strArr = Entity.f13301d;
                    int length = strArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            z = false;
                            break;
                        } else if (r.n(str2, strArr[i], true)) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                    str3 = z ? AnalyticsConstants.CONTACT : "document";
                }
            }
        }
        c19504b.m13263d("mediaType", str3);
        c19504b.m13263d("initiatedFrom", this.f17561b.f13079f ? "external" : "tc");
        l.d(c19504b, "AnalyticsEvent.Builder(n…AL else InitiatedFrom.TC)");
        return c19504b;
    }

    /* renamed from: b */
    public void m33816b(Participant[] participantArr, String str) {
        l.e(participantArr, "participants");
        l.e(str, "entityType");
        if (this.f17560a) {
            return;
        }
        AbstractC19502g m13266a = m33817a("FullScreenDraftView", participantArr, str).m13266a();
        AbstractC19462a abstractC19462a = this.f17562c;
        l.d(m13266a, "it");
        abstractC19462a.mo13271e(m13266a);
        this.f17560a = true;
    }
}
