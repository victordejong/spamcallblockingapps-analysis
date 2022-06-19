package org.mistergroup.shouldianswer.model;

import androidx.p042i.p043a.AbstractC0778b;
import androidx.p042i.p043a.AbstractC0779c;
import androidx.room.AbstractC1063j;
import androidx.room.C1029a;
import androidx.room.C1049g;
import androidx.room.C1069l;
import androidx.room.p050b.C1034c;
import androidx.room.p050b.C1036e;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/AppDatabase_Impl.class */
public final class AppDatabase_Impl extends AppDatabase {

    /* renamed from: e */
    private volatile AbstractC2465y f6635e;

    /* renamed from: f */
    private volatile AbstractC2445p f6636f;

    /* renamed from: g */
    private volatile AbstractC2419e f6637g;

    /* renamed from: h */
    private volatile AbstractC2456u f6638h;

    @Override // androidx.room.AbstractC1063j
    /* renamed from: b */
    protected AbstractC0779c mo1521b(C1029a c1029a) {
        return c1029a.f3229a.mo4397a(AbstractC0779c.C0781b.m5358a(c1029a.f3230b).m5355a(c1029a.f3231c).m5356a(new C1069l(c1029a, new C1069l.AbstractC1070a(1) { // from class: org.mistergroup.shouldianswer.model.AppDatabase_Impl.1
            @Override // androidx.room.C1069l.AbstractC1070a
            /* renamed from: a */
            public void mo1506a(AbstractC0778b abstractC0778b) {
                abstractC0778b.mo5365c("DROP TABLE IF EXISTS `NumberReport`");
                abstractC0778b.mo5365c("DROP TABLE IF EXISTS `CheckedCall`");
                abstractC0778b.mo5365c("DROP TABLE IF EXISTS `BlockException`");
                abstractC0778b.mo5365c("DROP TABLE IF EXISTS `NumberCaption`");
                if (AppDatabase_Impl.this.f3323c != null) {
                    int size = AppDatabase_Impl.this.f3323c.size();
                    for (int i = 0; i < size; i++) {
                        ((AbstractC1063j.AbstractC1065b) AppDatabase_Impl.this.f3323c.get(i)).m4431c(abstractC0778b);
                    }
                }
            }

            @Override // androidx.room.C1069l.AbstractC1070a
            /* renamed from: b */
            public void mo1505b(AbstractC0778b abstractC0778b) {
                abstractC0778b.mo5365c("CREATE TABLE IF NOT EXISTS `NumberReport` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `uuid` TEXT NOT NULL, `number` TEXT, `numberNormalized` TEXT, `rating` INTEGER NOT NULL, `category` INTEGER NOT NULL, `title` TEXT, `comment` TEXT, `country` TEXT, `time` INTEGER NOT NULL, `uploaded` INTEGER NOT NULL, `unconfirmed` INTEGER NOT NULL, `deleted` INTEGER NOT NULL)");
                abstractC0778b.mo5365c("CREATE UNIQUE INDEX IF NOT EXISTS `index_NumberReport_uuid` ON `NumberReport` (`uuid`)");
                abstractC0778b.mo5365c("CREATE UNIQUE INDEX IF NOT EXISTS `index_NumberReport_number_country` ON `NumberReport` (`number`, `country`)");
                abstractC0778b.mo5365c("CREATE UNIQUE INDEX IF NOT EXISTS `index_NumberReport_numberNormalized` ON `NumberReport` (`numberNormalized`)");
                abstractC0778b.mo5365c("CREATE TABLE IF NOT EXISTS `CheckedCall` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `number` TEXT, `numberNormalized` TEXT, `country` TEXT, `rating` INTEGER NOT NULL, `callDuration` INTEGER NOT NULL, `callType` INTEGER NOT NULL, `blockReason` INTEGER NOT NULL, `time` INTEGER)");
                abstractC0778b.mo5365c("CREATE INDEX IF NOT EXISTS `index_CheckedCall_number` ON `CheckedCall` (`number`)");
                abstractC0778b.mo5365c("CREATE INDEX IF NOT EXISTS `index_CheckedCall_numberNormalized` ON `CheckedCall` (`numberNormalized`)");
                abstractC0778b.mo5365c("CREATE INDEX IF NOT EXISTS `index_CheckedCall_time` ON `CheckedCall` (`time`)");
                abstractC0778b.mo5365c("CREATE TABLE IF NOT EXISTS `BlockException` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `number` TEXT, `numberNormalized` TEXT, `country` TEXT, `block` INTEGER NOT NULL, `masked` INTEGER NOT NULL)");
                abstractC0778b.mo5365c("CREATE INDEX IF NOT EXISTS `index_BlockException_number` ON `BlockException` (`number`)");
                abstractC0778b.mo5365c("CREATE INDEX IF NOT EXISTS `index_BlockException_numberNormalized` ON `BlockException` (`numberNormalized`)");
                abstractC0778b.mo5365c("CREATE INDEX IF NOT EXISTS `index_BlockException_masked` ON `BlockException` (`masked`)");
                abstractC0778b.mo5365c("CREATE INDEX IF NOT EXISTS `index_BlockException_block` ON `BlockException` (`block`)");
                abstractC0778b.mo5365c("CREATE TABLE IF NOT EXISTS `NumberCaption` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `number` TEXT NOT NULL, `numberNormalized` TEXT NOT NULL, `caption` TEXT NOT NULL, `country` TEXT NOT NULL, `uploaded` INTEGER NOT NULL)");
                abstractC0778b.mo5365c("CREATE UNIQUE INDEX IF NOT EXISTS `index_NumberCaption_number_country` ON `NumberCaption` (`number`, `country`)");
                abstractC0778b.mo5365c("CREATE UNIQUE INDEX IF NOT EXISTS `index_NumberCaption_numberNormalized` ON `NumberCaption` (`numberNormalized`)");
                abstractC0778b.mo5365c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                abstractC0778b.mo5365c("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '6bade78ef8f8a6e000f22374dd6afb53')");
            }

            @Override // androidx.room.C1069l.AbstractC1070a
            /* renamed from: c */
            public void mo1504c(AbstractC0778b abstractC0778b) {
                AppDatabase_Impl.this.f3321a = abstractC0778b;
                AppDatabase_Impl.this.m4449a(abstractC0778b);
                if (AppDatabase_Impl.this.f3323c != null) {
                    int size = AppDatabase_Impl.this.f3323c.size();
                    for (int i = 0; i < size; i++) {
                        ((AbstractC1063j.AbstractC1065b) AppDatabase_Impl.this.f3323c.get(i)).m4432b(abstractC0778b);
                    }
                }
            }

            @Override // androidx.room.C1069l.AbstractC1070a
            /* renamed from: d */
            protected void mo1503d(AbstractC0778b abstractC0778b) {
                if (AppDatabase_Impl.this.f3323c != null) {
                    int size = AppDatabase_Impl.this.f3323c.size();
                    for (int i = 0; i < size; i++) {
                        ((AbstractC1063j.AbstractC1065b) AppDatabase_Impl.this.f3323c.get(i)).m4433a(abstractC0778b);
                    }
                }
            }

            @Override // androidx.room.C1069l.AbstractC1070a
            /* renamed from: f */
            protected C1069l.C1071b mo1502f(AbstractC0778b abstractC0778b) {
                HashMap hashMap = new HashMap(13);
                hashMap.put("id", new C1036e.C1037a("id", "INTEGER", true, 1, null, 1));
                hashMap.put("uuid", new C1036e.C1037a("uuid", "TEXT", true, 0, null, 1));
                hashMap.put("number", new C1036e.C1037a("number", "TEXT", false, 0, null, 1));
                hashMap.put("numberNormalized", new C1036e.C1037a("numberNormalized", "TEXT", false, 0, null, 1));
                hashMap.put("rating", new C1036e.C1037a("rating", "INTEGER", true, 0, null, 1));
                hashMap.put("category", new C1036e.C1037a("category", "INTEGER", true, 0, null, 1));
                hashMap.put("title", new C1036e.C1037a("title", "TEXT", false, 0, null, 1));
                hashMap.put("comment", new C1036e.C1037a("comment", "TEXT", false, 0, null, 1));
                hashMap.put("country", new C1036e.C1037a("country", "TEXT", false, 0, null, 1));
                hashMap.put("time", new C1036e.C1037a("time", "INTEGER", true, 0, null, 1));
                hashMap.put("uploaded", new C1036e.C1037a("uploaded", "INTEGER", true, 0, null, 1));
                hashMap.put("unconfirmed", new C1036e.C1037a("unconfirmed", "INTEGER", true, 0, null, 1));
                hashMap.put("deleted", new C1036e.C1037a("deleted", "INTEGER", true, 0, null, 1));
                HashSet hashSet = new HashSet(0);
                HashSet hashSet2 = new HashSet(3);
                hashSet2.add(new C1036e.C1040d("index_NumberReport_uuid", true, Arrays.asList("uuid")));
                hashSet2.add(new C1036e.C1040d("index_NumberReport_number_country", true, Arrays.asList("number", "country")));
                hashSet2.add(new C1036e.C1040d("index_NumberReport_numberNormalized", true, Arrays.asList("numberNormalized")));
                C1036e c1036e = new C1036e("NumberReport", hashMap, hashSet, hashSet2);
                C1036e m4490a = C1036e.m4490a(abstractC0778b, "NumberReport");
                if (!c1036e.equals(m4490a)) {
                    return new C1069l.C1071b(false, "NumberReport(org.mistergroup.shouldianswer.model.NumberReport).\n Expected:\n" + c1036e + "\n Found:\n" + m4490a);
                }
                HashMap hashMap2 = new HashMap(9);
                hashMap2.put("id", new C1036e.C1037a("id", "INTEGER", true, 1, null, 1));
                hashMap2.put("number", new C1036e.C1037a("number", "TEXT", false, 0, null, 1));
                hashMap2.put("numberNormalized", new C1036e.C1037a("numberNormalized", "TEXT", false, 0, null, 1));
                hashMap2.put("country", new C1036e.C1037a("country", "TEXT", false, 0, null, 1));
                hashMap2.put("rating", new C1036e.C1037a("rating", "INTEGER", true, 0, null, 1));
                hashMap2.put("callDuration", new C1036e.C1037a("callDuration", "INTEGER", true, 0, null, 1));
                hashMap2.put("callType", new C1036e.C1037a("callType", "INTEGER", true, 0, null, 1));
                hashMap2.put("blockReason", new C1036e.C1037a("blockReason", "INTEGER", true, 0, null, 1));
                hashMap2.put("time", new C1036e.C1037a("time", "INTEGER", false, 0, null, 1));
                HashSet hashSet3 = new HashSet(0);
                HashSet hashSet4 = new HashSet(3);
                hashSet4.add(new C1036e.C1040d("index_CheckedCall_number", false, Arrays.asList("number")));
                hashSet4.add(new C1036e.C1040d("index_CheckedCall_numberNormalized", false, Arrays.asList("numberNormalized")));
                hashSet4.add(new C1036e.C1040d("index_CheckedCall_time", false, Arrays.asList("time")));
                C1036e c1036e2 = new C1036e("CheckedCall", hashMap2, hashSet3, hashSet4);
                C1036e m4490a2 = C1036e.m4490a(abstractC0778b, "CheckedCall");
                if (!c1036e2.equals(m4490a2)) {
                    return new C1069l.C1071b(false, "CheckedCall(org.mistergroup.shouldianswer.model.CheckedCall).\n Expected:\n" + c1036e2 + "\n Found:\n" + m4490a2);
                }
                HashMap hashMap3 = new HashMap(6);
                hashMap3.put("id", new C1036e.C1037a("id", "INTEGER", true, 1, null, 1));
                hashMap3.put("number", new C1036e.C1037a("number", "TEXT", false, 0, null, 1));
                hashMap3.put("numberNormalized", new C1036e.C1037a("numberNormalized", "TEXT", false, 0, null, 1));
                hashMap3.put("country", new C1036e.C1037a("country", "TEXT", false, 0, null, 1));
                hashMap3.put("block", new C1036e.C1037a("block", "INTEGER", true, 0, null, 1));
                hashMap3.put("masked", new C1036e.C1037a("masked", "INTEGER", true, 0, null, 1));
                HashSet hashSet5 = new HashSet(0);
                HashSet hashSet6 = new HashSet(4);
                hashSet6.add(new C1036e.C1040d("index_BlockException_number", false, Arrays.asList("number")));
                hashSet6.add(new C1036e.C1040d("index_BlockException_numberNormalized", false, Arrays.asList("numberNormalized")));
                hashSet6.add(new C1036e.C1040d("index_BlockException_masked", false, Arrays.asList("masked")));
                hashSet6.add(new C1036e.C1040d("index_BlockException_block", false, Arrays.asList("block")));
                C1036e c1036e3 = new C1036e("BlockException", hashMap3, hashSet5, hashSet6);
                C1036e m4490a3 = C1036e.m4490a(abstractC0778b, "BlockException");
                if (!c1036e3.equals(m4490a3)) {
                    return new C1069l.C1071b(false, "BlockException(org.mistergroup.shouldianswer.model.BlockException).\n Expected:\n" + c1036e3 + "\n Found:\n" + m4490a3);
                }
                HashMap hashMap4 = new HashMap(6);
                hashMap4.put("id", new C1036e.C1037a("id", "INTEGER", true, 1, null, 1));
                hashMap4.put("number", new C1036e.C1037a("number", "TEXT", true, 0, null, 1));
                hashMap4.put("numberNormalized", new C1036e.C1037a("numberNormalized", "TEXT", true, 0, null, 1));
                hashMap4.put("caption", new C1036e.C1037a("caption", "TEXT", true, 0, null, 1));
                hashMap4.put("country", new C1036e.C1037a("country", "TEXT", true, 0, null, 1));
                hashMap4.put("uploaded", new C1036e.C1037a("uploaded", "INTEGER", true, 0, null, 1));
                HashSet hashSet7 = new HashSet(0);
                HashSet hashSet8 = new HashSet(2);
                hashSet8.add(new C1036e.C1040d("index_NumberCaption_number_country", true, Arrays.asList("number", "country")));
                hashSet8.add(new C1036e.C1040d("index_NumberCaption_numberNormalized", true, Arrays.asList("numberNormalized")));
                C1036e c1036e4 = new C1036e("NumberCaption", hashMap4, hashSet7, hashSet8);
                C1036e m4490a4 = C1036e.m4490a(abstractC0778b, "NumberCaption");
                if (c1036e4.equals(m4490a4)) {
                    return new C1069l.C1071b(true, null);
                }
                return new C1069l.C1071b(false, "NumberCaption(org.mistergroup.shouldianswer.model.NumberCaption).\n Expected:\n" + c1036e4 + "\n Found:\n" + m4490a4);
            }

            @Override // androidx.room.C1069l.AbstractC1070a
            /* renamed from: g */
            public void mo1501g(AbstractC0778b abstractC0778b) {
                C1034c.m4495a(abstractC0778b);
            }

            @Override // androidx.room.C1069l.AbstractC1070a
            /* renamed from: h */
            public void mo1500h(AbstractC0778b abstractC0778b) {
            }
        }, "6bade78ef8f8a6e000f22374dd6afb53", "901c62d37498f3656a2f7a4adb1ffa90")).m5357a());
    }

    @Override // androidx.room.AbstractC1063j
    /* renamed from: c */
    protected C1049g mo1518c() {
        return new C1049g(this, new HashMap(0), new HashMap(0), "NumberReport", "CheckedCall", "BlockException", "NumberCaption");
    }

    @Override // org.mistergroup.shouldianswer.model.AppDatabase
    /* renamed from: l */
    public AbstractC2465y mo1510l() {
        AbstractC2465y abstractC2465y;
        if (this.f6635e != null) {
            return this.f6635e;
        }
        synchronized (this) {
            if (this.f6635e == null) {
                this.f6635e = new C2466z(this);
            }
            abstractC2465y = this.f6635e;
        }
        return abstractC2465y;
    }

    @Override // org.mistergroup.shouldianswer.model.AppDatabase
    /* renamed from: m */
    public AbstractC2445p mo1509m() {
        AbstractC2445p abstractC2445p;
        if (this.f6636f != null) {
            return this.f6636f;
        }
        synchronized (this) {
            if (this.f6636f == null) {
                this.f6636f = new C2446q(this);
            }
            abstractC2445p = this.f6636f;
        }
        return abstractC2445p;
    }

    @Override // org.mistergroup.shouldianswer.model.AppDatabase
    /* renamed from: n */
    public AbstractC2419e mo1508n() {
        AbstractC2419e abstractC2419e;
        if (this.f6637g != null) {
            return this.f6637g;
        }
        synchronized (this) {
            if (this.f6637g == null) {
                this.f6637g = new C2420f(this);
            }
            abstractC2419e = this.f6637g;
        }
        return abstractC2419e;
    }

    @Override // org.mistergroup.shouldianswer.model.AppDatabase
    /* renamed from: o */
    public AbstractC2456u mo1507o() {
        AbstractC2456u abstractC2456u;
        if (this.f6638h != null) {
            return this.f6638h;
        }
        synchronized (this) {
            if (this.f6638h == null) {
                this.f6638h = new C2457v(this);
            }
            abstractC2456u = this.f6638h;
        }
        return abstractC2456u;
    }
}
