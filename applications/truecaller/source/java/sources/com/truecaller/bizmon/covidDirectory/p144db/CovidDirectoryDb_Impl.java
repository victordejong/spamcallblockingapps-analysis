package com.truecaller.bizmon.covidDirectory.p144db;

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
import p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7965a;
import p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7969c;
import p193e.p194a.p294b.p345k.p347b.p348a.AbstractC7975e;
import p193e.p194a.p294b.p345k.p347b.p348a.C7966b;
import p193e.p194a.p294b.p345k.p347b.p348a.C7970d;
import p193e.p194a.p294b.p345k.p347b.p348a.C7976f;
/* renamed from: com.truecaller.bizmon.covidDirectory.db.CovidDirectoryDb_Impl */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/covidDirectory/db/CovidDirectoryDb_Impl.class */
public final class CovidDirectoryDb_Impl extends CovidDirectoryDb {

    /* renamed from: a */
    public volatile AbstractC7975e f10291a;

    /* renamed from: b */
    public volatile AbstractC7969c f10292b;

    /* renamed from: c */
    public volatile AbstractC7965a f10293c;

    /* renamed from: com.truecaller.bizmon.covidDirectory.db.CovidDirectoryDb_Impl$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/covidDirectory/db/CovidDirectoryDb_Impl$a.class */
    public class C3489a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3489a(int i) {
            super(i);
            CovidDirectoryDb_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `state` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `general_count` INTEGER NOT NULL)", "CREATE TABLE IF NOT EXISTS `district` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `contacts_count` INTEGER NOT NULL, `state_id` INTEGER NOT NULL, FOREIGN KEY(`state_id`) REFERENCES `state`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )", "CREATE INDEX IF NOT EXISTS `index_district_state_id` ON `district` (`state_id`)", "CREATE TABLE IF NOT EXISTS `contact` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `hospital_name` TEXT NOT NULL, `phone_number` TEXT NOT NULL, `address` TEXT, `district_id` INTEGER, `state_id` INTEGER, FOREIGN KEY(`district_id`) REFERENCES `district`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION , FOREIGN KEY(`state_id`) REFERENCES `state`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION )");
            C22128a.m8561v0(abstractC26147b, "CREATE INDEX IF NOT EXISTS `index_contact_district_id` ON `contact` (`district_id`)", "CREATE INDEX IF NOT EXISTS `index_contact_state_id` ON `contact` (`state_id`)", "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)", "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'fe1a542294c02d5c1468fe5c06a473a6')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `state`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `district`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `contact`");
            List<AbstractC25677q.AbstractC25679b> list = CovidDirectoryDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    CovidDirectoryDb_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = CovidDirectoryDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    CovidDirectoryDb_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            CovidDirectoryDb_Impl.this.mDatabase = abstractC26147b;
            abstractC26147b.mo2668S0("PRAGMA foreign_keys = ON");
            CovidDirectoryDb_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = CovidDirectoryDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    CovidDirectoryDb_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            C25656e c25656e = new C25656e("state", hashMap, C22128a.m8658W(hashMap, "general_count", new C25656e.C25657a("general_count", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "state");
            if (!c25656e.equals(m3085a)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("state(com.truecaller.bizmon.covidDirectory.db.entities.State).\n Expected:\n", c25656e, "\n Found:\n", m3085a));
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
                return new C25683x.C25685b(false, C22128a.m8563u2("district(com.truecaller.bizmon.covidDirectory.db.entities.District).\n Expected:\n", c25656e2, "\n Found:\n", m3085a2));
            }
            HashMap hashMap3 = new HashMap(6);
            hashMap3.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap3.put("hospital_name", new C25656e.C25657a("hospital_name", "TEXT", true, 0, null, 1));
            hashMap3.put("phone_number", new C25656e.C25657a("phone_number", "TEXT", true, 0, null, 1));
            hashMap3.put("address", new C25656e.C25657a("address", "TEXT", false, 0, null, 1));
            hashMap3.put("district_id", new C25656e.C25657a("district_id", "INTEGER", false, 0, null, 1));
            HashSet m8658W2 = C22128a.m8658W(hashMap3, "state_id", new C25656e.C25657a("state_id", "INTEGER", false, 0, null, 1), 2);
            m8658W2.add(new C25656e.C25658b("district", "NO ACTION", "NO ACTION", Arrays.asList("district_id"), Arrays.asList("id")));
            m8658W2.add(new C25656e.C25658b("state", "NO ACTION", "NO ACTION", Arrays.asList("state_id"), Arrays.asList("id")));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new C25656e.C25660d("index_contact_district_id", false, Arrays.asList("district_id")));
            hashSet2.add(new C25656e.C25660d("index_contact_state_id", false, Arrays.asList("state_id")));
            C25656e c25656e3 = new C25656e(AnalyticsConstants.CONTACT, hashMap3, m8658W2, hashSet2);
            C25656e m3085a3 = C25656e.m3085a(abstractC26147b, AnalyticsConstants.CONTACT);
            return !c25656e3.equals(m3085a3) ? new C25683x.C25685b(false, C22128a.m8563u2("contact(com.truecaller.bizmon.covidDirectory.db.entities.CovidHospitalContact).\n Expected:\n", c25656e3, "\n Found:\n", m3085a3)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.bizmon.covidDirectory.p144db.CovidDirectoryDb
    /* renamed from: a */
    public AbstractC7965a mo35881a() {
        AbstractC7965a abstractC7965a;
        if (this.f10293c != null) {
            return this.f10293c;
        }
        synchronized (this) {
            if (this.f10293c == null) {
                this.f10293c = new C7966b(this);
            }
            abstractC7965a = this.f10293c;
        }
        return abstractC7965a;
    }

    @Override // com.truecaller.bizmon.covidDirectory.p144db.CovidDirectoryDb
    /* renamed from: b */
    public AbstractC7969c mo35880b() {
        AbstractC7969c abstractC7969c;
        if (this.f10292b != null) {
            return this.f10292b;
        }
        synchronized (this) {
            if (this.f10292b == null) {
                this.f10292b = new C7970d(this);
            }
            abstractC7969c = this.f10292b;
        }
        return abstractC7969c;
    }

    @Override // com.truecaller.bizmon.covidDirectory.p144db.CovidDirectoryDb
    /* renamed from: c */
    public AbstractC7975e mo35879c() {
        AbstractC7975e abstractC7975e;
        if (this.f10291a != null) {
            return this.f10291a;
        }
        synchronized (this) {
            if (this.f10291a == null) {
                this.f10291a = new C7976f(this);
            }
            abstractC7975e = this.f10291a;
        }
        return abstractC7975e;
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
        C25683x c25683x = new C25683x(c25651h, new C3489a(1), "fe1a542294c02d5c1468fe5c06a473a6", "358e8826db6d72bdf68e1fdf661be95d");
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
        hashMap.put(AbstractC7975e.class, Collections.emptyList());
        hashMap.put(AbstractC7969c.class, Collections.emptyList());
        hashMap.put(AbstractC7965a.class, Collections.emptyList());
        return hashMap;
    }
}
