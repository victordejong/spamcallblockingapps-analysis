package p193e.p194a.p1066n;

import android.content.ContentProviderResult;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import java.util.Set;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p195a.p244k.AbstractC6696o;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.C6676e;
import p193e.p194a.p195a.p244k.C6702p;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.z.c.l;
/* renamed from: e.a.n.h0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/h0.class */
public abstract class AbstractC18338h0 implements AbstractC6704q<C6713w> {

    /* renamed from: a */
    public final C6713w.AbstractC6717c f51795a;

    public AbstractC18338h0(C6713w.AbstractC6717c abstractC6717c) {
        l.e(abstractC6717c, "transactionExecutor");
        this.f51795a = abstractC6717c;
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
        throw new IllegalStateException("Backup transport can not be used to enqueue a message.");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: C */
    public Bundle mo15186C(Intent intent, int i) {
        l.e(intent, "intent");
        throw new IllegalStateException("Backup transport can not be used to handle received messages.");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: a */
    public C6702p mo15185a(Message message) {
        l.e(message, "message");
        throw new IllegalStateException("Backup transport can not be used to store a message.");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: b */
    public AbstractC6696o mo15184b(Message message) {
        l.e(message, "message");
        throw new IllegalStateException("Backup transport can not be used to send a message.");
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
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: e */
    public boolean mo15181e(Message message) {
        l.e(message, "message");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: f */
    public boolean mo15180f(Message message, Entity entity) {
        l.e(message, "message");
        l.e(entity, "entity");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: g */
    public boolean mo15179g() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public String getName() {
        return "backup";
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: i */
    public boolean mo15178i(Message message) {
        l.e(message, "message");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: k */
    public long mo15177k(long j) {
        throw new IllegalStateException("Backup transport can not be used to store a message.");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: l */
    public String mo15176l(String str) {
        l.e(str, "simToken");
        return "-1";
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
        c6713w.m30536a(c6713w.m30533d(C8582g0.m28340A(transportInfo.mo34879u())).m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: p */
    public boolean mo15173p(C6713w c6713w) {
        l.e(c6713w, "transaction");
        boolean z = false;
        boolean z2 = false;
        try {
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        if (c6713w.mo30534c()) {
            return false;
        }
        ContentProviderResult[] mo30530a = this.f51795a.mo30530a(c6713w);
        l.d(mo30530a, "transactionExecutor.execute(transaction)");
        if (mo30530a.length == 0) {
            z2 = true;
        }
        z = !z2;
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: q */
    public void mo15172q(BinaryEntity binaryEntity) {
        l.e(binaryEntity, "entity");
        throw new IllegalStateException("Backup transport can not be used to cancel attachments.");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: r */
    public boolean mo15171r() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: s */
    public boolean mo15170s(Message message, int i, C6713w c6713w) {
        l.e(message, "message");
        l.e(c6713w, "transaction");
        C6713w.C6715b.C6716a m30532e = c6713w.m30532e(C8582g0.m28340A(message.f13380a));
        m30532e.f22110c.put(UpdateKey.STATUS, Integer.valueOf(i));
        c6713w.m30536a(m30532e.m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: t */
    public void mo15169t(long j) {
        throw new IllegalStateException("Backup transport can not retry messages.");
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
        c6713w.m30536a(m30532e.m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: v */
    public boolean mo15167v(Message message) {
        l.e(message, "message");
        return false;
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
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: y */
    public boolean mo15164y(TransportInfo transportInfo, C6713w c6713w) {
        l.e(transportInfo, "info");
        l.e(c6713w, "transaction");
        C6713w.C6715b.C6716a m30532e = c6713w.m30532e(C8582g0.m28340A(transportInfo.mo34879u()));
        m30532e.f22110c.put("seen", (Integer) 1);
        c6713w.m30536a(m30532e.m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: z */
    public boolean mo15163z(String str, C6676e c6676e) {
        l.e(str, "text");
        l.e(c6676e, "result");
        return false;
    }
}
