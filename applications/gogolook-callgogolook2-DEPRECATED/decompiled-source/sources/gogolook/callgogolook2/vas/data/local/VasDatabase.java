package gogolook.callgogolook2.vas.data.local;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import androidx.room.migration.Migration;
import androidx.sqlite.p008db.SupportSQLiteDatabase;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p604y0.p605c.p606c.AbstractC14494e;
import p459j.p460a.p604y0.p605c.p606c.C14476a;
import p459j.p460a.p604y0.p605c.p606c.C14492d;
import p459j.p460a.p604y0.p610e.C14568b;
import p459j.p460a.p604y0.p610e.C14577c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@TypeConverters({C14476a.class})
@Database(entities = {C14492d.class}, version = 2)
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018�� \u00052\u00020\u0001:\u0001\u0005B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&¨\u0006\u0006"}, m815d2 = {"Lgogolook/callgogolook2/vas/data/local/VasDatabase;", "Landroidx/room/RoomDatabase;", "()V", "vasMessageDao", "Lgogolook/callgogolook2/vas/data/local/VasMessageDao;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/data/local/VasDatabase.class */
public abstract class VasDatabase extends RoomDatabase {

    /* renamed from: a */
    public static VasDatabase f12981a;

    /* renamed from: d */
    public static final C5260b f12984d = new C5260b(null);

    /* renamed from: b */
    public static final C5259a f12982b = new C5259a(1, 2);

    /* renamed from: c */
    public static final Object f12983c = new Object();

    /* renamed from: gogolook.callgogolook2.vas.data.local.VasDatabase$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/data/local/VasDatabase$a.class */
    public static final class C5259a extends Migration {
        public C5259a(int i, int i2) {
            super(i, i2);
        }

        /* renamed from: a */
        public final List<C14492d> m25982a(SupportSQLiteDatabase supportSQLiteDatabase) {
            ArrayList arrayList = new ArrayList();
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                try {
                    cursor2 = supportSQLiteDatabase.query("SELECT * FROM vas_message");
                    if (cursor2 != null && cursor2.moveToFirst()) {
                        int columnIndex = cursor2.getColumnIndex("id");
                        int columnIndex2 = cursor2.getColumnIndex(VasMessageRealm.SUBSCRIPTION_TYPE);
                        int columnIndex3 = cursor2.getColumnIndex(VasMessageRealm.PROMOTION_TYPE);
                        int columnIndex4 = cursor2.getColumnIndex(VasMessageRealm.CANCEL_TYPE);
                        int columnIndex5 = cursor2.getColumnIndex("e164");
                        int columnIndex6 = cursor2.getColumnIndex("content");
                        int columnIndex7 = cursor2.getColumnIndex("time");
                        int columnIndex8 = cursor2.getColumnIndex("name");
                        int columnIndex9 = cursor2.getColumnIndex(VasMessageRealm.PRICE_TYPE);
                        int columnIndex10 = cursor2.getColumnIndex("price");
                        int columnIndex11 = cursor2.getColumnIndex(VasMessageRealm.PERIOD_TYPE);
                        int columnIndex12 = cursor2.getColumnIndex("period");
                        do {
                            cursor2 = cursor2;
                            cursor = cursor2;
                            int i = cursor2.getInt(columnIndex2);
                            int i2 = cursor2.getInt(columnIndex3);
                            int i3 = cursor2.getInt(columnIndex4);
                            String string = cursor2.getString(columnIndex5);
                            C15149k.m383a((Object) string, "cursor.getString(colE164)");
                            String string2 = cursor2.getString(columnIndex6);
                            C15149k.m383a((Object) string2, "cursor.getString(colContent)");
                            long j = cursor2.getLong(columnIndex7);
                            String string3 = cursor2.getString(columnIndex8);
                            C15149k.m383a((Object) string3, "cursor.getString(colName)");
                            int i4 = cursor2.getInt(columnIndex9);
                            double d = cursor2.getDouble(columnIndex10);
                            int i5 = cursor2.getInt(columnIndex11);
                            String string4 = cursor2.getString(columnIndex12);
                            C15149k.m383a((Object) string4, "cursor.getString(colPeriod)");
                            C14492d dVar = new C14492d(i, i2, i3, string, string2, j, string3, i4, d, i5, string4);
                            dVar.m1242a(cursor2.getLong(columnIndex));
                            arrayList.add(dVar);
                        } while (cursor2.moveToNext());
                    }
                } catch (Exception e) {
                    C14080m2.m2612a((Throwable) e);
                    if (cursor != null) {
                        Cursor cursor3 = cursor;
                    }
                    return arrayList;
                }
            } finally {
                if (cursor2 != null) {
                    cursor2.close();
                }
            }
        }

        @Override // androidx.room.migration.Migration
        public void migrate(SupportSQLiteDatabase supportSQLiteDatabase) {
            C15149k.m377b(supportSQLiteDatabase, "database");
            supportSQLiteDatabase.execSQL("ALTER TABLE vas_message ADD COLUMN cancel_type INTEGER NOT NULL DEFAULT " + C14568b.f32544k);
            List<C14492d> a = m25982a(supportSQLiteDatabase);
            if (!a.isEmpty()) {
                C14577c cVar = C14577c.f32580h;
                Context o = MyApplication.m29013o();
                C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
                cVar.m1084a(o);
                for (C14492d dVar : a) {
                    if (C14568b.f32555v.m1093a().m1105b(dVar.m1240c(), dVar.m1241b()) == C14568b.f32548o) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(VasMessageRealm.CANCEL_TYPE, Integer.valueOf(C14568b.f32548o));
                        supportSQLiteDatabase.update(VasMessageRealm.TABLE_NAME, 4, contentValues, "id = " + dVar.m1239d(), null);
                    }
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.vas.data.local.VasDatabase$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/data/local/VasDatabase$b.class */
    public static final class C5260b {
        public C5260b() {
        }

        public /* synthetic */ C5260b(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final VasDatabase m25981a(Context context) {
            VasDatabase vasDatabase;
            C15149k.m377b(context, "context");
            synchronized (VasDatabase.f12983c) {
                if (VasDatabase.f12981a == null) {
                    VasDatabase.f12981a = (VasDatabase) Room.databaseBuilder(context.getApplicationContext(), VasDatabase.class, "Vas.db").addMigrations(VasDatabase.f12982b).build();
                }
                vasDatabase = VasDatabase.f12981a;
                if (vasDatabase == null) {
                    C15149k.m378b();
                    throw null;
                }
            }
            return vasDatabase;
        }
    }

    /* renamed from: a */
    public abstract AbstractC14494e mo25980a();
}
