package com.truecaller.flashsdk.p165db;

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
import p193e.p194a.p1365y.p1386d.AbstractC21701c;
import p193e.p194a.p1365y.p1386d.C21704f;
/* renamed from: com.truecaller.flashsdk.db.FlashDatabase_Impl */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/db/FlashDatabase_Impl.class */
public final class FlashDatabase_Impl extends FlashDatabase {

    /* renamed from: a */
    public volatile AbstractC21701c f11986a;

    /* renamed from: com.truecaller.flashsdk.db.FlashDatabase_Impl$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/db/FlashDatabase_Impl$a.class */
    public class C3918a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3918a(int i) {
            super(i);
            FlashDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `flash_state` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `phone` TEXT NOT NULL, `type` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `history` TEXT)", "CREATE UNIQUE INDEX IF NOT EXISTS `index_flash_state_phone` ON `flash_state` (`phone`)", "CREATE TABLE IF NOT EXISTS `flash_cache` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `phone` TEXT NOT NULL, `flash_enabled` INTEGER NOT NULL, `version` INTEGER NOT NULL)", "CREATE UNIQUE INDEX IF NOT EXISTS `index_flash_cache_phone` ON `flash_cache` (`phone`)");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '8068506873f25b1a7d7eda895dd84d81')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `flash_state`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `flash_cache`");
            List<AbstractC25677q.AbstractC25679b> list = FlashDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    FlashDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = FlashDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    FlashDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            FlashDatabase_Impl.this.mDatabase = abstractC26147b;
            FlashDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = FlashDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    FlashDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            HashMap hashMap = new HashMap(5);
            hashMap.put("_id", new C25656e.C25657a("_id", "INTEGER", false, 1, null, 1));
            hashMap.put(AnalyticsConstants.PHONE, new C25656e.C25657a(AnalyticsConstants.PHONE, "TEXT", true, 0, null, 1));
            hashMap.put("type", new C25656e.C25657a("type", "TEXT", true, 0, null, 1));
            hashMap.put("timestamp", new C25656e.C25657a("timestamp", "INTEGER", true, 0, null, 1));
            HashSet m8658W = C22128a.m8658W(hashMap, "history", new C25656e.C25657a("history", "TEXT", false, 0, null, 1), 0);
            HashSet hashSet = new HashSet(1);
            hashSet.add(new C25656e.C25660d("index_flash_state_phone", true, Arrays.asList(AnalyticsConstants.PHONE)));
            C25656e c25656e = new C25656e("flash_state", hashMap, m8658W, hashSet);
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "flash_state");
            if (!c25656e.equals(m3085a)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("flash_state(com.truecaller.flashsdk.db.FlashHistory).\n Expected:\n", c25656e, "\n Found:\n", m3085a));
            }
            HashMap hashMap2 = new HashMap(4);
            hashMap2.put("_id", new C25656e.C25657a("_id", "INTEGER", false, 1, null, 1));
            hashMap2.put(AnalyticsConstants.PHONE, new C25656e.C25657a(AnalyticsConstants.PHONE, "TEXT", true, 0, null, 1));
            hashMap2.put("flash_enabled", new C25656e.C25657a("flash_enabled", "INTEGER", true, 0, null, 1));
            HashSet m8658W2 = C22128a.m8658W(hashMap2, "version", new C25656e.C25657a("version", "INTEGER", true, 0, null, 1), 0);
            HashSet hashSet2 = new HashSet(1);
            hashSet2.add(new C25656e.C25660d("index_flash_cache_phone", true, Arrays.asList(AnalyticsConstants.PHONE)));
            C25656e c25656e2 = new C25656e("flash_cache", hashMap2, m8658W2, hashSet2);
            C25656e m3085a2 = C25656e.m3085a(abstractC26147b, "flash_cache");
            return !c25656e2.equals(m3085a2) ? new C25683x.C25685b(false, C22128a.m8563u2("flash_cache(com.truecaller.flashsdk.db.FlashState).\n Expected:\n", c25656e2, "\n Found:\n", m3085a2)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.flashsdk.p165db.FlashDatabase
    /* renamed from: a */
    public AbstractC21701c mo35394a() {
        AbstractC21701c abstractC21701c;
        if (this.f11986a != null) {
            return this.f11986a;
        }
        synchronized (this) {
            if (this.f11986a == null) {
                this.f11986a = new C21704f(this);
            }
            abstractC21701c = this.f11986a;
        }
        return abstractC21701c;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `flash_state`");
            writableDatabase.mo2668S0("DELETE FROM `flash_cache`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "flash_state", "flash_cache");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C3918a(5), "8068506873f25b1a7d7eda895dd84d81", "af06dba1528a2160470f8bc1e5b66525");
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
        hashMap.put(AbstractC21701c.class, Collections.emptyList());
        return hashMap;
    }
}
