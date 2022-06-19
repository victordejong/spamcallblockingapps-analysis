package p193e.p194a.p195a.p244k.p251b0;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.status.StatusTransportInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
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
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p587h.C10545d;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.k.b0.a */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/b0/a.class */
public final class C6668a implements AbstractC6704q<C6669b> {

    /* renamed from: a */
    public final ContentResolver f22002a;

    /* renamed from: b */
    public final C6713w.AbstractC6717c f22003b;

    @Inject
    public C6668a(ContentResolver contentResolver, C6713w.AbstractC6717c abstractC6717c) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6717c, "transactionExecutor");
        this.f22002a = contentResolver;
        this.f22003b = abstractC6717c;
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
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: C */
    public Bundle mo15186C(Intent intent, int i) {
        l.e(intent, "intent");
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: a */
    public C6702p mo15185a(Message message) {
        ContentProviderResult[] contentProviderResultArr;
        l.e(message, "message");
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        TransportInfo transportInfo = message.f13393n;
        Objects.requireNonNull(transportInfo, "null cannot be cast to non-null type com.truecaller.messaging.transport.status.StatusTransportInfo");
        StatusTransportInfo statusTransportInfo = (StatusTransportInfo) transportInfo;
        arrayList.add(ContentProviderOperation.newAssertQuery(C8582g0.m28305o(6)).withSelection("raw_id = ?", new String[]{statusTransportInfo.f13888b}).withExpectedCount(0).build());
        C10480a.m25969e1(arrayList, message.f13382c);
        int m25974d1 = C10480a.m25974d1(arrayList, i.y0(message.f13382c), false);
        int size = arrayList.size();
        ContentProviderOperation.Builder withValue = ContentProviderOperation.newInsert(C8582g0.m28295y()).withValueBackReference("conversation_id", m25974d1).withValue("participant_id", -1);
        ContentValues contentValues = new ContentValues();
        b bVar = message.f13384e;
        l.d(bVar, "date");
        contentValues.put("date", Long.valueOf(((e) bVar).a));
        b bVar2 = message.f13383d;
        l.d(bVar2, "dateSent");
        contentValues.put("date_sent", Long.valueOf(((e) bVar2).a));
        contentValues.put(UpdateKey.STATUS, Integer.valueOf(message.f13386g));
        contentValues.put("seen", (Integer) 1);
        contentValues.put("read", Boolean.valueOf(message.f13388i));
        contentValues.put("transport", Integer.valueOf(message.f13390k));
        contentValues.put("category", (Integer) 2);
        contentValues.put("classification", (Integer) 2);
        contentValues.put("sequence_number", Long.valueOf(message.f13367C));
        ContentProviderOperation.Builder withValues = withValue.withValues(contentValues);
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("raw_id", statusTransportInfo.f13888b);
        arrayList.add(withValues.withValues(contentValues2).build());
        AssertionUtil.AlwaysFatal.isTrue(message.f13394o.length == 1, new String[0]);
        Entity[] entityArr = message.f13394o;
        l.d(entityArr, "message.entities");
        Object m3845s0 = C25225a.m3845s0(entityArr);
        l.d(m3845s0, "message.entities.first()");
        Entity entity = (Entity) m3845s0;
        AssertionUtil.AlwaysFatal.isTrue(entity.mo34894r(), new String[0]);
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C8582g0.m28296x());
        ContentValues contentValues3 = new ContentValues();
        entity.mo34994c(contentValues3);
        arrayList.add(newInsert.withValues(contentValues3).withValueBackReference("message_id", size).build());
        try {
            ContentResolver contentResolver = this.f22002a;
            Uri uri = C17891a1.f50888a;
            contentProviderResultArr = contentResolver.applyBatch("com.truecaller", arrayList);
        } catch (OperationApplicationException | RemoteException e) {
            contentProviderResultArr = null;
        }
        return (contentProviderResultArr != null ? contentProviderResultArr.length : 0) > 0 ? new C6702p(true, false, false, null) : new C6702p(false, false, false, null);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: b */
    public AbstractC6696o mo15184b(Message message) {
        l.e(message, "message");
        throw new UnsupportedOperationException();
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
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: e */
    public boolean mo15181e(Message message) {
        l.e(message, "message");
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: f */
    public boolean mo15180f(Message message, Entity entity) {
        l.e(message, "message");
        l.e(entity, "entity");
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: g */
    public boolean mo15179g() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public String getName() {
        return UpdateKey.STATUS;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public int getType() {
        return 6;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: h */
    public void mo14986h(b bVar) {
        l.e(bVar, "time");
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
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        return bVar;
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
        return Long.MIN_VALUE;
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
    public boolean mo15174o(TransportInfo transportInfo, C6669b c6669b, boolean z, Set set) {
        C6669b c6669b2 = c6669b;
        l.e(transportInfo, "info");
        l.e(c6669b2, "transaction");
        l.e(set, "messagesToDelete");
        C6713w.C6715b.C6716a m30533d = c6669b2.m30533d(C8582g0.m28296x());
        long mo34879u = transportInfo.mo34879u();
        m30533d.f22111d = "message_id = ?";
        m30533d.f22112e = new String[]{String.valueOf(mo34879u)};
        c6669b2.m30536a(m30533d.m30531a());
        C6713w.C6715b.C6716a m30533d2 = c6669b2.m30533d(C8582g0.m28295y());
        long mo34879u2 = transportInfo.mo34879u();
        m30533d2.f22111d = "_id = ?";
        m30533d2.f22112e = new String[]{String.valueOf(mo34879u2)};
        c6669b2.m30536a(m30533d2.m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: p */
    public boolean mo15173p(C6669b c6669b) {
        C6669b c6669b2 = c6669b;
        l.e(c6669b2, "transaction");
        ContentProviderResult[] mo30530a = this.f22003b.mo30530a(c6669b2);
        l.d(mo30530a, "transactionExecutor.execute(transaction)");
        return !(mo30530a.length == 0);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: q */
    public void mo15172q(BinaryEntity binaryEntity) {
        l.e(binaryEntity, "entity");
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: r */
    public boolean mo15171r() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: s */
    public boolean mo15170s(Message message, int i, C6669b c6669b) {
        l.e(message, "message");
        l.e(c6669b, "transaction");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: t */
    public void mo15169t(long j) {
        throw new UnsupportedOperationException();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: u */
    public boolean mo15168u(TransportInfo transportInfo, long j, long j2, C6669b c6669b, boolean z) {
        C6669b c6669b2 = c6669b;
        l.e(transportInfo, "info");
        l.e(c6669b2, "transaction");
        C6713w.C6715b.C6716a m30532e = c6669b2.m30532e(C8582g0.m28340A(transportInfo.mo34879u()));
        m30532e.f22110c.put("read", (Integer) 1);
        if (z) {
            m30532e.f22110c.put("seen", (Integer) 1);
        }
        c6669b2.m30536a(m30532e.m30531a());
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: v */
    public boolean mo15167v(Message message) {
        l.e(message, "message");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: w */
    public C6669b mo15166w() {
        return new C6669b();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: x */
    public boolean mo15165x(Participant participant) {
        l.e(participant, "participant");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: y */
    public boolean mo15164y(TransportInfo transportInfo, C6669b c6669b) {
        l.e(transportInfo, "info");
        l.e(c6669b, "transaction");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: z */
    public boolean mo15163z(String str, C6676e c6676e) {
        l.e(str, "text");
        l.e(c6676e, "result");
        return false;
    }
}
