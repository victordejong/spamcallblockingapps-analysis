package com.truecaller.surveys.data.local;

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
import p193e.p194a.p918j.p930c.p931d.AbstractC15453b;
import p193e.p194a.p918j.p930c.p931d.C15454c;
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/local/SurveysDatabase_Impl.class */
public final class SurveysDatabase_Impl extends SurveysDatabase {

    /* renamed from: b */
    public volatile AbstractC15453b f15096b;

    /* renamed from: com.truecaller.surveys.data.local.SurveysDatabase_Impl$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/data/local/SurveysDatabase_Impl$a.class */
    public class C4564a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4564a(int i) {
            super(i);
            SurveysDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `surveys` (`_id` TEXT NOT NULL, `flow` TEXT NOT NULL, `content` TEXT NOT NULL, `questionIds` TEXT NOT NULL, `lastTimeSeen` INTEGER NOT NULL, PRIMARY KEY(`_id`))");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            abstractC26147b.mo2668S0("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '33be6165ad539228ebcdc4b8cda93e08')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `surveys`");
            List<AbstractC25677q.AbstractC25679b> list = SurveysDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    SurveysDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = SurveysDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    SurveysDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            SurveysDatabase_Impl.this.mDatabase = abstractC26147b;
            SurveysDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = SurveysDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    SurveysDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            hashMap.put("_id", new C25656e.C25657a("_id", "TEXT", true, 1, null, 1));
            hashMap.put(AnalyticsConstants.FLOW, new C25656e.C25657a(AnalyticsConstants.FLOW, "TEXT", true, 0, null, 1));
            hashMap.put("content", new C25656e.C25657a("content", "TEXT", true, 0, null, 1));
            hashMap.put("questionIds", new C25656e.C25657a("questionIds", "TEXT", true, 0, null, 1));
            C25656e c25656e = new C25656e("surveys", hashMap, C22128a.m8658W(hashMap, "lastTimeSeen", new C25656e.C25657a("lastTimeSeen", "INTEGER", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "surveys");
            return !c25656e.equals(m3085a) ? new C25683x.C25685b(false, C22128a.m8563u2("surveys(com.truecaller.surveys.data.local.SurveyEntity).\n Expected:\n", c25656e, "\n Found:\n", m3085a)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.surveys.data.local.SurveysDatabase
    /* renamed from: a */
    public AbstractC15453b mo34645a() {
        AbstractC15453b abstractC15453b;
        if (this.f15096b != null) {
            return this.f15096b;
        }
        synchronized (this) {
            if (this.f15096b == null) {
                this.f15096b = new C15454c(this);
            }
            abstractC15453b = this.f15096b;
        }
        return abstractC15453b;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `surveys`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "surveys");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C4564a(4), "33be6165ad539228ebcdc4b8cda93e08", "f4738dd00681a41667cecebfd4ed8aac");
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
        hashMap.put(AbstractC15453b.class, Collections.emptyList());
        return hashMap;
    }
}
