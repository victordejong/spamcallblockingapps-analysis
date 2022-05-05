package p459j.p460a.p541n0;

import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.module.OfflineDbRecordModule;
import gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.exceptions.RealmError;
import p459j.p460a.p582w0.C13973d4;
/* renamed from: j.a.n0.o */
/* loaded from: classes3-dex2jar.jar:j/a/n0/o.class */
public class C13190o {

    /* renamed from: a */
    public static String f29730a = "o";

    /* renamed from: j.a.n0.o$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/o$a.class */
    public static final class C13191a {

        /* renamed from: a */
        public static final RealmConfiguration f29731a = new RealmConfiguration.Builder().name("offlineDBRecord").schemaVersion(1).modules(new OfflineDbRecordModule(), new Object[0]).migration(new C13192a()).build();

        /* renamed from: j.a.n0.o$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/o$a$a.class */
        public static final class C13192a implements RealmMigration {
            @Override // io.realm.RealmMigration
            public void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }
    }

    /* renamed from: a */
    public static void m4446a(int i) {
        Realm b = m4445b();
        if (b != null) {
            b.beginTransaction();
            OfflineBadgeRecordObj offlineBadgeRecordObj = new OfflineBadgeRecordObj();
            offlineBadgeRecordObj.realmSet$time(System.currentTimeMillis());
            offlineBadgeRecordObj.realmSet$type(i);
            b.insertOrUpdate(offlineBadgeRecordObj);
            b.commitTransaction();
            b.close();
        }
    }

    /* renamed from: a */
    public static int[] m4447a() {
        Realm b = m4445b();
        if (b == null) {
            return new int[]{0, 0, 0};
        }
        b.beginTransaction();
        b.where(OfflineBadgeRecordObj.class).lessThan("time", System.currentTimeMillis() - NumberInfo.Whoscall.Spam.EXPIRE_INTERVAL).findAll().deleteAllFromRealm();
        b.commitTransaction();
        int size = b.where(OfflineBadgeRecordObj.class).equalTo("type", (Integer) 1).findAll().size();
        int size2 = b.where(OfflineBadgeRecordObj.class).equalTo("type", (Integer) 2).findAll().size();
        int size3 = b.where(OfflineBadgeRecordObj.class).equalTo("type", (Integer) 3).findAll().size();
        b.close();
        return new int[]{size, size2, size3};
    }

    /* renamed from: b */
    public static Realm m4445b() {
        try {
            return Realm.getInstance(C13191a.f29731a);
        } catch (RealmError e) {
            C13973d4.m2952a(e);
            String str = f29730a;
            LogManager.m28579a(str, "getRealmDatabase with error : " + e.getMessage());
            return null;
        } catch (Exception e2) {
            C13973d4.m2952a(e2);
            String str2 = f29730a;
            LogManager.m28579a(str2, "getRealmDatabase with exception : " + e2.getMessage());
            return null;
        }
    }
}
