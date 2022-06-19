package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.m0.c */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c.class */
public final class C18019c {

    /* renamed from: a */
    public final String[] f50904a = {"_id", "transport", UpdateKey.STATUS, "date", "group_id_day", "group_id_minute", "info2"};

    /* renamed from: b */
    public final SQLiteDatabase f50905b;

    /* renamed from: c */
    public final long f50906c;

    /* renamed from: e.a.m0.c$a */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c$a.class */
    public static final class C18020a {

        /* renamed from: a */
        public final long f50907a;

        /* renamed from: b */
        public final int f50908b;

        /* renamed from: c */
        public final int f50909c;

        /* renamed from: d */
        public final long f50910d;

        /* renamed from: e */
        public final long f50911e;

        /* renamed from: f */
        public final long f50912f;

        /* renamed from: g */
        public final int f50913g;

        public C18020a(long j, int i, int i2, long j2, long j3, long j4, int i3) {
            this.f50907a = j;
            this.f50908b = i;
            this.f50909c = i2;
            this.f50910d = j2;
            this.f50911e = j3;
            this.f50912f = j4;
            this.f50913g = i3;
        }
    }

    public C18019c(SQLiteDatabase sQLiteDatabase, long j) {
        l.e(sQLiteDatabase, "db");
        this.f50905b = sQLiteDatabase;
        this.f50906c = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0159  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m15535e(p193e.p194a.p1053m0.C18019c r9, long r10, long r12, long r14, int r16, int r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C18019c.m15535e(e.a.m0.c, long, long, long, int, int, int, int):void");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    public final long m15539a(C18020a c18020a) {
        ?? r0 = c18020a.f50911e;
        char c = r0;
        if (r0 == -1) {
            c = c18020a.f50907a;
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: b */
    public final long m15538b(C18020a c18020a) {
        ?? r0 = c18020a.f50912f;
        char c = r0;
        if (r0 == -1) {
            c = c18020a.f50907a;
        }
        return c;
    }

    /* renamed from: c */
    public final boolean m15537c(C18020a c18020a, C18020a c18020a2) {
        if (c18020a2 == null) {
            return false;
        }
        boolean z = false;
        if (c18020a.f50908b == 5) {
            if (c18020a2.f50908b != 5) {
                z = false;
            } else {
                z = false;
                if ((c18020a.f50913g == 1) == (c18020a2.f50913g == 1)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m15536d(C18020a c18020a, C18020a c18020a2) {
        if (c18020a2 == null) {
            return false;
        }
        boolean z = false;
        if (c18020a2.f50908b == 5) {
            if (c18020a.f50908b != 5) {
                z = false;
            } else {
                String v = new b(c18020a.f50910d).v("yyyy-MM-dd HH:mm");
                l.d(v, "DateTime(date).toString(\"yyyy-MM-dd HH:mm\")");
                String v2 = new b(c18020a2.f50910d).v("yyyy-MM-dd HH:mm");
                l.d(v2, "DateTime(date).toString(\"yyyy-MM-dd HH:mm\")");
                z = false;
                if (l.a(v, v2)) {
                    z = false;
                    if (c18020a.f50909c == c18020a2.f50909c) {
                        z = false;
                        if (c18020a.f50913g == c18020a2.f50913g) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public final void m15534f(long j, ContentValues contentValues) {
        l.e(contentValues, "contentValues");
        Long asLong = contentValues.getAsLong("date");
        Integer asInteger = contentValues.getAsInteger("transport");
        Integer asInteger2 = contentValues.getAsInteger(UpdateKey.STATUS);
        l.d(asInteger2, "contentValues.getAsInteger(STATUS)");
        int intValue = asInteger2.intValue();
        Integer asInteger3 = (asInteger != null && asInteger.intValue() == 5) ? contentValues.getAsInteger("info2") : 0;
        l.d(asLong, "date");
        long longValue = asLong.longValue();
        l.d(asInteger, "transport");
        int intValue2 = asInteger.intValue();
        l.d(asInteger3, "historyType");
        m15533g(j, longValue, intValue2, intValue, asInteger3.intValue());
    }

    /* renamed from: g */
    public final void m15533g(long j, long j2, int i, int i2, int i3) {
        String str;
        ContentValues contentValues = new ContentValues();
        contentValues.put("group_id_day", Long.valueOf(j));
        C18020a c18020a = new C18020a(j, i, i2, j2, -1L, -1L, i3);
        C18020a m15531i = m15531i(this.f50906c, j, j2);
        if (c18020a.f50908b == 5 || (m15531i != null && m15531i.f50908b == 5)) {
            C18020a m15532h = m15532h(this.f50906c, j, j2);
            boolean m15537c = m15537c(c18020a, m15531i);
            boolean m15537c2 = m15537c(c18020a, m15532h);
            if (c18020a.f50908b != 5) {
                str = "msg_messages";
                if (m15532h != null) {
                    str = "msg_messages";
                    if (m15531i != null) {
                        str = "msg_messages";
                        if (m15537c(m15532h, m15531i)) {
                            long j3 = m15532h.f50907a;
                            long m15539a = m15539a(m15531i);
                            if (j3 == m15539a) {
                                str = "msg_messages";
                            } else {
                                SQLiteDatabase sQLiteDatabase = this.f50905b;
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("group_id_day", Long.valueOf(j3));
                                sQLiteDatabase.update("msg_messages", contentValues2, "conversation_id=? AND group_id_day=? AND date >=? AND date<?", new String[]{String.valueOf(this.f50906c), String.valueOf(m15539a), String.valueOf(j2), String.valueOf(m15530j(j2))});
                                str = "msg_messages";
                            }
                        }
                    }
                }
            } else if (m15531i == null || !m15537c || m15537c2) {
                if (m15532h != null && m15537c2 && !m15537c) {
                    m15528l(j, m15539a(m15532h), j2);
                } else if (m15531i != null && m15532h != null && m15537c && m15537c2) {
                    contentValues.put("group_id_day", Long.valueOf(m15539a(m15531i)));
                    m15528l(m15539a(m15531i), m15539a(m15532h), j2);
                }
                str = "msg_messages";
            } else {
                contentValues.put("group_id_day", Long.valueOf(m15539a(m15531i)));
                str = "msg_messages";
            }
            contentValues.put("group_id_minute", Long.valueOf(c18020a.f50907a));
            boolean m15536d = m15536d(c18020a, m15531i);
            boolean m15536d2 = m15536d(c18020a, m15532h);
            if (c18020a.f50908b == 5) {
                if (m15531i != null && m15536d && !m15536d2) {
                    contentValues.put("group_id_minute", Long.valueOf(m15538b(m15531i)));
                } else if (m15532h != null && m15536d2 && !m15536d) {
                    m15527m(c18020a.f50907a, m15538b(m15532h));
                } else if (m15531i != null && m15532h != null && m15536d && m15536d2) {
                    contentValues.put("group_id_minute", Long.valueOf(m15538b(m15531i)));
                    m15527m(m15538b(m15531i), m15538b(m15532h));
                }
            } else if (m15532h != null && m15531i != null && m15536d && m15536d2) {
                long j4 = m15532h.f50907a;
                long m15538b = m15538b(m15531i);
                long j5 = c18020a.f50910d;
                if (j4 != m15538b) {
                    SQLiteDatabase sQLiteDatabase2 = this.f50905b;
                    ContentValues contentValues3 = new ContentValues();
                    contentValues3.put("group_id_minute", Long.valueOf(j4));
                    sQLiteDatabase2.update(str, contentValues3, "conversation_id=? AND group_id_minute=? AND date >=?", new String[]{String.valueOf(this.f50906c), String.valueOf(m15538b), String.valueOf(j5)});
                }
            }
            this.f50905b.update(str, contentValues, "_id=?", new String[]{String.valueOf(j)});
        }
    }

    /* renamed from: h */
    public final C18020a m15532h(long j, long j2, long j3) {
        Cursor query = this.f50905b.query("msg_messages", this.f50904a, "date >=? AND date <? AND _id !=? AND conversation_id=? AND (status & 2)=0", new String[]{String.valueOf(j3), String.valueOf(m15530j(j3)), String.valueOf(j2), String.valueOf(j)}, null, null, "date ASC, sequence_number ASC LIMIT 1");
        if (query != null) {
            try {
                th = null;
                return m15529k(query);
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return null;
    }

    /* renamed from: i */
    public final C18020a m15531i(long j, long j2, long j3) {
        SQLiteDatabase sQLiteDatabase = this.f50905b;
        String[] strArr = this.f50904a;
        b P = new b(j3).P();
        l.d(P, "DateTime(this).withTimeAtStartOfDay()");
        Cursor query = sQLiteDatabase.query("msg_messages", strArr, "date<=? AND date>=? AND _id !=? AND conversation_id=? AND (status & 2)=0", new String[]{String.valueOf(j3), String.valueOf(((e) P).a), String.valueOf(j2), String.valueOf(j)}, null, null, "date DESC, sequence_number DESC LIMIT 1");
        if (query != null) {
            try {
                th = null;
                return m15529k(query);
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return null;
    }

    /* renamed from: j */
    public final long m15530j(long j) {
        b P = new b(j).D(1).P();
        l.d(P, "DateTime(this).plusDays(1).withTimeAtStartOfDay()");
        return ((e) P).a;
    }

    /* renamed from: k */
    public final C18020a m15529k(Cursor cursor) {
        C18020a c18020a;
        if (cursor.moveToFirst()) {
            int m13520q0 = C19291g.m13520q0(cursor, "transport");
            c18020a = new C18020a(C19291g.m13632E0(cursor, "_id"), m13520q0, C19291g.m13520q0(cursor, UpdateKey.STATUS), C19291g.m13632E0(cursor, "date"), C19291g.m13632E0(cursor, "group_id_day"), C19291g.m13632E0(cursor, "group_id_minute"), m13520q0 == 5 ? C19291g.m13520q0(cursor, "info2") : 0);
        } else {
            c18020a = null;
        }
        return c18020a;
    }

    /* renamed from: l */
    public final void m15528l(long j, long j2, long j3) {
        if (j == j2) {
            return;
        }
        SQLiteDatabase sQLiteDatabase = this.f50905b;
        ContentValues contentValues = new ContentValues();
        contentValues.put("group_id_day", Long.valueOf(j));
        long j4 = this.f50906c;
        b P = new b(j3).P();
        l.d(P, "DateTime(this).withTimeAtStartOfDay()");
        sQLiteDatabase.update("msg_messages", contentValues, "conversation_id=? AND group_id_day=? AND date>=? AND date<?", new String[]{String.valueOf(j4), String.valueOf(j2), String.valueOf(((e) P).a), String.valueOf(m15530j(j3))});
    }

    /* renamed from: m */
    public final void m15527m(long j, long j2) {
        if (j == j2) {
            return;
        }
        SQLiteDatabase sQLiteDatabase = this.f50905b;
        ContentValues contentValues = new ContentValues();
        contentValues.put("group_id_minute", Long.valueOf(j));
        sQLiteDatabase.update("msg_messages", contentValues, "conversation_id=? AND group_id_minute=?", new String[]{String.valueOf(this.f50906c), String.valueOf(j2)});
    }
}
