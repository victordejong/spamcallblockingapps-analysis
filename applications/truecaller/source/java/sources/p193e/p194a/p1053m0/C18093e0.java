package p193e.p194a.p1053m0;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import java.util.concurrent.TimeUnit;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.e0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/e0.class */
public final class C18093e0 implements C8456a.AbstractC8463g {

    /* renamed from: a */
    public final C20592g f51014a;

    public C18093e0(C20592g c20592g) {
        l.e(c20592g, "featuresRegistry");
        this.f51014a = c20592g;
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        long currentTimeMillis = System.currentTimeMillis();
        long millis = TimeUnit.HOURS.toMillis(24L);
        long currentTimeMillis2 = System.currentTimeMillis();
        TimeUnit timeUnit = TimeUnit.MINUTES;
        Cursor rawQuery = abstractC8448a.m28528m().rawQuery("\n    SELECT\n        m._id AS message_id,\n        m.conversation_id AS message_conversation_id,\n        m.info1 AS message_delivery_status,\n        ac.contact_name AS participant_name\n    FROM msg_messages m\n        LEFT JOIN msg_messages m2 ON m2.conversation_id = m.conversation_id \n            AND m2._id < m._id\n        LEFT JOIN msg_participants p ON p._id = m.participant_id\n        LEFT JOIN aggregated_contact ac ON ac._id = p.aggregated_contact_id\n    WHERE m.transport = 2 \n        AND m.status = 1\n        AND m.info16 IS NULL\n        AND m.date > ?\n        AND ((\n            m.info1 = 3 \n            AND m.info2 != 3 \n            AND m.date_sent < ?\n        ) OR (\n            m.info1 != 3 \n            AND m.info2 != 3 \n            AND m.date_sent < ?\n        ))\n        AND p.type = 0\n        AND m.conversation_id NOT IN (\n    SELECT DISTINCT conversation_id \n        FROM msg_messages\n        WHERE transport=2 AND (status & 1)=0\n)\n        AND m.conversation_id NOT IN (\n    SELECT DISTINCT conversation_id \n        FROM msg_messages\n        WHERE transport=2 \n            AND status = 1 \n            AND info16 = 0\n)\n        AND m2._id IS NULL\n    ORDER BY m._id\n    ", new String[]{String.valueOf(currentTimeMillis - millis), String.valueOf(currentTimeMillis2 - timeUnit.toMillis(this.f51014a.m10975b0().mo10939d(60L))), String.valueOf(System.currentTimeMillis() - timeUnit.toMillis(this.f51014a.m10973c0().mo10939d(720L)))});
        l.d(rawQuery, "provider.database.rawQue…eAfterSentMs.toString()))");
        return rawQuery;
    }
}
