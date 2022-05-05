package p459j.p460a.p604y0.p605c.p606c;

import android.database.Cursor;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.p008db.SupportSQLiteStatement;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import java.util.ArrayList;
import java.util.List;
/* renamed from: j.a.y0.c.c.f */
/* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/f.class */
public final class C14495f implements AbstractC14494e {

    /* renamed from: a */
    public final RoomDatabase f32409a;

    /* renamed from: j.a.y0.c.c.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/f$a.class */
    public class C14496a extends EntityInsertionAdapter<C14492d> {
        public C14496a(C14495f fVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, C14492d dVar) {
            supportSQLiteStatement.bindLong(1, dVar.m1239d());
            supportSQLiteStatement.bindLong(2, dVar.m1232k());
            supportSQLiteStatement.bindLong(3, dVar.m1233j());
            supportSQLiteStatement.bindLong(4, dVar.m1243a());
            if (dVar.m1240c() == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindString(5, dVar.m1240c());
            }
            if (dVar.m1241b() == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindString(6, dVar.m1241b());
            }
            supportSQLiteStatement.bindLong(7, dVar.m1231l());
            if (dVar.m1238e() == null) {
                supportSQLiteStatement.bindNull(8);
            } else {
                supportSQLiteStatement.bindString(8, dVar.m1238e());
            }
            supportSQLiteStatement.bindLong(9, dVar.m1234i());
            supportSQLiteStatement.bindDouble(10, dVar.m1235h());
            supportSQLiteStatement.bindLong(11, dVar.m1236g());
            if (dVar.m1237f() == null) {
                supportSQLiteStatement.bindNull(12);
            } else {
                supportSQLiteStatement.bindString(12, dVar.m1237f());
            }
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR ABORT INTO `vas_message`(`id`,`subscription_type`,`promotion_type`,`cancel_type`,`e164`,`content`,`time`,`name`,`price_type`,`price`,`period_type`,`period`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    /* renamed from: j.a.y0.c.c.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/f$b.class */
    public class C14497b extends EntityDeletionOrUpdateAdapter<C14492d> {
        public C14497b(C14495f fVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        /* renamed from: a */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, C14492d dVar) {
            supportSQLiteStatement.bindLong(1, dVar.m1239d());
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM `vas_message` WHERE `id` = ?";
        }
    }

    /* renamed from: j.a.y0.c.c.f$c */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/f$c.class */
    public class C14498c extends SharedSQLiteStatement {
        public C14498c(C14495f fVar, RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM vas_message WHERE time < ?";
        }
    }

    public C14495f(RoomDatabase roomDatabase) {
        new C14476a();
        this.f32409a = roomDatabase;
        new C14496a(this, roomDatabase);
        new C14497b(this, roomDatabase);
        new C14498c(this, roomDatabase);
    }

    @Override // p459j.p460a.p604y0.p605c.p606c.AbstractC14494e
    /* renamed from: a */
    public List<C14492d> mo1230a() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM vas_message ORDER BY time DESC", 0);
        this.f32409a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f32409a, acquire, false);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, VasMessageRealm.SUBSCRIPTION_TYPE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, VasMessageRealm.PROMOTION_TYPE);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, VasMessageRealm.CANCEL_TYPE);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "e164");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "content");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "time");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "name");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, VasMessageRealm.PRICE_TYPE);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "price");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, VasMessageRealm.PERIOD_TYPE);
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "period");
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                C14492d dVar = new C14492d(query.getInt(columnIndexOrThrow2), query.getInt(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4), query.getString(columnIndexOrThrow5), query.getString(columnIndexOrThrow6), query.getLong(columnIndexOrThrow7), query.getString(columnIndexOrThrow8), query.getInt(columnIndexOrThrow9), query.getDouble(columnIndexOrThrow10), query.getInt(columnIndexOrThrow11), query.getString(columnIndexOrThrow12));
                dVar.m1242a(query.getLong(columnIndexOrThrow));
                arrayList.add(dVar);
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }
}
