package com.truecaller.contactfeedback.p157db;

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
import p193e.p194a.p1138q.p1143g.AbstractC19407a;
import p193e.p194a.p1138q.p1143g.AbstractC19413c;
import p193e.p194a.p1138q.p1143g.AbstractC19432g;
import p193e.p194a.p1138q.p1143g.C19408b;
import p193e.p194a.p1138q.p1143g.C19414d;
import p193e.p194a.p1138q.p1143g.C19433h;
/* renamed from: com.truecaller.contactfeedback.db.ContactFeedbackDatabase_Impl */
/* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl.class */
public final class ContactFeedbackDatabase_Impl extends ContactFeedbackDatabase {

    /* renamed from: b */
    public volatile AbstractC19413c f11330b;

    /* renamed from: c */
    public volatile AbstractC19432g f11331c;

    /* renamed from: d */
    public volatile AbstractC19407a f11332d;

    /* renamed from: com.truecaller.contactfeedback.db.ContactFeedbackDatabase_Impl$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/db/ContactFeedbackDatabase_Impl$a.class */
    public class C3750a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3750a(int i) {
            super(i);
            ContactFeedbackDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `contact_feedback` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `normalized_number` TEXT NOT NULL, `original_name` TEXT NOT NULL, `suggested_name` TEXT, `feedback_type` INTEGER, `contact_type` INTEGER, `feedback_source` INTEGER, `name_election_algorithm` TEXT, `created_at` INTEGER NOT NULL)", "CREATE UNIQUE INDEX IF NOT EXISTS `index_contact_feedback_normalized_number` ON `contact_feedback` (`normalized_number`)", "CREATE TABLE IF NOT EXISTS `contact_feedback_timestamp_table` (`_id` INTEGER NOT NULL, `contact_id` INTEGER NOT NULL, `feedback_timestamp` INTEGER NOT NULL, PRIMARY KEY(`_id`))", "CREATE UNIQUE INDEX IF NOT EXISTS `index_contact_feedback_timestamp_table_contact_id` ON `contact_feedback_timestamp_table` (`contact_id`)");
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `comment_feedback_table` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `creation_timestamp` INTEGER NOT NULL, `phone_number` TEXT NOT NULL, `text_body` TEXT NOT NULL, `source` TEXT NOT NULL, `sync_state` TEXT NOT NULL, `anonymous` INTEGER NOT NULL, `phone_number_type` TEXT NOT NULL)", "CREATE UNIQUE INDEX IF NOT EXISTS `index_comment_feedback_table_phone_number` ON `comment_feedback_table` (`phone_number`)", "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)", "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '8c3c405d4100a99bcdadfba7d2f67683')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `contact_feedback`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `contact_feedback_timestamp_table`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `comment_feedback_table`");
            List<AbstractC25677q.AbstractC25679b> list = ContactFeedbackDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    ContactFeedbackDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = ContactFeedbackDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    ContactFeedbackDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            ContactFeedbackDatabase_Impl.this.mDatabase = abstractC26147b;
            ContactFeedbackDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = ContactFeedbackDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    ContactFeedbackDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            HashMap hashMap = new HashMap(9);
            hashMap.put("_id", new C25656e.C25657a("_id", "INTEGER", false, 1, null, 1));
            hashMap.put("normalized_number", new C25656e.C25657a("normalized_number", "TEXT", true, 0, null, 1));
            hashMap.put("original_name", new C25656e.C25657a("original_name", "TEXT", true, 0, null, 1));
            hashMap.put("suggested_name", new C25656e.C25657a("suggested_name", "TEXT", false, 0, null, 1));
            hashMap.put("feedback_type", new C25656e.C25657a("feedback_type", "INTEGER", false, 0, null, 1));
            hashMap.put("contact_type", new C25656e.C25657a("contact_type", "INTEGER", false, 0, null, 1));
            hashMap.put("feedback_source", new C25656e.C25657a("feedback_source", "INTEGER", false, 0, null, 1));
            hashMap.put("name_election_algorithm", new C25656e.C25657a("name_election_algorithm", "TEXT", false, 0, null, 1));
            HashSet m8658W = C22128a.m8658W(hashMap, "created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1), 0);
            HashSet hashSet = new HashSet(1);
            hashSet.add(new C25656e.C25660d("index_contact_feedback_normalized_number", true, Arrays.asList("normalized_number")));
            C25656e c25656e = new C25656e("contact_feedback", hashMap, m8658W, hashSet);
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "contact_feedback");
            if (!c25656e.equals(m3085a)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("contact_feedback(com.truecaller.contactfeedback.db.ContactFeedback).\n Expected:\n", c25656e, "\n Found:\n", m3085a));
            }
            HashMap hashMap2 = new HashMap(3);
            hashMap2.put("_id", new C25656e.C25657a("_id", "INTEGER", true, 1, null, 1));
            hashMap2.put("contact_id", new C25656e.C25657a("contact_id", "INTEGER", true, 0, null, 1));
            HashSet m8658W2 = C22128a.m8658W(hashMap2, "feedback_timestamp", new C25656e.C25657a("feedback_timestamp", "INTEGER", true, 0, null, 1), 0);
            HashSet hashSet2 = new HashSet(1);
            hashSet2.add(new C25656e.C25660d("index_contact_feedback_timestamp_table_contact_id", true, Arrays.asList("contact_id")));
            C25656e c25656e2 = new C25656e("contact_feedback_timestamp_table", hashMap2, m8658W2, hashSet2);
            C25656e m3085a2 = C25656e.m3085a(abstractC26147b, "contact_feedback_timestamp_table");
            if (!c25656e2.equals(m3085a2)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("contact_feedback_timestamp_table(com.truecaller.contactfeedback.db.ContactFeedbackTimestamp).\n Expected:\n", c25656e2, "\n Found:\n", m3085a2));
            }
            HashMap hashMap3 = new HashMap(8);
            hashMap3.put("_id", new C25656e.C25657a("_id", "INTEGER", true, 1, null, 1));
            hashMap3.put("creation_timestamp", new C25656e.C25657a("creation_timestamp", "INTEGER", true, 0, null, 1));
            hashMap3.put("phone_number", new C25656e.C25657a("phone_number", "TEXT", true, 0, null, 1));
            hashMap3.put("text_body", new C25656e.C25657a("text_body", "TEXT", true, 0, null, 1));
            hashMap3.put("source", new C25656e.C25657a("source", "TEXT", true, 0, null, 1));
            hashMap3.put("sync_state", new C25656e.C25657a("sync_state", "TEXT", true, 0, null, 1));
            hashMap3.put("anonymous", new C25656e.C25657a("anonymous", "INTEGER", true, 0, null, 1));
            HashSet m8658W3 = C22128a.m8658W(hashMap3, "phone_number_type", new C25656e.C25657a("phone_number_type", "TEXT", true, 0, null, 1), 0);
            HashSet hashSet3 = new HashSet(1);
            hashSet3.add(new C25656e.C25660d("index_comment_feedback_table_phone_number", true, Arrays.asList("phone_number")));
            C25656e c25656e3 = new C25656e("comment_feedback_table", hashMap3, m8658W3, hashSet3);
            C25656e m3085a3 = C25656e.m3085a(abstractC26147b, "comment_feedback_table");
            return !c25656e3.equals(m3085a3) ? new C25683x.C25685b(false, C22128a.m8563u2("comment_feedback_table(com.truecaller.contactfeedback.db.CommentFeedback).\n Expected:\n", c25656e3, "\n Found:\n", m3085a3)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.contactfeedback.p157db.ContactFeedbackDatabase
    /* renamed from: a */
    public AbstractC19407a mo35614a() {
        AbstractC19407a abstractC19407a;
        if (this.f11332d != null) {
            return this.f11332d;
        }
        synchronized (this) {
            if (this.f11332d == null) {
                this.f11332d = new C19408b(this);
            }
            abstractC19407a = this.f11332d;
        }
        return abstractC19407a;
    }

    @Override // com.truecaller.contactfeedback.p157db.ContactFeedbackDatabase
    /* renamed from: b */
    public AbstractC19413c mo35613b() {
        AbstractC19413c abstractC19413c;
        if (this.f11330b != null) {
            return this.f11330b;
        }
        synchronized (this) {
            if (this.f11330b == null) {
                this.f11330b = new C19414d(this);
            }
            abstractC19413c = this.f11330b;
        }
        return abstractC19413c;
    }

    @Override // com.truecaller.contactfeedback.p157db.ContactFeedbackDatabase
    /* renamed from: c */
    public AbstractC19432g mo35612c() {
        AbstractC19432g abstractC19432g;
        if (this.f11331c != null) {
            return this.f11331c;
        }
        synchronized (this) {
            if (this.f11331c == null) {
                this.f11331c = new C19433h(this);
            }
            abstractC19432g = this.f11331c;
        }
        return abstractC19432g;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `contact_feedback`");
            writableDatabase.mo2668S0("DELETE FROM `contact_feedback_timestamp_table`");
            writableDatabase.mo2668S0("DELETE FROM `comment_feedback_table`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "contact_feedback", "contact_feedback_timestamp_table", "comment_feedback_table");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C3750a(7), "8c3c405d4100a99bcdadfba7d2f67683", "077e32983b264203ee888e43a96fb935");
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
        hashMap.put(AbstractC19413c.class, Collections.emptyList());
        hashMap.put(AbstractC19432g.class, Collections.emptyList());
        hashMap.put(AbstractC19407a.class, Collections.emptyList());
        return hashMap;
    }
}
