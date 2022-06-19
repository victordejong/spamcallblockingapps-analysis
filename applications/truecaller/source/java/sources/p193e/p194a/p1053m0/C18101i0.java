package p193e.p194a.p1053m0;

import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.log.AssertionUtil;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.i0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/i0.class */
public final class C18101i0 implements C8456a.AbstractC8464h {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8464h
    /* renamed from: a */
    public int mo15463a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, String str, String[] strArr) {
        String str2;
        Cursor m15488b;
        Throwable th;
        Long valueOf;
        Throwable th2;
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        l.e(contentValues, "values");
        long parseId = ContentUris.parseId(uri);
        AssertionUtil.isTrue(parseId != -1, new String[0]);
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        String[] strArr2 = (String[]) i.s0(strArr != null ? strArr : new String[0], String.valueOf(parseId));
        if (str == null || str.length() == 0) {
            str2 = "(_id=?)";
        } else {
            str2 = '(' + str + ") AND (_id=?)";
        }
        Long asLong = contentValues.getAsLong("date");
        if (asLong != null) {
            long longValue = asLong.longValue();
            l.d(m28528m, "db");
            m15488b = m15488b(m28528m, parseId);
            if (m15488b != null) {
                try {
                    if (m15488b.moveToFirst()) {
                        try {
                            C18019c.m15535e(new C18019c(m28528m, C19291g.m13632E0(m15488b, "conversation_id")), C19291g.m13632E0(m15488b, "date"), longValue, parseId, C19291g.m13520q0(m15488b, "transport"), C19291g.m13520q0(m15488b, UpdateKey.STATUS), 0, 32);
                        } catch (Throwable th3) {
                            th2 = th3;
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    }
                    C25225a.m4016G(m15488b, null);
                } catch (Throwable th4) {
                    th2 = th4;
                }
            }
        }
        int update = m28528m.update("msg_messages", contentValues, str2, strArr2);
        if (update > 0) {
            l.d(m28528m, "db");
            m15488b = m15488b(m28528m, parseId);
            if (m15488b != null) {
                try {
                    if (!m15488b.moveToFirst()) {
                        C25225a.m4016G(m15488b, null);
                        return update;
                    }
                    valueOf = Long.valueOf(C19291g.m13632E0(m15488b, "conversation_id"));
                    Long asLong2 = contentValues.getAsLong("group_id_day");
                    if (asLong2 != null && asLong2.longValue() == -1) {
                        long longValue2 = valueOf.longValue();
                        int m13520q0 = C19291g.m13520q0(m15488b, "transport");
                        try {
                            new C18019c(m28528m, longValue2).m15533g(parseId, C19291g.m13632E0(m15488b, "date"), m13520q0, C19291g.m13520q0(m15488b, UpdateKey.STATUS), m13520q0 == 5 ? C19291g.m13520q0(m15488b, "info2") : 0);
                        } catch (Throwable th5) {
                            th = th5;
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    }
                    C25225a.m4016G(m15488b, null);
                } catch (Throwable th6) {
                    th = th6;
                }
            } else {
                valueOf = null;
            }
            abstractC8448a.m28532i(C8582g0.m28294z());
            if (valueOf != null) {
                long longValue3 = valueOf.longValue();
                Integer asInteger = contentValues.getAsInteger(UpdateKey.STATUS);
                if (asInteger != null && (asInteger.intValue() & 2) != 0) {
                    m28528m.delete("msg_messages", "(status & 2) != 0 AND conversation_id=? AND _id !=?", new String[]{String.valueOf(longValue3), String.valueOf(parseId)});
                }
            }
        }
        return update;
    }

    /* renamed from: b */
    public final Cursor m15488b(SQLiteDatabase sQLiteDatabase, long j) {
        return sQLiteDatabase.query("msg_messages", new String[]{"conversation_id", "date", "transport", UpdateKey.STATUS, "info2"}, "(_id=?)", new String[]{String.valueOf(j)}, null, null, null);
    }
}
