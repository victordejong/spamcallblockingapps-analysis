package p193e.p194a.p195a.p244k;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10546e;
import p193e.p194a.p437c.p580r.p587h.C10545d;
import p193e.p194a.p712e4.AbstractC13497p;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.c.a.a.a.h;
/* renamed from: e.a.a.k.g */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/g.class */
public abstract class AbstractC6679g<T extends TransportInfo, RC extends AbstractC6680a> {

    /* renamed from: a */
    public final Context f22035a;

    /* renamed from: b */
    public final AbstractC13497p f22036b;

    /* renamed from: c */
    public final C20592g f22037c;

    /* renamed from: e.a.a.k.g$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/g$a.class */
    public interface AbstractC6680a extends Cursor {
        /* renamed from: F */
        int mo30516F();

        /* renamed from: X0 */
        boolean mo30515X0();

        /* renamed from: Y */
        boolean mo30514Y();

        /* renamed from: g0 */
        long mo30512g0();

        /* renamed from: g2 */
        long mo30511g2();

        long getId();

        Message getMessage() throws SQLiteException;

        int getStatus();

        /* renamed from: q1 */
        boolean mo30510q1();

        /* renamed from: u1 */
        String mo30509u1();
    }

    public AbstractC6679g(Context context, AbstractC13497p abstractC13497p, C20592g c20592g) {
        this.f22035a = context.getApplicationContext();
        this.f22036b = abstractC13497p;
        this.f22037c = c20592g;
    }

    /* renamed from: a */
    public final void m30581a(List<ContentProviderOperation> list, long j) {
        list.add(ContentProviderOperation.newDelete(C8582g0.m28340A(j)).build());
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03e0 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v163, types: [long] */
    /* JADX WARN: Type inference failed for: r0v175, types: [long] */
    /* JADX WARN: Type inference failed for: r0v180, types: [long] */
    /* JADX WARN: Type inference failed for: r0v191, types: [long] */
    /* JADX WARN: Type inference failed for: r0v205, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m30580b(p193e.p194a.p195a.p244k.AbstractC6691j r9, p193e.p194a.p195a.p244k.AbstractC6694m r10, p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0 r11, RC r12, int r13, java.util.List<android.content.ContentProviderOperation> r14, p193e.p194a.p1129p5.AbstractC19244l0 r15, boolean r16, p193e.p194a.p437c.p580r.p587h.C10545d r17) {
        /*
            Method dump skipped, instructions count: 1146
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.AbstractC6679g.m30580b(e.a.a.k.j, e.a.a.k.m, e.a.a.g.j0.g0, e.a.a.k.g$a, int, java.util.List, e.a.p5.l0, boolean, e.a.c.r.h.d):long");
    }

    /* renamed from: c */
    public abstract Set<Participant> mo30501c(long j, AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, Participant participant, boolean z);

    /* renamed from: d */
    public abstract RC mo30500d(ContentResolver contentResolver, AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, b bVar, b bVar2, boolean z);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public final void m30579e(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, List<ContentProviderOperation> list, Message message, boolean z, C10545d c10545d) {
        Entity[] entityArr;
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C8582g0.m28295y());
        TransportInfo transportInfo = message.f13393n;
        int size = list.size();
        Set<Participant> mo30501c = mo30501c(transportInfo.mo34880m1(), abstractC6691j, abstractC6694m, message.f13382c, z);
        Iterator<Participant> it = mo30501c.iterator();
        while (true) {
            boolean z2 = false;
            if (!it.hasNext()) {
                break;
            }
            Participant next = it.next();
            if (h.i(next.f11572e) || h.e("insert-address-token", next.f11572e)) {
                z2 = true;
            }
            if (z2) {
                it.remove();
            }
        }
        int i = -1;
        for (Participant participant : mo30501c) {
            if (message.f13382c.equals(participant)) {
                i = C10480a.m25969e1(list, participant);
            } else {
                C10480a.m25969e1(list, participant);
            }
        }
        if (mo30501c.isEmpty()) {
            list.subList(size, list.size()).clear();
            return;
        }
        int i2 = i;
        if (i == -1) {
            i2 = C10480a.m25969e1(list, message.f13382c);
        }
        int m25974d1 = C10480a.m25974d1(list, mo30501c, false);
        newInsert.withValueBackReference("participant_id", i2);
        newInsert.withValueBackReference("conversation_id", m25974d1);
        newInsert.withValue("date_sent", Long.valueOf(((e) message.f13383d).a));
        newInsert.withValue("date", Long.valueOf(((e) message.f13384e).a));
        newInsert.withValue(UpdateKey.STATUS, Integer.valueOf(message.f13386g));
        newInsert.withValue("seen", Boolean.valueOf(message.f13387h));
        newInsert.withValue("read", Boolean.valueOf(message.f13388i));
        newInsert.withValue("locked", Boolean.valueOf(message.f13389j));
        newInsert.withValue("transport", Integer.valueOf(message.f13390k));
        newInsert.withValue("sim_token", message.f13392m);
        newInsert.withValue("analytics_id", message.f13396q);
        newInsert.withValue("analytics_context", message.f13397r);
        newInsert.withValue("raw_address", message.f13398s);
        newInsert.withValue("category", 2);
        newInsert.withValue("send_schedule_date", Long.valueOf(((e) message.f13385f).a));
        if (mo30496i(message.f13386g)) {
            newInsert.withValue("classification", 0);
            c10545d.m25786a(-1L, AbstractC10546e.C10548b.f31474a);
        } else {
            newInsert.withValue("classification", 2);
        }
        newInsert.withValue("sync_status", Integer.valueOf(message.f13400u));
        int size2 = list.size();
        ContentValues mo30499f = mo30499f(abstractC6691j, message.f13393n, size2);
        if (mo30499f != null) {
            newInsert.withValues(mo30499f);
        }
        list.add(newInsert.build());
        ContentValues contentValues = new ContentValues();
        for (Entity entity : message.f13394o) {
            ContentProviderOperation.Builder newInsert2 = ContentProviderOperation.newInsert(C8582g0.m28296x());
            newInsert2.withValueBackReference("message_id", size2);
            contentValues.clear();
            entity.mo34994c(contentValues);
            newInsert2.withValues(contentValues);
            list.add(newInsert2.build());
        }
    }

    /* renamed from: f */
    public abstract ContentValues mo30499f(AbstractC6691j abstractC6691j, T t, int i);

    /* renamed from: g */
    public abstract boolean mo30498g(AbstractC6139g0 abstractC6139g0, RC rc);

    /* renamed from: h */
    public abstract boolean mo30497h(AbstractC6139g0 abstractC6139g0, RC rc);

    /* renamed from: i */
    public abstract boolean mo30496i(int i);

    /* renamed from: j */
    public long mo30495j(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, AbstractC6139g0 abstractC6139g0, b bVar, b bVar2, int i, List<ContentProviderOperation> list, AbstractC19244l0 abstractC19244l0, boolean z, C10545d c10545d) {
        RC rc;
        RC rc2 = null;
        RC rc3 = null;
        try {
            try {
                rc = mo30500d(this.f22035a.getContentResolver(), abstractC6691j, abstractC6694m, bVar, bVar2, z);
            } catch (RuntimeException e) {
                rc3 = rc2;
                AssertionUtil.reportThrowableButNeverCrash(e);
                if (rc2 == null) {
                    return 0L;
                }
                rc = rc2;
            }
            if (rc == null) {
                if (rc == null) {
                    return 0L;
                }
                rc.close();
                return 0L;
            }
            rc3 = rc;
            rc2 = rc;
            long m30580b = m30580b(abstractC6691j, abstractC6694m, abstractC6139g0, rc, i, list, abstractC19244l0, z, c10545d);
            rc.close();
            return m30580b;
        } catch (Throwable th) {
            if (rc3 != null) {
                rc3.close();
            }
            throw th;
        }
    }

    /* renamed from: k */
    public abstract boolean mo30494k(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, List<ContentProviderOperation> list, AbstractC6139g0 abstractC6139g0, RC rc, boolean z);

    /* renamed from: l */
    public final boolean m30578l(RC rc, int i) {
        boolean z = true;
        if (rc.isAfterLast()) {
            return true;
        }
        long mo30511g2 = rc.mo30511g2();
        if (rc.getPosition() == i) {
            boolean z2 = true;
            if (rc.moveToNext()) {
                long mo30511g22 = rc.mo30511g2();
                rc.moveToPrevious();
                z2 = mo30511g2 != mo30511g22;
            }
            return z2;
        } else if (!rc.moveToPrevious()) {
            return rc.isLast();
        } else {
            long mo30511g23 = rc.mo30511g2();
            rc.moveToNext();
            if (mo30511g2 == mo30511g23) {
                z = false;
            }
            return z;
        }
    }
}
