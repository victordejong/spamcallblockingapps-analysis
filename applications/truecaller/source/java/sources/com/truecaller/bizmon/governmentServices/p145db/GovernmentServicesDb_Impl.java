package com.truecaller.bizmon.governmentServices.p145db;

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
import p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8127a;
import p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8131c;
import p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8137e;
import p193e.p194a.p294b.p357o.p360c.p361a.C8128b;
import p193e.p194a.p294b.p357o.p360c.p361a.C8132d;
import p193e.p194a.p294b.p357o.p360c.p361a.C8138f;
/* renamed from: com.truecaller.bizmon.governmentServices.db.GovernmentServicesDb_Impl */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl.class */
public final class GovernmentServicesDb_Impl extends GovernmentServicesDb {

    /* renamed from: a */
    public volatile AbstractC8137e f10295a;

    /* renamed from: b */
    public volatile AbstractC8131c f10296b;

    /* renamed from: c */
    public volatile AbstractC8127a f10297c;

    /* renamed from: com.truecaller.bizmon.governmentServices.db.GovernmentServicesDb_Impl$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/governmentServices/db/GovernmentServicesDb_Impl$a.class */
    public class C3490a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3490a(int i) {
            super(i);
            GovernmentServicesDb_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `state` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `general_services_count` INTEGER NOT NULL)", "CREATE TABLE IF NOT EXISTS `district` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `contacts_count` INTEGER NOT NULL, `state_id` INTEGER NOT NULL, FOREIGN KEY(`state_id`) REFERENCES `state`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )", "CREATE INDEX IF NOT EXISTS `index_district_state_id` ON `district` (`state_id`)", "CREATE TABLE IF NOT EXISTS `contact` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `phone_number` TEXT NOT NULL, `designation` TEXT, `department_name` TEXT, `email` TEXT, `fax` TEXT, `address` TEXT, `ministry` TEXT, `res` TEXT, `district_id` INTEGER, `state_id` INTEGER, FOREIGN KEY(`district_id`) REFERENCES `district`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION , FOREIGN KEY(`state_id`) REFERENCES `state`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )");
            C22128a.m8561v0(abstractC26147b, "CREATE INDEX IF NOT EXISTS `index_contact_district_id` ON `contact` (`district_id`)", "CREATE INDEX IF NOT EXISTS `index_contact_state_id` ON `contact` (`state_id`)", "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)", "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '0614d2d917b72be170a2b0615ff98667')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `state`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `district`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `contact`");
            List<AbstractC25677q.AbstractC25679b> list = GovernmentServicesDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    GovernmentServicesDb_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = GovernmentServicesDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    GovernmentServicesDb_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            GovernmentServicesDb_Impl.this.mDatabase = abstractC26147b;
            abstractC26147b.mo2668S0("PRAGMA foreign_keys = ON");
            GovernmentServicesDb_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = GovernmentServicesDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    GovernmentServicesDb_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            HashMap hashMap = new HashMap(3);
            hashMap.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap.put(AnalyticsConstants.NAME, new C25656e.C25657a(AnalyticsConstants.NAME, "TEXT", true, 0, null, 1));
            C25656e c25656e = new C25656e("state", hashMap, C22128a.m8658W(hashMap, "general_services_count", new C25656e.C25657a("general_services_count", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "state");
            if (!c25656e.equals(m3085a)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("state(com.truecaller.bizmon.governmentServices.db.entities.State).\n Expected:\n", c25656e, "\n Found:\n", m3085a));
            }
            HashMap hashMap2 = new HashMap(4);
            hashMap2.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap2.put(AnalyticsConstants.NAME, new C25656e.C25657a(AnalyticsConstants.NAME, "TEXT", true, 0, null, 1));
            hashMap2.put("contacts_count", new C25656e.C25657a("contacts_count", "INTEGER", true, 0, null, 1));
            HashSet m8658W = C22128a.m8658W(hashMap2, "state_id", new C25656e.C25657a("state_id", "INTEGER", true, 0, null, 1), 1);
            m8658W.add(new C25656e.C25658b("state", "NO ACTION", "NO ACTION", Arrays.asList("state_id"), Arrays.asList("id")));
            HashSet hashSet = new HashSet(1);
            hashSet.add(new C25656e.C25660d("index_district_state_id", false, Arrays.asList("state_id")));
            C25656e c25656e2 = new C25656e("district", hashMap2, m8658W, hashSet);
            C25656e m3085a2 = C25656e.m3085a(abstractC26147b, "district");
            if (!c25656e2.equals(m3085a2)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("district(com.truecaller.bizmon.governmentServices.db.entities.District).\n Expected:\n", c25656e2, "\n Found:\n", m3085a2));
            }
            HashMap hashMap3 = new HashMap(12);
            hashMap3.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap3.put(AnalyticsConstants.NAME, new C25656e.C25657a(AnalyticsConstants.NAME, "TEXT", true, 0, null, 1));
            hashMap3.put("phone_number", new C25656e.C25657a("phone_number", "TEXT", true, 0, null, 1));
            hashMap3.put("designation", new C25656e.C25657a("designation", "TEXT", false, 0, null, 1));
            hashMap3.put("department_name", new C25656e.C25657a("department_name", "TEXT", false, 0, null, 1));
            hashMap3.put(AnalyticsConstants.EMAIL, new C25656e.C25657a(AnalyticsConstants.EMAIL, "TEXT", false, 0, null, 1));
            hashMap3.put("fax", new C25656e.C25657a("fax", "TEXT", false, 0, null, 1));
            hashMap3.put("address", new C25656e.C25657a("address", "TEXT", false, 0, null, 1));
            hashMap3.put("ministry", new C25656e.C25657a("ministry", "TEXT", false, 0, null, 1));
            hashMap3.put("res", new C25656e.C25657a("res", "TEXT", false, 0, null, 1));
            hashMap3.put("district_id", new C25656e.C25657a("district_id", "INTEGER", false, 0, null, 1));
            HashSet m8658W2 = C22128a.m8658W(hashMap3, "state_id", new C25656e.C25657a("state_id", "INTEGER", false, 0, null, 1), 2);
            m8658W2.add(new C25656e.C25658b("district", "NO ACTION", "NO ACTION", Arrays.asList("district_id"), Arrays.asList("id")));
            m8658W2.add(new C25656e.C25658b("state", "NO ACTION", "NO ACTION", Arrays.asList("state_id"), Arrays.asList("id")));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new C25656e.C25660d("index_contact_district_id", false, Arrays.asList("district_id")));
            hashSet2.add(new C25656e.C25660d("index_contact_state_id", false, Arrays.asList("state_id")));
            C25656e c25656e3 = new C25656e(AnalyticsConstants.CONTACT, hashMap3, m8658W2, hashSet2);
            C25656e m3085a3 = C25656e.m3085a(abstractC26147b, AnalyticsConstants.CONTACT);
            return !c25656e3.equals(m3085a3) ? new C25683x.C25685b(false, C22128a.m8563u2("contact(com.truecaller.bizmon.governmentServices.db.entities.GovServicesContact).\n Expected:\n", c25656e3, "\n Found:\n", m3085a3)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.bizmon.governmentServices.p145db.GovernmentServicesDb
    /* renamed from: a */
    public AbstractC8127a mo35878a() {
        AbstractC8127a abstractC8127a;
        if (this.f10297c != null) {
            return this.f10297c;
        }
        synchronized (this) {
            if (this.f10297c == null) {
                this.f10297c = new C8128b(this);
            }
            abstractC8127a = this.f10297c;
        }
        return abstractC8127a;
    }

    @Override // com.truecaller.bizmon.governmentServices.p145db.GovernmentServicesDb
    /* renamed from: b */
    public AbstractC8131c mo35877b() {
        AbstractC8131c abstractC8131c;
        if (this.f10296b != null) {
            return this.f10296b;
        }
        synchronized (this) {
            if (this.f10296b == null) {
                this.f10296b = new C8132d(this);
            }
            abstractC8131c = this.f10296b;
        }
        return abstractC8131c;
    }

    @Override // com.truecaller.bizmon.governmentServices.p145db.GovernmentServicesDb
    /* renamed from: c */
    public AbstractC8137e mo35876c() {
        AbstractC8137e abstractC8137e;
        if (this.f10295a != null) {
            return this.f10295a;
        }
        synchronized (this) {
            if (this.f10295a == null) {
                this.f10295a = new C8138f(this);
            }
            abstractC8137e = this.f10295a;
        }
        return abstractC8137e;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        if (1 == 0) {
            try {
                writableDatabase.mo2668S0("PRAGMA foreign_keys = FALSE");
            } catch (Throwable th) {
                super.endTransaction();
                if (1 == 0) {
                    writableDatabase.mo2668S0("PRAGMA foreign_keys = TRUE");
                }
                if (!C22128a.m8651Y0(writableDatabase, "PRAGMA wal_checkpoint(FULL)")) {
                    writableDatabase.mo2668S0("VACUUM");
                }
                throw th;
            }
        }
        super.beginTransaction();
        if (1 != 0) {
            writableDatabase.mo2668S0("PRAGMA defer_foreign_keys = TRUE");
        }
        writableDatabase.mo2668S0("DELETE FROM `contact`");
        writableDatabase.mo2668S0("DELETE FROM `district`");
        writableDatabase.mo2668S0("DELETE FROM `state`");
        super.setTransactionSuccessful();
        super.endTransaction();
        if (1 == 0) {
            writableDatabase.mo2668S0("PRAGMA foreign_keys = TRUE");
        }
        if (!C22128a.m8651Y0(writableDatabase, "PRAGMA wal_checkpoint(FULL)")) {
            writableDatabase.mo2668S0("VACUUM");
        }
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public C25670o createInvalidationTracker() {
        return new C25670o(this, new HashMap(0), new HashMap(0), "state", "district", AnalyticsConstants.CONTACT);
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C3490a(2), "0614d2d917b72be170a2b0615ff98667", "0267946a22f725e2bf2f9b7b7f582b23");
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
        hashMap.put(AbstractC8137e.class, Collections.emptyList());
        hashMap.put(AbstractC8131c.class, Collections.emptyList());
        hashMap.put(AbstractC8127a.class, Collections.emptyList());
        return hashMap;
    }
}
