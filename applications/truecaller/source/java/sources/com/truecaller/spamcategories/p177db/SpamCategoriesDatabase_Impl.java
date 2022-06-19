package com.truecaller.spamcategories.p177db;

import android.content.Context;
import com.huawei.hms.push.constant.RemoteMessageConst;
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
import p193e.p194a.p288a0.p290x.AbstractC7409a;
import p193e.p194a.p288a0.p290x.C7410b;
/* renamed from: com.truecaller.spamcategories.db.SpamCategoriesDatabase_Impl */
/* loaded from: classes12-dex2jar.jar:com/truecaller/spamcategories/db/SpamCategoriesDatabase_Impl.class */
public final class SpamCategoriesDatabase_Impl extends SpamCategoriesDatabase {

    /* renamed from: c */
    public volatile AbstractC7409a f14932c;

    /* renamed from: com.truecaller.spamcategories.db.SpamCategoriesDatabase_Impl$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/spamcategories/db/SpamCategoriesDatabase_Impl$a.class */
    public class C4510a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4510a(int i) {
            super(i);
            SpamCategoriesDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `spam_categories` (`id` INTEGER NOT NULL, `name` TEXT NOT NULL, `icon` TEXT, `row_id` INTEGER PRIMARY KEY AUTOINCREMENT)", "CREATE UNIQUE INDEX IF NOT EXISTS `index_spam_categories_id` ON `spam_categories` (`id`)", "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)", "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '397e84387c74e507df1604a195b5389b')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `spam_categories`");
            List<AbstractC25677q.AbstractC25679b> list = SpamCategoriesDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    SpamCategoriesDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = SpamCategoriesDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    SpamCategoriesDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            SpamCategoriesDatabase_Impl.this.mDatabase = abstractC26147b;
            SpamCategoriesDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = SpamCategoriesDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    SpamCategoriesDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            hashMap.put("id", new C25656e.C25657a("id", "INTEGER", true, 0, null, 1));
            hashMap.put(AnalyticsConstants.NAME, new C25656e.C25657a(AnalyticsConstants.NAME, "TEXT", true, 0, null, 1));
            hashMap.put(RemoteMessageConst.Notification.ICON, new C25656e.C25657a(RemoteMessageConst.Notification.ICON, "TEXT", false, 0, null, 1));
            HashSet m8658W = C22128a.m8658W(hashMap, "row_id", new C25656e.C25657a("row_id", "INTEGER", false, 1, null, 1), 0);
            HashSet hashSet = new HashSet(1);
            hashSet.add(new C25656e.C25660d("index_spam_categories_id", true, Arrays.asList("id")));
            C25656e c25656e = new C25656e("spam_categories", hashMap, m8658W, hashSet);
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "spam_categories");
            return !c25656e.equals(m3085a) ? new C25683x.C25685b(false, C22128a.m8563u2("spam_categories(com.truecaller.spamcategories.SpamCategory).\n Expected:\n", c25656e, "\n Found:\n", m3085a)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.spamcategories.p177db.SpamCategoriesDatabase
    /* renamed from: a */
    public AbstractC7409a mo34734a() {
        AbstractC7409a abstractC7409a;
        if (this.f14932c != null) {
            return this.f14932c;
        }
        synchronized (this) {
            if (this.f14932c == null) {
                this.f14932c = new C7410b(this);
            }
            abstractC7409a = this.f14932c;
        }
        return abstractC7409a;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `spam_categories`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "spam_categories");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C4510a(2), "397e84387c74e507df1604a195b5389b", "94aa83df13188263d549890518921a27");
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
        hashMap.put(AbstractC7409a.class, Collections.emptyList());
        return hashMap;
    }
}
