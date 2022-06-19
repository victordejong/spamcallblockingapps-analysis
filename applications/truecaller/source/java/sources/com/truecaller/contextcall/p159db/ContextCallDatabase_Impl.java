package com.truecaller.contextcall.p159db;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
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
import p193e.p194a.p1080o.p1103p.p1104a.AbstractC18803a;
import p193e.p194a.p1080o.p1103p.p1104a.C18804b;
import p193e.p194a.p1080o.p1103p.p1105b.AbstractC18814b;
import p193e.p194a.p1080o.p1103p.p1105b.C18815c;
import p193e.p194a.p1080o.p1103p.p1106c.AbstractC18833a;
import p193e.p194a.p1080o.p1103p.p1106c.C18834b;
import p193e.p194a.p1080o.p1103p.p1108e.AbstractC18850a;
import p193e.p194a.p1080o.p1103p.p1108e.C18851b;
import p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18873a;
import p193e.p194a.p1080o.p1103p.p1108e.p1109g.C18875b;
/* renamed from: com.truecaller.contextcall.db.ContextCallDatabase_Impl */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/db/ContextCallDatabase_Impl.class */
public final class ContextCallDatabase_Impl extends ContextCallDatabase {

    /* renamed from: b */
    public volatile AbstractC18803a f11421b;

    /* renamed from: c */
    public volatile AbstractC18833a f11422c;

    /* renamed from: d */
    public volatile AbstractC18850a f11423d;

    /* renamed from: e */
    public volatile AbstractC18814b f11424e;

    /* renamed from: f */
    public volatile AbstractC18873a f11425f;

    /* renamed from: com.truecaller.contextcall.db.ContextCallDatabase_Impl$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/db/ContextCallDatabase_Impl$a.class */
    public class C3778a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3778a(int i) {
            super(i);
            ContextCallDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `context_call_availability` (`phone` TEXT NOT NULL, `enabled` INTEGER NOT NULL, `version` INTEGER NOT NULL, PRIMARY KEY(`phone`))", "CREATE TABLE IF NOT EXISTS `incoming_call_context` (`_id` TEXT NOT NULL, `phone_number` TEXT NOT NULL, `message` TEXT NOT NULL, `created_at` INTEGER NOT NULL, PRIMARY KEY(`_id`, `phone_number`))", "CREATE TABLE IF NOT EXISTS `call_reason` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `message` TEXT NOT NULL)", "CREATE TABLE IF NOT EXISTS `predefined_call_reason` (`_id` INTEGER NOT NULL, `index` INTEGER NOT NULL, `message` TEXT NOT NULL, `type` INTEGER NOT NULL, PRIMARY KEY(`_id`, `type`))");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `hidden_number` (`number` TEXT NOT NULL, PRIMARY KEY(`number`))");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '637bc9b78c45694fd61ec868ee73131c')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "DROP TABLE IF EXISTS `context_call_availability`", "DROP TABLE IF EXISTS `incoming_call_context`", "DROP TABLE IF EXISTS `call_reason`", "DROP TABLE IF EXISTS `predefined_call_reason`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `hidden_number`");
            List<AbstractC25677q.AbstractC25679b> list = ContextCallDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    ContextCallDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = ContextCallDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    ContextCallDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            ContextCallDatabase_Impl.this.mDatabase = abstractC26147b;
            ContextCallDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = ContextCallDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    ContextCallDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            hashMap.put(AnalyticsConstants.PHONE, new C25656e.C25657a(AnalyticsConstants.PHONE, "TEXT", true, 1, null, 1));
            hashMap.put("enabled", new C25656e.C25657a("enabled", "INTEGER", true, 0, null, 1));
            C25656e c25656e = new C25656e("context_call_availability", hashMap, C22128a.m8658W(hashMap, "version", new C25656e.C25657a("version", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "context_call_availability");
            if (!c25656e.equals(m3085a)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("context_call_availability(com.truecaller.contextcall.db.availability.ContextCallAvailability).\n Expected:\n", c25656e, "\n Found:\n", m3085a));
            }
            HashMap hashMap2 = new HashMap(4);
            hashMap2.put("_id", new C25656e.C25657a("_id", "TEXT", true, 1, null, 1));
            hashMap2.put("phone_number", new C25656e.C25657a("phone_number", "TEXT", true, 2, null, 1));
            hashMap2.put("message", new C25656e.C25657a("message", "TEXT", true, 0, null, 1));
            C25656e c25656e2 = new C25656e("incoming_call_context", hashMap2, C22128a.m8658W(hashMap2, "created_at", new C25656e.C25657a("created_at", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a2 = C25656e.m3085a(abstractC26147b, "incoming_call_context");
            if (!c25656e2.equals(m3085a2)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("incoming_call_context(com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContext).\n Expected:\n", c25656e2, "\n Found:\n", m3085a2));
            }
            HashMap hashMap3 = new HashMap(2);
            hashMap3.put("_id", new C25656e.C25657a("_id", "INTEGER", true, 1, null, 1));
            C25656e c25656e3 = new C25656e("call_reason", hashMap3, C22128a.m8658W(hashMap3, "message", new C25656e.C25657a("message", "TEXT", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a3 = C25656e.m3085a(abstractC26147b, "call_reason");
            if (!c25656e3.equals(m3085a3)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("call_reason(com.truecaller.contextcall.db.reason.CallReason).\n Expected:\n", c25656e3, "\n Found:\n", m3085a3));
            }
            HashMap hashMap4 = new HashMap(4);
            hashMap4.put("_id", new C25656e.C25657a("_id", "INTEGER", true, 1, null, 1));
            hashMap4.put("index", new C25656e.C25657a("index", "INTEGER", true, 0, null, 1));
            hashMap4.put("message", new C25656e.C25657a("message", "TEXT", true, 0, null, 1));
            C25656e c25656e4 = new C25656e("predefined_call_reason", hashMap4, C22128a.m8658W(hashMap4, "type", new C25656e.C25657a("type", "INTEGER", true, 2, null, 1), 0), new HashSet(0));
            C25656e m3085a4 = C25656e.m3085a(abstractC26147b, "predefined_call_reason");
            if (!c25656e4.equals(m3085a4)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("predefined_call_reason(com.truecaller.contextcall.db.reason.predefinedreasons.PredefinedCallReasonEntity).\n Expected:\n", c25656e4, "\n Found:\n", m3085a4));
            }
            HashMap hashMap5 = new HashMap(1);
            C25656e c25656e5 = new C25656e("hidden_number", hashMap5, C22128a.m8658W(hashMap5, "number", new C25656e.C25657a("number", "TEXT", true, 1, null, 1), 0), new HashSet(0));
            C25656e m3085a5 = C25656e.m3085a(abstractC26147b, "hidden_number");
            return !c25656e5.equals(m3085a5) ? new C25683x.C25685b(false, C22128a.m8563u2("hidden_number(com.truecaller.contextcall.db.hiddennumber.HiddenNumber).\n Expected:\n", c25656e5, "\n Found:\n", m3085a5)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.contextcall.p159db.ContextCallDatabase
    /* renamed from: a */
    public AbstractC18850a mo35592a() {
        AbstractC18850a abstractC18850a;
        if (this.f11423d != null) {
            return this.f11423d;
        }
        synchronized (this) {
            if (this.f11423d == null) {
                this.f11423d = new C18851b(this);
            }
            abstractC18850a = this.f11423d;
        }
        return abstractC18850a;
    }

    @Override // com.truecaller.contextcall.p159db.ContextCallDatabase
    /* renamed from: b */
    public AbstractC18803a mo35591b() {
        AbstractC18803a abstractC18803a;
        if (this.f11421b != null) {
            return this.f11421b;
        }
        synchronized (this) {
            if (this.f11421b == null) {
                this.f11421b = new C18804b(this);
            }
            abstractC18803a = this.f11421b;
        }
        return abstractC18803a;
    }

    @Override // com.truecaller.contextcall.p159db.ContextCallDatabase
    /* renamed from: c */
    public AbstractC18814b mo35590c() {
        AbstractC18814b abstractC18814b;
        if (this.f11424e != null) {
            return this.f11424e;
        }
        synchronized (this) {
            if (this.f11424e == null) {
                this.f11424e = new C18815c(this);
            }
            abstractC18814b = this.f11424e;
        }
        return abstractC18814b;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `context_call_availability`");
            writableDatabase.mo2668S0("DELETE FROM `incoming_call_context`");
            writableDatabase.mo2668S0("DELETE FROM `call_reason`");
            writableDatabase.mo2668S0("DELETE FROM `predefined_call_reason`");
            writableDatabase.mo2668S0("DELETE FROM `hidden_number`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "context_call_availability", "incoming_call_context", "call_reason", "predefined_call_reason", "hidden_number");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C3778a(6), "637bc9b78c45694fd61ec868ee73131c", "186a41922ab3dd32883abfc556621e8b");
        Context context = c25651h.f71846b;
        String str = c25651h.f71847c;
        if (context != null) {
            return c25651h.f71845a.mo1435a(new AbstractC26148c.C26150b(context, str, c25683x, false));
        }
        throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
    }

    @Override // com.truecaller.contextcall.p159db.ContextCallDatabase
    /* renamed from: d */
    public AbstractC18833a mo35589d() {
        AbstractC18833a abstractC18833a;
        if (this.f11422c != null) {
            return this.f11422c;
        }
        synchronized (this) {
            if (this.f11422c == null) {
                this.f11422c = new C18834b(this);
            }
            abstractC18833a = this.f11422c;
        }
        return abstractC18833a;
    }

    @Override // com.truecaller.contextcall.p159db.ContextCallDatabase
    /* renamed from: e */
    public AbstractC18873a mo35588e() {
        AbstractC18873a abstractC18873a;
        if (this.f11425f != null) {
            return this.f11425f;
        }
        synchronized (this) {
            if (this.f11425f == null) {
                this.f11425f = new C18875b(this);
            }
            abstractC18873a = this.f11425f;
        }
        return abstractC18873a;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(AbstractC18803a.class, Collections.emptyList());
        hashMap.put(AbstractC18833a.class, Collections.emptyList());
        hashMap.put(AbstractC18850a.class, Collections.emptyList());
        hashMap.put(AbstractC18814b.class, Collections.emptyList());
        hashMap.put(AbstractC18873a.class, Collections.emptyList());
        return hashMap;
    }
}
