package com.truecaller.searchwarnings.data.p175db;

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
import p193e.p194a.p1359x4.p1360j.p1362d.AbstractC21439b;
import p193e.p194a.p1359x4.p1360j.p1362d.C21440c;
/* renamed from: com.truecaller.searchwarnings.data.db.SearchWarningsDatabase_Impl */
/* loaded from: classes13-dex2jar.jar:com/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl.class */
public final class SearchWarningsDatabase_Impl extends SearchWarningsDatabase {

    /* renamed from: c */
    public volatile AbstractC21439b f14687c;

    /* renamed from: com.truecaller.searchwarnings.data.db.SearchWarningsDatabase_Impl$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/searchwarnings/data/db/SearchWarningsDatabase_Impl$a.class */
    public class C4448a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4448a(int i) {
            super(i);
            SearchWarningsDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `search_warnings` (`_id` TEXT NOT NULL, `header` TEXT NOT NULL, `message` TEXT NOT NULL, `backgroundColor` TEXT, `foregroundColor` TEXT, `iconUrl` TEXT, PRIMARY KEY(`_id`))");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '40f75f6e493b6b88a67b3516632dcef0')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `search_warnings`");
            List<AbstractC25677q.AbstractC25679b> list = SearchWarningsDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    SearchWarningsDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = SearchWarningsDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    SearchWarningsDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            SearchWarningsDatabase_Impl.this.mDatabase = abstractC26147b;
            SearchWarningsDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = SearchWarningsDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    SearchWarningsDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            HashMap hashMap = new HashMap(6);
            hashMap.put("_id", new C25656e.C25657a("_id", "TEXT", true, 1, null, 1));
            hashMap.put("header", new C25656e.C25657a("header", "TEXT", true, 0, null, 1));
            hashMap.put("message", new C25656e.C25657a("message", "TEXT", true, 0, null, 1));
            hashMap.put("backgroundColor", new C25656e.C25657a("backgroundColor", "TEXT", false, 0, null, 1));
            hashMap.put("foregroundColor", new C25656e.C25657a("foregroundColor", "TEXT", false, 0, null, 1));
            C25656e c25656e = new C25656e("search_warnings", hashMap, C22128a.m8658W(hashMap, "iconUrl", new C25656e.C25657a("iconUrl", "TEXT", false, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "search_warnings");
            return !c25656e.equals(m3085a) ? new C25683x.C25685b(false, C22128a.m8563u2("search_warnings(com.truecaller.searchwarnings.data.SearchWarningDTO).\n Expected:\n", c25656e, "\n Found:\n", m3085a)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.searchwarnings.data.p175db.SearchWarningsDatabase
    /* renamed from: a */
    public AbstractC21439b mo34777a() {
        AbstractC21439b abstractC21439b;
        if (this.f14687c != null) {
            return this.f14687c;
        }
        synchronized (this) {
            if (this.f14687c == null) {
                this.f14687c = new C21440c(this);
            }
            abstractC21439b = this.f14687c;
        }
        return abstractC21439b;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `search_warnings`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "search_warnings");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C4448a(3), "40f75f6e493b6b88a67b3516632dcef0", "c272bcf729aace1b4ae0327c67e1ed24");
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
        hashMap.put(AbstractC21439b.class, Collections.emptyList());
        return hashMap;
    }
}
