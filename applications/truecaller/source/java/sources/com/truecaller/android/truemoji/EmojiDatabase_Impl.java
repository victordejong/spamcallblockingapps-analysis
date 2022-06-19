package com.truecaller.android.truemoji;

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
import p193e.p194a.p1221t.p1222a.AbstractC20279e;
import p193e.p194a.p1221t.p1222a.C20280f;
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/truemoji/EmojiDatabase_Impl.class */
public final class EmojiDatabase_Impl extends EmojiDatabase {

    /* renamed from: a */
    public volatile AbstractC20279e f10029a;

    /* renamed from: com.truecaller.android.truemoji.EmojiDatabase_Impl$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/truemoji/EmojiDatabase_Impl$a.class */
    public class C2885a extends C25683x.AbstractC25684a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2885a(int i) {
            super(i);
            EmojiDatabase_Impl.this = r4;
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void createAllTables(AbstractC26147b abstractC26147b) {
            C22128a.m8561v0(abstractC26147b, "CREATE TABLE IF NOT EXISTS `keywords` (`id` INTEGER NOT NULL, `keyword` TEXT NOT NULL, `emoji` TEXT NOT NULL, PRIMARY KEY(`id`))", "CREATE TABLE IF NOT EXISTS `shortnames` (`id` INTEGER NOT NULL, `shortname` TEXT NOT NULL, `emoji` TEXT NOT NULL, PRIMARY KEY(`id`))", "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)", "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'be9c332b5198f03beb332d482a4b4bb1')");
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void dropAllTables(AbstractC26147b abstractC26147b) {
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `keywords`");
            abstractC26147b.mo2668S0("DROP TABLE IF EXISTS `shortnames`");
            List<AbstractC25677q.AbstractC25679b> list = EmojiDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    EmojiDatabase_Impl.this.mCallbacks.get(i).mo3061b(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onCreate(AbstractC26147b abstractC26147b) {
            List<AbstractC25677q.AbstractC25679b> list = EmojiDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    EmojiDatabase_Impl.this.mCallbacks.get(i).mo3062a(abstractC26147b);
                }
            }
        }

        @Override // p1727n3.p1751c0.C25683x.AbstractC25684a
        public void onOpen(AbstractC26147b abstractC26147b) {
            EmojiDatabase_Impl.this.mDatabase = abstractC26147b;
            EmojiDatabase_Impl.this.internalInitInvalidationTracker(abstractC26147b);
            List<AbstractC25677q.AbstractC25679b> list = EmojiDatabase_Impl.this.mCallbacks;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    EmojiDatabase_Impl.this.mCallbacks.get(i).mo1434c(abstractC26147b);
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
            hashMap.put("keyword", new C25656e.C25657a("keyword", "TEXT", true, 0, null, 1));
            C25656e c25656e = new C25656e("keywords", hashMap, C22128a.m8658W(hashMap, "emoji", new C25656e.C25657a("emoji", "TEXT", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a = C25656e.m3085a(abstractC26147b, "keywords");
            if (!c25656e.equals(m3085a)) {
                return new C25683x.C25685b(false, C22128a.m8563u2("keywords(com.truecaller.android.truemoji.Keyword).\n Expected:\n", c25656e, "\n Found:\n", m3085a));
            }
            HashMap hashMap2 = new HashMap(3);
            hashMap2.put("id", new C25656e.C25657a("id", "INTEGER", true, 1, null, 1));
            hashMap2.put("shortname", new C25656e.C25657a("shortname", "TEXT", true, 0, null, 1));
            C25656e c25656e2 = new C25656e("shortnames", hashMap2, C22128a.m8658W(hashMap2, "emoji", new C25656e.C25657a("emoji", "TEXT", true, 0, null, 1), 0), new HashSet(0));
            C25656e m3085a2 = C25656e.m3085a(abstractC26147b, "shortnames");
            return !c25656e2.equals(m3085a2) ? new C25683x.C25685b(false, C22128a.m8563u2("shortnames(com.truecaller.android.truemoji.Shortname).\n Expected:\n", c25656e2, "\n Found:\n", m3085a2)) : new C25683x.C25685b(true, null);
        }
    }

    @Override // com.truecaller.android.truemoji.EmojiDatabase
    /* renamed from: a */
    public AbstractC20279e mo35916a() {
        AbstractC20279e abstractC20279e;
        if (this.f10029a != null) {
            return this.f10029a;
        }
        synchronized (this) {
            if (this.f10029a == null) {
                this.f10029a = new C20280f(this);
            }
            abstractC20279e = this.f10029a;
        }
        return abstractC20279e;
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public void clearAllTables() {
        super.assertNotMainThread();
        AbstractC26147b writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.mo2668S0("DELETE FROM `keywords`");
            writableDatabase.mo2668S0("DELETE FROM `shortnames`");
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
        return new C25670o(this, new HashMap(0), new HashMap(0), "keywords", "shortnames");
    }

    @Override // p1727n3.p1751c0.AbstractC25677q
    public AbstractC26148c createOpenHelper(C25651h c25651h) {
        C25683x c25683x = new C25683x(c25651h, new C2885a(2), "be9c332b5198f03beb332d482a4b4bb1", "2bee3cd4609188e000acc4ce6949009c");
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
        hashMap.put(AbstractC20279e.class, Collections.emptyList());
        return hashMap;
    }
}
