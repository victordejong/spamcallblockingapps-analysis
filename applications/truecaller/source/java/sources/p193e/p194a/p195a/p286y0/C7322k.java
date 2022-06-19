package p193e.p194a.p195a.p286y0;

import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import java.util.List;
import java.util.UUID;
import javax.inject.Inject;
import org.apache.avro.AvroRuntimeException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17517e4;
import p193e.p194a.p1050l5.p1051a.C17589i4;
import p193e.p194a.p1050l5.p1051a.C17654m3;
import p193e.p194a.p1050l5.p1051a.C17822y1;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.a.y0.k */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/k.class */
public final class C7322k implements AbstractC7320j {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC19463a0> f23362a;

    @Inject
    public C7322k(AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        l.e(abstractC19854f, "eventsTracker");
        this.f23362a = abstractC19854f;
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7320j
    /* renamed from: a */
    public void mo29782a(k<? extends Participant, ? extends Contact> kVar, String str, String str2, List<? extends CharSequence> list) {
        String str3;
        l.e(kVar, "entry");
        l.e(str, "noSearchReason");
        l.e(str2, "source");
        Participant participant = (Participant) kVar.a;
        C17654m3.C17656b m15891a = C17654m3.m15891a();
        String str4 = participant.f11579l;
        m15891a.m15889b(!(str4 == null || str4.length() == 0));
        m15891a.m15887d(participant.m35447m());
        m15891a.m15883h(Integer.valueOf(Math.max(0, participant.f11583p)));
        m15891a.m15882i(Boolean.valueOf(participant.m35445o()));
        m15891a.m15885f(Boolean.valueOf(participant.f11576i == 1));
        m15891a.m15884g(Boolean.valueOf(participant.f11576i == 2));
        m15891a.m15886e(Boolean.valueOf(participant.f11577j));
        m15891a.m15888c(Boolean.valueOf((participant.f11581n & 64) != 0));
        l.d(m15891a, "ContactInfo.newBuilder()…URCE_PUSH_CALLER_ID != 0)");
        C17891a1.C17902k.m15637W0(m15891a, (Contact) kVar.b, null);
        C17654m3 build = m15891a.build();
        C17589i4.C17591b m15938a = C17589i4.m15938a();
        m15938a.m15935c(null);
        m15938a.m15936b(null);
        m15938a.m15934d(null);
        C17589i4 build2 = m15938a.build();
        if ((1 & participant.f11581n) == 0) {
            str3 = null;
        } else {
            String str5 = participant.f11572e;
            l.d(str5, "participant.normalizedAddress");
            str3 = C19286f.m13695I(str5);
        }
        C17517e4.C17519b m15987a = C17517e4.m15987a();
        m15987a.m15981f(participant.f11572e);
        m15987a.m15982e(build2);
        m15987a.m15985b(build);
        m15987a.m15984c(str);
        m15987a.m15983d(str3);
        C17517e4 build3 = m15987a.build();
        C17822y1.C17824b m15783a = C17822y1.m15783a();
        m15783a.m15777f(UUID.randomUUID().toString());
        m15783a.m15774i(str2);
        m15783a.m15773j(String.valueOf(20));
        m15783a.m15779d(null);
        m15783a.m15776g(false);
        m15783a.m15775h(false);
        m15783a.m15778e(C25225a.m3962T1(build3));
        m15783a.m15781b(list);
        try {
            this.f23362a.mo11854a().mo13111a(m15783a.build());
        } catch (AvroRuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }
}
