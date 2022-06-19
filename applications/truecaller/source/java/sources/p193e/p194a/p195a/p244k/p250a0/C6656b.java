package p193e.p194a.p195a.p244k.p250a0;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import java.util.List;
import java.util.Set;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19244l0;
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
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.k.a0.b */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a0/b.class */
public final class C6656b implements AbstractC6704q<C6713w> {

    /* renamed from: a */
    public final AbstractC6704q<C6713w> f21943a;

    /* renamed from: b */
    public final C6713w.AbstractC6717c f21944b;

    public C6656b(AbstractC6704q<C6713w> abstractC6704q, C6713w.AbstractC6717c abstractC6717c) {
        l.e(abstractC6704q, "transport");
        l.e(abstractC6717c, "transactionExecutor");
        this.f21943a = abstractC6704q;
        this.f21944b = abstractC6717c;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: A */
    public boolean mo15188A() {
        return this.f21943a.mo15188A();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: B */
    public AbstractC6704q.C6705a mo15187B(Message message, Participant[] participantArr) {
        l.e(message, "message");
        l.e(participantArr, "recipients");
        AbstractC6704q.C6705a mo15187B = this.f21943a.mo15187B(message, participantArr);
        l.d(mo15187B, "transport.enqueueMessage(message, recipients)");
        return mo15187B;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: C */
    public Bundle mo15186C(Intent intent, int i) {
        l.e(intent, "intent");
        Bundle mo15186C = this.f21943a.mo15186C(intent, i);
        l.d(mo15186C, "transport.deliverIntent(intent, resultCode)");
        return mo15186C;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: a */
    public C6702p mo15185a(Message message) {
        l.e(message, "message");
        C6702p mo15185a = this.f21943a.mo15185a(message);
        l.d(mo15185a, "transport.storeMessage(message)");
        return mo15185a;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: b */
    public AbstractC6696o mo15184b(Message message) {
        l.e(message, "message");
        AbstractC6696o mo15184b = this.f21943a.mo15184b(message);
        l.d(mo15184b, "transport.sendMessage(message)");
        return mo15184b;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: c */
    public int mo15183c(Message message) {
        l.e(message, "message");
        return this.f21943a.mo15183c(message);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: d */
    public boolean mo15182d(Message message, Entity entity, boolean z) {
        l.e(message, "message");
        l.e(entity, "entity");
        return this.f21943a.mo15182d(message, entity, false);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: e */
    public boolean mo15181e(Message message) {
        l.e(message, "message");
        return this.f21943a.mo15181e(message);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: f */
    public boolean mo15180f(Message message, Entity entity) {
        l.e(message, "message");
        l.e(entity, "entity");
        return this.f21943a.mo15180f(message, entity);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: g */
    public boolean mo15179g() {
        return this.f21943a.mo15179g();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public String getName() {
        String name = this.f21943a.getName();
        l.d(name, "transport.name");
        return name;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public int getType() {
        return this.f21943a.getType();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: h */
    public void mo14986h(b bVar) {
        l.e(bVar, "time");
        this.f21943a.mo14986h(bVar);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: i */
    public boolean mo15178i(Message message) {
        l.e(message, "message");
        return this.f21943a.mo15178i(message);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: j */
    public b mo14985j() {
        b mo14985j = this.f21943a.mo14985j();
        l.d(mo14985j, "transport.lastSyncTime");
        return mo14985j;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: k */
    public long mo15177k(long j) {
        return this.f21943a.mo15177k(j);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: l */
    public String mo15176l(String str) {
        l.e(str, "simToken");
        String mo15176l = this.f21943a.mo15176l(str);
        l.d(mo15176l, "transport.prepareSimTokenToStore(simToken)");
        return mo15176l;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: m */
    public long mo14984m(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, AbstractC6139g0 abstractC6139g0, b bVar, b bVar2, int i, List<? extends ContentProviderOperation> list, AbstractC19244l0 abstractC19244l0, boolean z, C10545d c10545d) {
        l.e(abstractC6691j, "threadInfoCache");
        l.e(abstractC6694m, "participantCache");
        l.e(abstractC6139g0, "cursor");
        l.e(bVar, "timeTo");
        l.e(bVar2, "timeFrom");
        l.e(list, "operations");
        l.e(abstractC19244l0, "trace");
        l.e(c10545d, "messagesToClassify");
        return this.f21943a.mo14984m(abstractC6691j, abstractC6694m, abstractC6139g0, bVar, bVar2, i, list, abstractC19244l0, z, c10545d);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: n */
    public boolean mo15175n(C6713w c6713w) {
        boolean z;
        l.e(c6713w, "transaction");
        if (!c6713w.mo30534c()) {
            String str = c6713w.f22101a;
            Uri uri = C17891a1.f50888a;
            if (l.a(str, "com.truecaller")) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: o */
    public boolean mo15174o(TransportInfo transportInfo, C6713w c6713w, boolean z, Set<Long> set) {
        l.e(transportInfo, "info");
        l.e(c6713w, "transaction");
        l.e(set, "messagesToDelete");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: p */
    public boolean mo15173p(C6713w c6713w) {
        l.e(c6713w, "transaction");
        boolean z = false;
        boolean z2 = false;
        try {
            ContentProviderResult[] mo30530a = this.f21944b.mo30530a(c6713w);
            l.d(mo30530a, "transactionExecutor.execute(transaction)");
            if (mo30530a.length == 0) {
                z2 = true;
            }
            z = !z2;
        } catch (OperationApplicationException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        } catch (RemoteException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
        } catch (SecurityException e3) {
            AssertionUtil.reportThrowableButNeverCrash(e3);
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: q */
    public void mo15172q(BinaryEntity binaryEntity) {
        l.e(binaryEntity, "entity");
        this.f21943a.mo15172q(binaryEntity);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: r */
    public boolean mo15171r() {
        return this.f21943a.mo15171r();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: s */
    public boolean mo15170s(Message message, int i, C6713w c6713w) {
        l.e(message, "message");
        l.e(c6713w, "transaction");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: t */
    public void mo15169t(long j) {
        this.f21943a.mo15169t(j);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: u */
    public boolean mo15168u(TransportInfo transportInfo, long j, long j2, C6713w c6713w, boolean z) {
        l.e(transportInfo, "info");
        l.e(c6713w, "transaction");
        C6713w.C6715b.C6716a m30532e = c6713w.m30532e(C8582g0.m28340A(transportInfo.mo34879u()));
        m30532e.f22110c.put("read", (Integer) 1);
        if (z) {
            m30532e.f22110c.put("seen", (Integer) 1);
        }
        m30532e.f22110c.put("sync_status", (Integer) 1);
        c6713w.m30536a(m30532e.m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: v */
    public boolean mo15167v(Message message) {
        l.e(message, "message");
        return this.f21943a.mo15167v(message);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: w */
    public C6713w mo15166w() {
        Uri uri = C17891a1.f50888a;
        return new C6713w("com.truecaller");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: x */
    public boolean mo15165x(Participant participant) {
        l.e(participant, "participant");
        return this.f21943a.mo15165x(participant);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: y */
    public boolean mo15164y(TransportInfo transportInfo, C6713w c6713w) {
        l.e(transportInfo, "info");
        l.e(c6713w, "transaction");
        C6713w.C6715b.C6716a m30532e = c6713w.m30532e(C8582g0.m28340A(transportInfo.mo34879u()));
        m30532e.f22110c.put("seen", (Integer) 1);
        m30532e.f22110c.put("sync_status", (Integer) 1);
        c6713w.m30536a(m30532e.m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: z */
    public boolean mo15163z(String str, C6676e c6676e) {
        l.e(str, "text");
        l.e(c6676e, "result");
        return this.f21943a.mo15163z(str, c6676e);
    }
}
