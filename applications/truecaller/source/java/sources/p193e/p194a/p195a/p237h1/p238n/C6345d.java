package p193e.p194a.p195a.p237h1.p238n;

import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.messaging.data.types.Conversation;
import javax.inject.Inject;
import p193e.p194a.p1356x2.C21392b;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8246b;
import s1.z.c.l;
/* renamed from: e.a.a.h1.n.d */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/n/d.class */
public final class C6345d implements AbstractC8246b {

    /* renamed from: a */
    public final C21392b f21184a;

    @Inject
    public C6345d(C21392b c21392b) {
        l.e(c21392b, "conversationAvatarConfigProvider");
        this.f21184a = c21392b;
    }

    @Override // p193e.p194a.p372b0.p373a.p376b.AbstractC8246b
    /* renamed from: a */
    public AvatarXConfig mo9781a(Object obj) {
        Conversation conversation = (Conversation) obj;
        l.e(conversation, "type");
        return AvatarXConfig.m35701a(this.f21184a.mo9781a(conversation), null, null, null, null, false, false, false, false, false, false, false, false, false, false, null, false, 57599);
    }
}
