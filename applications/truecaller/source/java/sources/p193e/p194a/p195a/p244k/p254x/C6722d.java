package p193e.p194a.p195a.p244k.p254x;

import android.content.ContentProviderOperation;
import android.content.Intent;
import android.os.Bundle;
import com.truecaller.calling.dialer.call_log.data.HistoryEventsScope;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.history.HistoryTransportInfo;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p195a.p244k.AbstractC6696o;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.C6676e;
import p193e.p194a.p195a.p244k.C6702p;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p580r.p587h.C10545d;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.k.x.d */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/x/d.class */
public final class C6722d implements AbstractC6704q<C6723e> {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC17348c> f22130a;

    /* renamed from: b */
    public final C6720b f22131b;

    /* renamed from: c */
    public final AbstractC6392i0 f22132c;

    /* renamed from: d */
    public final C6713w.AbstractC6717c f22133d;

    @Inject
    public C6722d(AbstractC19854f<AbstractC17348c> abstractC19854f, C6720b c6720b, AbstractC6392i0 abstractC6392i0, C6713w.AbstractC6717c abstractC6717c) {
        l.e(abstractC19854f, "callHistoryManager");
        l.e(c6720b, "historySyncHelper");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC6717c, "transactionExecutor");
        this.f22130a = abstractC19854f;
        this.f22131b = c6720b;
        this.f22132c = abstractC6392i0;
        this.f22133d = abstractC6717c;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: A */
    public boolean mo15188A() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: B */
    public AbstractC6704q.C6705a mo15187B(Message message, Participant[] participantArr) {
        l.e(message, "message");
        l.e(participantArr, "recipients");
        throw new IllegalStateException("History transport cannot enqueue any message");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: C */
    public Bundle mo15186C(Intent intent, int i) {
        l.e(intent, "intent");
        throw new IllegalStateException("History transport does not expect any intent");
    }

    /* renamed from: D */
    public final void m30529D(HistoryTransportInfo historyTransportInfo, C6723e c6723e) {
        C6713w.C6715b.C6716a m30532e = c6723e.m30532e(C8582g0.m28340A(historyTransportInfo.f13702a));
        m30532e.f22110c.put("read", (Integer) 1);
        m30532e.f22110c.put("seen", (Integer) 1);
        m30532e.f22110c.put("sync_status", (Integer) 1);
        c6723e.m30536a(m30532e.m30531a());
        int i = historyTransportInfo.f13704c;
        if (i != 0) {
            c6723e.f22135e.add(Long.valueOf(i));
            return;
        }
        c6723e.f22137g.add(Long.valueOf(historyTransportInfo.f13703b));
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: a */
    public C6702p mo15185a(Message message) {
        l.e(message, "message");
        throw new IllegalStateException("History transport should only sync up with already existing events");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: b */
    public AbstractC6696o mo15184b(Message message) {
        l.e(message, "message");
        throw new IllegalStateException("History transport cannot send messages");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: c */
    public int mo15183c(Message message) {
        l.e(message, "message");
        return 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: d */
    public boolean mo15182d(Message message, Entity entity, boolean z) {
        l.e(message, "message");
        l.e(entity, "entity");
        throw new IllegalStateException("History transport doesn't support entity download");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: e */
    public boolean mo15181e(Message message) {
        l.e(message, "message");
        throw new IllegalStateException("History transport doesn't support content download");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: f */
    public boolean mo15180f(Message message, Entity entity) {
        l.e(message, "message");
        l.e(entity, "entity");
        throw new IllegalStateException("History transport doesn't support restore thumbnail");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: g */
    public boolean mo15179g() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public String getName() {
        return "history";
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public int getType() {
        return 5;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: h */
    public void mo14986h(b bVar) {
        l.e(bVar, "time");
        this.f22132c.mo31147S0(5, ((e) bVar).a);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: i */
    public boolean mo15178i(Message message) {
        l.e(message, "message");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: j */
    public b mo14985j() {
        return new b(this.f22132c.mo31057i2(5, 0L));
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: k */
    public long mo15177k(long j) {
        return j;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: l */
    public String mo15176l(String str) {
        l.e(str, "simToken");
        return str;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: m */
    public long mo14984m(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, AbstractC6139g0 abstractC6139g0, b bVar, b bVar2, int i, List<ContentProviderOperation> list, AbstractC19244l0 abstractC19244l0, boolean z, C10545d c10545d) {
        l.e(abstractC6691j, "threadInfoCache");
        l.e(abstractC6694m, "participantCache");
        l.e(abstractC6139g0, "cursor");
        l.e(bVar, "timeTo");
        l.e(bVar2, "timeFrom");
        l.e(list, "operations");
        l.e(abstractC19244l0, "trace");
        l.e(c10545d, "messagesToClassify");
        return this.f22131b.mo30495j(abstractC6691j, abstractC6694m, abstractC6139g0, bVar, bVar2, i, list, abstractC19244l0, z, c10545d);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: n */
    public boolean mo15175n(C6713w c6713w) {
        l.e(c6713w, "transaction");
        C6723e c6723e = (C6723e) c6713w;
        boolean z = true;
        if (!(!c6723e.f22135e.isEmpty())) {
            z = true;
            if (!(!c6723e.f22137g.isEmpty())) {
                z = true;
                if (!(!c6723e.f22134d.isEmpty())) {
                    z = true;
                    if (!(!c6723e.f22136f.isEmpty())) {
                        z = !c6723e.mo30534c();
                    }
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: o */
    public boolean mo15174o(TransportInfo transportInfo, C6723e c6723e, boolean z, Set set) {
        boolean z2;
        C6723e c6723e2 = c6723e;
        l.e(transportInfo, "info");
        l.e(c6723e2, "transaction");
        l.e(set, "messagesToDelete");
        if (!(transportInfo instanceof HistoryTransportInfo)) {
            AssertionUtil.AlwaysFatal.fail("Wrong transport info type");
            z2 = false;
        } else {
            HistoryTransportInfo historyTransportInfo = (HistoryTransportInfo) transportInfo;
            int i = historyTransportInfo.f13704c;
            if (i != 0) {
                c6723e2.f22134d.add(Long.valueOf(i));
            }
            c6723e2.f22136f.add(Long.valueOf(historyTransportInfo.f13703b));
            z2 = true;
        }
        return z2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: p */
    public boolean mo15173p(C6723e c6723e) {
        C6723e c6723e2 = c6723e;
        l.e(c6723e2, "transaction");
        Set<Long> set = c6723e2.f22135e;
        if (set.isEmpty()) {
            set = null;
        }
        if (set != null) {
            this.f22130a.mo11854a().mo16224x(set).mo11831c();
        }
        Set<Long> set2 = c6723e2.f22137g;
        if (set2.isEmpty()) {
            set2 = null;
        }
        if (set2 != null) {
            this.f22130a.mo11854a().mo16251A(set2).mo11831c();
        }
        C6723e c6723e3 = null;
        if (!(c6723e2.f22134d.isEmpty() && c6723e2.f22136f.isEmpty())) {
            c6723e3 = c6723e2;
        }
        if (c6723e3 != null) {
            this.f22130a.mo11854a().mo16235m(i.S0(c6723e3.f22136f), i.S0(c6723e3.f22134d), HistoryEventsScope.CALL_AND_FLASH_EVENTS).mo11831c();
        }
        this.f22133d.mo30530a(c6723e2);
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: q */
    public void mo15172q(BinaryEntity binaryEntity) {
        l.e(binaryEntity, "entity");
        throw new IllegalStateException("History transport doesn't support attachments");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: r */
    public boolean mo15171r() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: s */
    public boolean mo15170s(Message message, int i, C6723e c6723e) {
        l.e(message, "message");
        l.e(c6723e, "transaction");
        throw new IllegalStateException("History message status can not be changed");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: t */
    public void mo15169t(long j) {
        throw new IllegalStateException("History transport does not support retry");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: u */
    public boolean mo15168u(TransportInfo transportInfo, long j, long j2, C6723e c6723e, boolean z) {
        boolean z2;
        C6723e c6723e2 = c6723e;
        l.e(transportInfo, "info");
        l.e(c6723e2, "transaction");
        if (!(transportInfo instanceof HistoryTransportInfo)) {
            AssertionUtil.AlwaysFatal.fail("Wrong transport info type");
            z2 = false;
        } else {
            m30529D((HistoryTransportInfo) transportInfo, c6723e2);
            z2 = true;
        }
        return z2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: v */
    public boolean mo15167v(Message message) {
        l.e(message, "message");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: w */
    public C6723e mo15166w() {
        return new C6723e();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: x */
    public boolean mo15165x(Participant participant) {
        l.e(participant, "participant");
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: y */
    public boolean mo15164y(TransportInfo transportInfo, C6723e c6723e) {
        boolean z;
        C6723e c6723e2 = c6723e;
        l.e(transportInfo, "info");
        l.e(c6723e2, "transaction");
        if (!(transportInfo instanceof HistoryTransportInfo)) {
            AssertionUtil.AlwaysFatal.fail("Wrong transport info type");
            z = false;
        } else {
            m30529D((HistoryTransportInfo) transportInfo, c6723e2);
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: z */
    public boolean mo15163z(String str, C6676e c6676e) {
        l.e(str, "text");
        l.e(c6676e, "result");
        c6676e.m30585a(0, 0, 0, 5);
        return false;
    }
}
