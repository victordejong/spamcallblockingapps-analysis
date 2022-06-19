package p193e.p194a.p195a.p244k.p245a.p246a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import com.google.protobuf.InvalidProtocolBufferException;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.UnprocessedEvent;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6142j;
import p193e.p194a.p195a.p244k.p245a.AbstractC6600p;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.a.a0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/a/a0.class */
public final class C6444a0 implements AbstractC6503z {

    /* renamed from: a */
    public final ContentResolver f21409a;

    /* renamed from: b */
    public final AbstractC6115g f21410b;

    /* renamed from: c */
    public final AbstractC6600p f21411c;

    @Inject
    public C6444a0(ContentResolver contentResolver, AbstractC6115g abstractC6115g, AbstractC6600p abstractC6600p) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorsFactory");
        l.e(abstractC6600p, "eventProcessor");
        this.f21409a = contentResolver;
        this.f21410b = abstractC6115g;
        this.f21411c = abstractC6600p;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6503z
    /* renamed from: a */
    public void mo30828a(String str, String str2, byte[] bArr, long j, int i) {
        l.e(str, "rawId");
        l.e(str2, "groupId");
        l.e(bArr, "eventData");
        ContentValues contentValues = new ContentValues();
        contentValues.put("reference_raw_id", str);
        contentValues.put("event", bArr);
        contentValues.put("im_group_id", str2);
        contentValues.put("seq_number", Long.valueOf(j));
        contentValues.put("event_type", Integer.valueOf(i));
        this.f21409a.insert(C8582g0.m28299u(), contentValues);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6503z
    /* renamed from: b */
    public void mo30827b(String str) {
        AbstractC6142j mo31791a;
        l.e(str, "rawId");
        Cursor query = this.f21409a.query(C8582g0.m28299u(), null, "reference_raw_id=?", new String[]{str}, "seq_number");
        if (query == null || (mo31791a = this.f21410b.mo31791a(query)) == null) {
            return;
        }
        while (mo31791a.moveToNext()) {
            try {
                UnprocessedEvent mo31744W1 = mo31791a.mo31744W1();
                try {
                    Event parseFrom = Event.parseFrom(mo31744W1.f13469b);
                    AbstractC6600p abstractC6600p = this.f21411c;
                    l.d(parseFrom, "event");
                    abstractC6600p.mo30683a(parseFrom, false, mo31744W1.f13473f);
                    this.f21409a.delete(C8582g0.m28299u(), "_id=?", new String[]{String.valueOf(mo31744W1.f13468a)});
                } catch (InvalidProtocolBufferException e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                    C25225a.m4016G(mo31791a, th);
                }
            }
        }
        th = null;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6503z
    /* renamed from: c */
    public void mo30826c(String str, long j) {
        l.e(str, "groupId");
        this.f21409a.delete(C8582g0.m28299u(), "im_group_id = ? AND seq_number < ?", new String[]{str, String.valueOf(j)});
    }
}
