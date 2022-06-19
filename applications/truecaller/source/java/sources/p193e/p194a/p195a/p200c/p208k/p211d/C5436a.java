package p193e.p194a.p195a.p200c.p208k.p211d;

import com.truecaller.messaging.conversation.adapter.loader.LoadHistoryType;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import s1.z.c.l;
/* renamed from: e.a.a.c.k.d.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/d/a.class */
public final class C5436a implements AbstractC6225a {

    /* renamed from: a */
    public final long f18540a;

    /* renamed from: b */
    public final LoadHistoryType f18541b;

    public C5436a(long j, LoadHistoryType loadHistoryType) {
        l.e(loadHistoryType, "loadHistoryType");
        this.f18540a = j;
        this.f18541b = loadHistoryType;
    }

    @Override // p193e.p194a.p195a.p231g.p234l0.AbstractC6225a
    public long getId() {
        return this.f18540a;
    }
}
