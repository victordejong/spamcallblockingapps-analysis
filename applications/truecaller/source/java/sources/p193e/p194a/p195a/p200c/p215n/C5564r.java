package p193e.p194a.p195a.p200c.p215n;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.ImInviteGroupInfo;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p195a.p200c.AbstractC5524m5;
import p193e.p194a.p195a.p231g.C6113f;
/* renamed from: e.a.a.c.n.r */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/r.class */
public final class C5564r implements AbstractC5524m5 {

    /* renamed from: a */
    public final Participant[] f18785a;

    /* renamed from: b */
    public final Map<Long, String> f18786b = new LinkedHashMap();

    /* renamed from: c */
    public final Map<String, ImInviteGroupInfo> f18787c = new LinkedHashMap();

    /* renamed from: d */
    public ConversationMode f18788d = ConversationMode.DEFAULT;

    /* renamed from: e */
    public boolean f18789e = true;

    /* renamed from: f */
    public final Participant[] f18790f;

    @Inject
    public C5564r(@Named("participants") Participant[] participantArr) {
        this.f18790f = participantArr;
        this.f18785a = participantArr;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: A */
    public boolean mo32874A() {
        return this.f18789e;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: B */
    public boolean mo32873B() {
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: C */
    public int mo32872C() {
        return 0;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: D */
    public Long mo32871D() {
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: E */
    public boolean mo32870E() {
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: G */
    public ConversationMode mo32868G() {
        return this.f18788d;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: H */
    public boolean mo32867H() {
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: d1 */
    public boolean mo32861d1() {
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    public int getFilter() {
        return 1;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    public Long getId() {
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: h */
    public ImGroupInfo mo32857h() {
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: o */
    public Participant[] mo32852o() {
        return this.f18785a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: p */
    public Conversation mo32851p() {
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: q */
    public int mo32850q() {
        return 0;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: r */
    public C6113f mo32849r() {
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: u */
    public Long mo32846u() {
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: v */
    public boolean mo32845v(long j) {
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: w */
    public Map<String, ImInviteGroupInfo> mo32844w() {
        return this.f18787c;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: y */
    public boolean mo32842y(int i) {
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5524m5
    /* renamed from: z */
    public Map<Long, String> mo32841z() {
        return this.f18786b;
    }
}
