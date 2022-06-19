package com.truecaller.call_alert.utils.calling_cache;

import android.content.Context;
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
import p193e.p194a.p703e3.p710k.p711s.AbstractC13465a;
import p193e.p194a.p703e3.p710k.p711s.C13466b;
/* loaded from: classes6-dex2jar.jar:com/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl.class */
public final class CallingCacheDatabase_Impl extends CallingCacheDatabase {

    /* renamed from: d */
    public volatile AbstractC13465a f10546d;

    /* renamed from: com.truecaller.call_alert.utils.calling_cache.CallingCacheDatabase_Impl$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/call_alert/utils/calling_cache/CallingCacheDatabase_Impl$a.class */
    public class C3585a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3585a(int i) {
            super(i);
            CallingCacheDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `call_cache` (`number` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `state` TEXT NOT NULL, `maxAgeSeconds` INTEGER NOT NULL, `_id` INTEGER PRIMARY KEY AUTOINCREMENT)", "CREATE UNIQUE INDEX IF NOT EXISTS `index_call_cache_number_state` ON `call_cache` (`number`, `state`)", "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)", "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'af35447d6c059b339496371a9145b79d')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `call_cache`");
            List<AbstractC25677q.AbstractC25679b> list = CallingCacheDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    CallingCacheDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = CallingCacheDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    CallingCacheDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            CallingCacheDatabase_Impl.this.mDatabase = abstractC26147b;
            CallingCacheDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = CallingCacheDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    CallingCacheDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            hashMap.put("number", new C25656e.C25657a("number", "TEXT", true, 0, null, 1));
            hashMap.put("timestamp", new C25656e.C25657a("timestamp", "INTEGER", true, 0, null, 1));
            hashMap.put("state", new C25656e.C25657a("state", "TEXT", true, 0, null, 1));
            hashMap.put("maxAgeSeconds", new C25656e.C25657a("maxAgeSeconds", "INTEGER", true, 0, null, 1));
            HashSet m8658W = C22128a.m8658W(hashMap, "_id", new C25656e.C25657a("_id", "INTEGER", false, 1, null, 1), 0);
            HashSet hashSet = new HashSet(1);
            hashSet.add(new C25656e.C25660d("index_call_cache_number_state", true, Arrays.asList("number", "state")));
            C25656e c25656e = new C25656e("call_cache", hashMap, m8658W, hashSet);
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "call_cache");
            return !c25656e.equals(m3085a) ? new C25683x.C25685b(false, C22128a.m8563u2("call_cache(com.truecaller.network.util.calling_cache.CallCacheEntry).\n Expected:\n", c25656e, "\n Found:\n", m3085a)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.call_alert.utils.calling_cache.CallingCacheDatabase
    /* renamed from: a */
    public AbstractC13465a mo35802a() {
        AbstractC13465a abstractC13465a;
        if (this.f10546d != null) {
            return this.f10546d;
        }
        synchronized (this) {
            if (this.f10546d == null) {
                this.f10546d = new C13466b(this);
            }
            abstractC13465a = this.f10546d;
        }
        return abstractC13465a;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `call_cache`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "call_cache");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C3585a(2), "af35447d6c059b339496371a9145b79d", "8a64d2a33b0c5da3ba2903f74bce733f");
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
        hashMap.put(AbstractC13465a.class, Collections.emptyList());
        return hashMap;
    }
}
