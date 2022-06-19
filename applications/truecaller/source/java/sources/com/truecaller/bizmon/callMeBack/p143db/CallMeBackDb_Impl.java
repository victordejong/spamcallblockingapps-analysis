package com.truecaller.bizmon.callMeBack.p143db;

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
import p193e.p194a.p294b.p336i.p340j.p341a.AbstractC7938a;
import p193e.p194a.p294b.p336i.p340j.p341a.C7939b;
/* renamed from: com.truecaller.bizmon.callMeBack.db.CallMeBackDb_Impl */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl.class */
public final class CallMeBackDb_Impl extends CallMeBackDb {

    /* renamed from: a */
    public volatile AbstractC7938a f10278a;

    /* renamed from: com.truecaller.bizmon.callMeBack.db.CallMeBackDb_Impl$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/callMeBack/db/CallMeBackDb_Impl$a.class */
    public class C3484a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3484a(int i) {
            super(i);
            CallMeBackDb_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `call_me_back` (`phone` TEXT NOT NULL, `enabled` INTEGER NOT NULL, `message` TEXT, `button_text` TEXT, PRIMARY KEY(`phone`))");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'a92b76d042a3cfd83d1fc093d78660c6')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `call_me_back`");
            List<AbstractC25677q.AbstractC25679b> list = CallMeBackDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    CallMeBackDb_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = CallMeBackDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    CallMeBackDb_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            CallMeBackDb_Impl.this.mDatabase = abstractC26147b;
            CallMeBackDb_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = CallMeBackDb_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    CallMeBackDb_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            hashMap.put(AnalyticsConstants.PHONE, new C25656e.C25657a(AnalyticsConstants.PHONE, "TEXT", true, 1, null, 1));
            hashMap.put("enabled", new C25656e.C25657a("enabled", "INTEGER", true, 0, null, 1));
            hashMap.put("message", new C25656e.C25657a("message", "TEXT", false, 0, null, 1));
            C25656e c25656e = new C25656e("call_me_back", hashMap, C22128a.m8658W(hashMap, "button_text", new C25656e.C25657a("button_text", "TEXT", false, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "call_me_back");
            return !c25656e.equals(m3085a) ? new C25683x.C25685b(false, C22128a.m8563u2("call_me_back(com.truecaller.bizmon.callMeBack.db.entity.CallMeBack).\n Expected:\n", c25656e, "\n Found:\n", m3085a)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.bizmon.callMeBack.p143db.CallMeBackDb
    /* renamed from: a */
    public AbstractC7938a mo35882a() {
        AbstractC7938a abstractC7938a;
        if (this.f10278a != null) {
            return this.f10278a;
        }
        synchronized (this) {
            if (this.f10278a == null) {
                this.f10278a = new C7939b(this);
            }
            abstractC7938a = this.f10278a;
        }
        return abstractC7938a;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `call_me_back`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "call_me_back");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C3484a(1), "a92b76d042a3cfd83d1fc093d78660c6", "1a9e7573b1224fd962f7d9a67063be96");
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
        hashMap.put(AbstractC7938a.class, Collections.emptyList());
        return hashMap;
    }
}
