package com.truecaller.background_work.persistence;

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
import p193e.p194a.p1392y2.p1393p.AbstractC21776c;
import p193e.p194a.p1392y2.p1393p.C21777d;
/* loaded from: classes5-dex2jar.jar:com/truecaller/background_work/persistence/WorkActionDatabase_Impl.class */
public final class WorkActionDatabase_Impl extends WorkActionDatabase {

    /* renamed from: a */
    public volatile AbstractC21776c f10152a;

    /* renamed from: com.truecaller.background_work.persistence.WorkActionDatabase_Impl$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/background_work/persistence/WorkActionDatabase_Impl$a.class */
    public class C3463a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3463a(int i) {
            super(i);
            WorkActionDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `WorkActionRetryResult` (`actionName` TEXT NOT NULL, `period` TEXT NOT NULL, `internetRequired` INTEGER NOT NULL, `retriedTimes` INTEGER NOT NULL, PRIMARY KEY(`actionName`, `period`, `internetRequired`))");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '3a0885a210f59ca9a7b7ceae92bad963')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `WorkActionRetryResult`");
            List<AbstractC25677q.AbstractC25679b> list = WorkActionDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    WorkActionDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = WorkActionDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    WorkActionDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            WorkActionDatabase_Impl.this.mDatabase = abstractC26147b;
            WorkActionDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = WorkActionDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    WorkActionDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            hashMap.put("actionName", new C25656e.C25657a("actionName", "TEXT", true, 1, null, 1));
            hashMap.put("period", new C25656e.C25657a("period", "TEXT", true, 2, null, 1));
            hashMap.put("internetRequired", new C25656e.C25657a("internetRequired", "INTEGER", true, 3, null, 1));
            C25656e c25656e = new C25656e("WorkActionRetryResult", hashMap, C22128a.m8658W(hashMap, "retriedTimes", new C25656e.C25657a("retriedTimes", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "WorkActionRetryResult");
            return !c25656e.equals(m3085a) ? new C25683x.C25685b(false, C22128a.m8563u2("WorkActionRetryResult(com.truecaller.background_work.persistence.WorkActionRetryResult).\n Expected:\n", c25656e, "\n Found:\n", m3085a)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.background_work.persistence.WorkActionDatabase
    /* renamed from: a */
    public AbstractC21776c mo35889a() {
        AbstractC21776c abstractC21776c;
        if (this.f10152a != null) {
            return this.f10152a;
        }
        synchronized (this) {
            if (this.f10152a == null) {
                this.f10152a = new C21777d(this);
            }
            abstractC21776c = this.f10152a;
        }
        return abstractC21776c;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `WorkActionRetryResult`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "WorkActionRetryResult");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C3463a(2), "3a0885a210f59ca9a7b7ceae92bad963", "cd3a2555263d83c9d54e8588b025d94f");
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
        hashMap.put(AbstractC21776c.class, Collections.emptyList());
        return hashMap;
    }
}
