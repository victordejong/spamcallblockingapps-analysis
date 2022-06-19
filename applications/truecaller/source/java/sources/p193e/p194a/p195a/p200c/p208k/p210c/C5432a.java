package p193e.p194a.p195a.p200c.p208k.p210c;

import com.truecaller.messaging.conversation.ConversationAction;
import java.util.List;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import s1.z.c.l;
/* renamed from: e.a.a.c.k.c.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/c/a.class */
public final class C5432a implements AbstractC6225a {

    /* renamed from: a */
    public final long f18533a;

    /* renamed from: b */
    public final List<ConversationAction> f18534b;

    /* JADX WARN: Multi-variable type inference failed */
    public C5432a(long j, List<? extends ConversationAction> list) {
        l.e(list, "actions");
        this.f18533a = j;
        this.f18534b = list;
    }

    @Override // p193e.p194a.p195a.p231g.p234l0.AbstractC6225a
    public long getId() {
        return this.f18533a;
    }
}
