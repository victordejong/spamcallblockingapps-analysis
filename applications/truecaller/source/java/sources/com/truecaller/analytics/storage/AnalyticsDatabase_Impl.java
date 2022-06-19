package com.truecaller.analytics.storage;

import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25651h;
import p1727n3.p1751c0.C25670o;
import p1727n3.p1751c0.C25683x;
import p1727n3.p1751c0.p1754h0.C25653b;
import p1727n3.p1751c0.p1754h0.C25656e;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.p1148b1.AbstractC19472d;
import p193e.p194a.p1146q2.p1148b1.C19473e;
/* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/storage/AnalyticsDatabase_Impl.class */
public final class AnalyticsDatabase_Impl extends AnalyticsDatabase {

    /* renamed from: a */
    public volatile AbstractC19472d f9992a;

    /* renamed from: com.truecaller.analytics.storage.AnalyticsDatabase_Impl$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/storage/AnalyticsDatabase_Impl$a.class */
    public class C2857a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2857a(int i) {
            super(i);
            AnalyticsDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `persisted_event` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `record` BLOB NOT NULL)");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'd7da6f9ec87db063c1cd7123cce032d4')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `persisted_event`");
            List<AbstractC25677q.AbstractC25679b> list = AnalyticsDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    AnalyticsDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = AnalyticsDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    AnalyticsDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            AnalyticsDatabase_Impl.this.mDatabase = abstractC26147b;
            AnalyticsDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = AnalyticsDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    AnalyticsDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onPostMigrate(AbstractC26147b abstractC26147b) {
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onPreMigrate(AbstractC26147b abstractC26147b) {
            C25653b.m3091a(abstractC26147b);
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public C25683x.C25685b onValidateSchema(AbstractC26147b abstractC26147b) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            C25656e c25656e = new C25656e("persisted_event", hashMap, C22128a.m8658W(hashMap, "record", new C25656e.C25657a("record", "BLOB", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "persisted_event");
            return !c25656e.equals(m3085a) ? new C25683x.C25685b(false, C22128a.m8563u2("persisted_event(com.truecaller.analytics.storage.PersistedEvent).\n Expected:\n", c25656e, "\n Found:\n", m3085a)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.analytics.storage.AnalyticsDatabase
    /* renamed from: a */
    public AbstractC19472d mo35922a() {
        AbstractC19472d abstractC19472d;
        if (this.f9992a != null) {
            return this.f9992a;
        }
        synchronized (this) {
            if (this.f9992a == null) {
                this.f9992a = new C19473e(this);
            }
            abstractC19472d = this.f9992a;
        }
        return abstractC19472d;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `persisted_event`");
            super.setTransactionSuccessful();
            super.endTransaction();
            if (C22128a.m8651Y0(writableDatabase, "PRAGMA wal_checkpoint(FULL)")) {
                return;
            }
            writableDatabase.mo2668S0("VACUUM");
        } catch (Throwable th) {
            super.endTransaction();
            if (!C22128a.m8651Y0(writableDatabase, "PRAGMA wal_checkpoint(FULL)")) {
                writableDatabase.mo2668S0("VACUUM");
            }
            throw th;
        }
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public C25670o createInvalidationTracker() {
        return new C25670o(this, new HashMap(0), new HashMap(0), "persisted_event");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C2857a(1), "d7da6f9ec87db063c1cd7123cce032d4", "ea3cbe109a25dc3bf0e23f7a16dfea4f");
        Context context = c25651h.f71846b;
        String str = c25651h.f71847c;
        if (context != null) {
            return c25651h.f71845a.mo1435a(new AbstractC26148c.C26150b(context, str, c25683x, false));
        }
        throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(AbstractC19472d.class, Collections.emptyList());
        return hashMap;
    }
}
