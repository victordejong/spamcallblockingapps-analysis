package p193e.p194a.p1066n;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.n.o1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/o1.class */
public final class C18398o1 implements AbstractC18395n1 {

    /* renamed from: a */
    public final AbstractC8541a f51961a;

    /* renamed from: b */
    public final AbstractC18342i0 f51962b;

    /* renamed from: c */
    public final Context f51963c;

    /* renamed from: e.a.n.o1$a */
    /* loaded from: classes5-dex2jar.jar:e/a/n/o1$a.class */
    public static final class C18399a extends m implements l<Integer, CharSequence> {

        /* renamed from: b */
        public static final C18399a f51964b = new C18399a();

        public C18399a() {
            super(1);
        }

        /* renamed from: d */
        public /* bridge */ /* synthetic */ Object m15081d(Object obj) {
            ((Number) obj).intValue();
            return "?";
        }
    }

    @Inject
    public C18398o1(AbstractC8541a abstractC8541a, AbstractC18342i0 abstractC18342i0, Context context) {
        s1.z.c.l.e(abstractC8541a, "coreSettings");
        s1.z.c.l.e(abstractC18342i0, "backupUtil");
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f51961a = abstractC8541a;
        this.f51962b = abstractC18342i0;
        this.f51963c = context;
    }

    /* renamed from: a */
    public List<C18411p1> m15082a(boolean z, boolean z2, Integer[] numArr) {
        s1.z.c.l.e(numArr, "transports");
        long j = this.f51961a.getLong("lastBackedUpEntityId", 0L);
        SQLiteDatabase mo15157d = this.f51962b.mo15157d();
        List d0 = i.d0(new String[]{"text/plain", "text/html"});
        for (Integer num : numArr) {
            d0.add(String.valueOf(num.intValue()));
        }
        StringBuilder sb = new StringBuilder();
        StringBuilder m8728C = C22128a.m8728C("\n             me.type COLLATE NOCASE NOT IN (?, ?)\n             AND (me.entity_info1 NOT NULL AND me.entity_info1 != '' OR \n                me.type LIKE 'application/vnd.truecaller.linkpreview%')\n             AND me.entity_info2 = 0\n             AND me.message_id IN (\n                SELECT _id\n                FROM msg_messages\n                WHERE transport IN (");
        m8728C.append(C25225a.m3990M1(numArr, null, null, null, 0, null, C18399a.f51964b, 31));
        m8728C.append(")\n            )\n        ");
        sb.append(m8728C.toString());
        if (!z) {
            sb.append(" AND me.type NOT LIKE ?");
            d0.add("video/%");
        }
        if (j > 0 && z2) {
            sb.append(" AND me._id > ?");
            d0.add(String.valueOf(j));
        }
        String sb2 = sb.toString();
        s1.z.c.l.d(sb2, "StringBuilder().apply(builderAction).toString()");
        String str = "\n            SELECT me._id, me.entity_info1, me.type, m.status, m.transport, me.entity_type,\n                CASE me.entity_type\n                     WHEN 1 THEN me.entity_info4\n                     WHEN 2 THEN me.entity_info4\n                     WHEN 7 THEN me.entity_info5\n                     WHEN 6 THEN me.entity_info4\n                     ELSE ''\n                 END AS thumbnail\n            FROM msg_entities me\n            LEFT JOIN msg_messages m ON m._id = me.message_id\n            WHERE " + sb2 + "\n            ORDER BY me._id ASC\n        ";
        Object[] array = d0.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Cursor rawQuery = mo15157d.rawQuery(str, (String[]) array);
        try {
            ArrayList arrayList = new ArrayList();
            if (rawQuery != null) {
                while (rawQuery.moveToNext()) {
                    long m13629F0 = C19291g.m13629F0(rawQuery, "_id");
                    Uri parse = Uri.parse(C19291g.m13625G1(rawQuery, "entity_info1"));
                    s1.z.c.l.d(parse, "Uri.parse(stringValueOrT…ryEntityColumns.CONTENT))");
                    String m13625G1 = C19291g.m13625G1(rawQuery, "type");
                    if (m13625G1 == null) {
                        m13625G1 = "";
                    }
                    boolean z3 = (C19291g.m13517r0(rawQuery, UpdateKey.STATUS) & 1) == 0;
                    int m13517r0 = C19291g.m13517r0(rawQuery, "transport");
                    String m13625G12 = C19291g.m13625G1(rawQuery, "thumbnail");
                    arrayList.add(new C18411p1(m13629F0, parse, m13625G1, z3, m13517r0, m13625G12 != null ? Uri.parse(m13625G12) : null, C19291g.m13517r0(rawQuery, "entity_type")));
                }
            }
            th = null;
            return arrayList;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }
}
