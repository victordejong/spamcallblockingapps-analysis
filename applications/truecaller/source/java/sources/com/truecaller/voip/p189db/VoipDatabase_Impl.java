package com.truecaller.voip.p189db;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
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
import p193e.p194a.p619d.p655t.AbstractC11796a;
import p193e.p194a.p619d.p655t.C11797b;
/* renamed from: com.truecaller.voip.db.VoipDatabase_Impl */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/db/VoipDatabase_Impl.class */
public final class VoipDatabase_Impl extends VoipDatabase {

    /* renamed from: d */
    public volatile AbstractC11796a f16350d;

    /* renamed from: com.truecaller.voip.db.VoipDatabase_Impl$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/db/VoipDatabase_Impl$a.class */
    public class C4812a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4812a(int i) {
            super(i);
            VoipDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `voip_availability` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `phone` TEXT NOT NULL, `voip_enabled` INTEGER NOT NULL, `version` INTEGER NOT NULL)", "CREATE UNIQUE INDEX IF NOT EXISTS `index_voip_availability_phone` ON `voip_availability` (`phone`)", "CREATE TABLE IF NOT EXISTS `voip_id_cache` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `voip_id` TEXT NOT NULL, `number` TEXT NOT NULL, `expiry_epoch_seconds` INTEGER NOT NULL)", "CREATE UNIQUE INDEX IF NOT EXISTS `index_voip_id_cache_voip_id` ON `voip_id_cache` (`voip_id`)");
            abstractC26147b.mo2668S0("CREATE UNIQUE INDEX IF NOT EXISTS `index_voip_id_cache_number` ON `voip_id_cache` (`number`)");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '347a6a5a76bf916aae5582781ebc7fb7')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `voip_availability`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `voip_id_cache`");
            List<AbstractC25677q.AbstractC25679b> list = VoipDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    VoipDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = VoipDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    VoipDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            VoipDatabase_Impl.this.mDatabase = abstractC26147b;
            VoipDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = VoipDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    VoipDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            HashMap hashMap = new HashMap(4);
            hashMap.put("_id", new C25656e.C25657a("_id", "INTEGER", false, 1, null, 1));
            hashMap.put(AnalyticsConstants.PHONE, new C25656e.C25657a(AnalyticsConstants.PHONE, "TEXT", true, 0, null, 1));
            hashMap.put("voip_enabled", new C25656e.C25657a("voip_enabled", "INTEGER", true, 0, null, 1));
            HashSet m8658W = C22128a.m8658W(hashMap, "version", new C25656e.C25657a("version", "INTEGER", true, 0, null, 1), 0);
            HashSet hashSet = new HashSet(1);
            hashSet.add(new C25656e.C25660d("index_voip_availability_phone", true, Arrays.asList(AnalyticsConstants.PHONE)));
            C25656e c25656e = new C25656e("voip_availability", hashMap, m8658W, hashSet);
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "voip_availability");
            if (!c25656e.equals(m3085a)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("voip_availability(com.truecaller.voip.db.VoipAvailability).\n Expected:\n", c25656e, "\n Found:\n", m3085a));
            }
            HashMap hashMap2 = new HashMap(4);
            hashMap2.put("_id", new C25656e.C25657a("_id", "INTEGER", false, 1, null, 1));
            hashMap2.put("voip_id", new C25656e.C25657a("voip_id", "TEXT", true, 0, null, 1));
            hashMap2.put("number", new C25656e.C25657a("number", "TEXT", true, 0, null, 1));
            HashSet m8658W2 = C22128a.m8658W(hashMap2, "expiry_epoch_seconds", new C25656e.C25657a("expiry_epoch_seconds", "INTEGER", true, 0, null, 1), 0);
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new C25656e.C25660d("index_voip_id_cache_voip_id", true, Arrays.asList("voip_id")));
            hashSet2.add(new C25656e.C25660d("index_voip_id_cache_number", true, Arrays.asList("number")));
            C25656e c25656e2 = new C25656e("voip_id_cache", hashMap2, m8658W2, hashSet2);
            C25656e m3085a2 = C25656e.m3085a(abstractC26147b, "voip_id_cache");
            return !c25656e2.equals(m3085a2) ? new C25683x.C25685b(false, C22128a.m8563u2("voip_id_cache(com.truecaller.voip.db.VoipIdCache).\n Expected:\n", c25656e2, "\n Found:\n", m3085a2)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.voip.p189db.VoipDatabase
    /* renamed from: a */
    public AbstractC11796a mo34334a() {
        AbstractC11796a abstractC11796a;
        if (this.f16350d != null) {
            return this.f16350d;
        }
        synchronized (this) {
            if (this.f16350d == null) {
                this.f16350d = new C11797b(this);
            }
            abstractC11796a = this.f16350d;
        }
        return abstractC11796a;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `voip_availability`");
            writableDatabase.mo2668S0("DELETE FROM `voip_id_cache`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "voip_availability", "voip_id_cache");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C4812a(2), "347a6a5a76bf916aae5582781ebc7fb7", "f6b354aba1750c9569d822d2120a818d");
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
        hashMap.put(AbstractC11796a.class, Collections.emptyList());
        return hashMap;
    }
}
