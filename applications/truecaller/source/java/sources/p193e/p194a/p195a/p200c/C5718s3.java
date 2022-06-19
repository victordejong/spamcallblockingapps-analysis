package p193e.p194a.p195a.p200c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import s1.z.c.l;
/* renamed from: e.a.a.c.s3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s3.class */
public final class C5718s3 implements AbstractC5687r3 {

    /* renamed from: a */
    public final AbstractC19462a f19170a;

    /* renamed from: b */
    public final AbstractC19510i0 f19171b;

    /* renamed from: c */
    public final AbstractC7290a f19172c;

    /* renamed from: d */
    public final AbstractC10060c f19173d;

    @Inject
    public C5718s3(AbstractC19462a abstractC19462a, AbstractC19510i0 abstractC19510i0, AbstractC7290a abstractC7290a, AbstractC10060c abstractC10060c) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19510i0, "messageAnalytics");
        l.e(abstractC7290a, "messagesMonitor");
        l.e(abstractC10060c, "insightsAnalyticsManager");
        this.f19170a = abstractC19462a;
        this.f19171b = abstractC19510i0;
        this.f19172c = abstractC7290a;
        this.f19173d = abstractC10060c;
    }

    /* renamed from: a */
    public final String m32770a(int i) {
        return i != 2 ? i != 3 ? i != 4 ? "personal" : "promotional" : "spam" : "other";
    }

    /* renamed from: b */
    public void m32769b(String str) {
        l.e(str, "type");
        AbstractC19510i0 abstractC19510i0 = this.f19171b;
        LinkedHashMap m8655X = C22128a.m8655X("ConversationPickerClick", "type");
        C22128a.m8681O0("ConversationPickerClick", C22128a.m8652Y("type", AnalyticsConstants.NAME, str, "value", m8655X, "type", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19510i0);
    }

    /* renamed from: c */
    public void m32768c(List<Message> list, String str, int i, boolean z) {
        l.e(list, "messages");
        for (Message message : list) {
            this.f19171b.mo13210p(message, str, i, z);
        }
    }

    /* renamed from: d */
    public void m32767d(Message message, Participant[] participantArr, int i) {
        l.e(message, "message");
        AbstractC7290a abstractC7290a = this.f19172c;
        String str = message.f13396q;
        if (participantArr == null) {
            participantArr = new Participant[0];
        }
        Entity[] entityArr = message.f13394o;
        l.d(entityArr, "message.entities");
        ArrayList arrayList = new ArrayList();
        for (Entity entity : entityArr) {
            if (entity instanceof BinaryEntity) {
                arrayList.add(entity);
            }
        }
        Object[] array = arrayList.toArray(new BinaryEntity[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        abstractC7290a.mo29839i(str, "conversation", i, participantArr, (BinaryEntity[]) array, message.f13365A);
    }

    /* renamed from: e */
    public void m32766e(String str) {
        l.e(str, "action");
        AbstractC19510i0 abstractC19510i0 = this.f19171b;
        LinkedHashMap m8655X = C22128a.m8655X("VoiceClipPlayback", "type");
        C22128a.m8681O0("VoiceClipPlayback", C22128a.m8652Y("action", AnalyticsConstants.NAME, str, "value", m8655X, "action", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19510i0);
    }

    /* renamed from: f */
    public void m32765f(String str) {
        l.e(str, "action");
        AbstractC19510i0 abstractC19510i0 = this.f19171b;
        LinkedHashMap m8655X = C22128a.m8655X("VoiceClipSend", "type");
        C22128a.m8681O0("VoiceClipSend", C22128a.m8652Y("action", AnalyticsConstants.NAME, str, "value", m8655X, "action", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19510i0);
    }
}
