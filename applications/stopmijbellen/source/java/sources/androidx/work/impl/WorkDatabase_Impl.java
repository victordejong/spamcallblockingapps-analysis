package androidx.work.impl;

import android.content.Context;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import p067d1.C2140a;
import p067d1.C2146e;
import p067d1.C2155g;
import p088f1.C2710c;
import p099g1.AbstractC2795a;
import p099g1.AbstractC2796b;
import p110h1.C2993a;
import p282x1.AbstractC4810b;
import p282x1.AbstractC4814e;
import p282x1.AbstractC4818h;
import p282x1.AbstractC4823k;
import p282x1.AbstractC4827n;
import p282x1.AbstractC4834q;
import p282x1.AbstractC4845t;
import p282x1.C4811c;
import p282x1.C4815f;
import p282x1.C4819i;
import p282x1.C4824l;
import p282x1.C4828o;
import p282x1.C4835r;
import p282x1.C4846u;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase_Impl.class */
public final class WorkDatabase_Impl extends WorkDatabase {

    /* renamed from: s */
    public static final /* synthetic */ int f2644s = 0;

    /* renamed from: l */
    public volatile AbstractC4834q f2645l;

    /* renamed from: m */
    public volatile AbstractC4810b f2646m;

    /* renamed from: n */
    public volatile AbstractC4845t f2647n;

    /* renamed from: o */
    public volatile AbstractC4818h f2648o;

    /* renamed from: p */
    public volatile AbstractC4823k f2649p;

    /* renamed from: q */
    public volatile AbstractC4827n f2650q;

    /* renamed from: r */
    public volatile AbstractC4814e f2651r;

    /* renamed from: androidx.work.impl.WorkDatabase_Impl$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/WorkDatabase_Impl$a.class */
    public class C0682a extends C2155g.AbstractC2156a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0682a(int i) {
            super(i);
            WorkDatabase_Impl.this = r4;
        }

        @Override // p067d1.C2155g.AbstractC2156a
        /* renamed from: a */
        public void mo3808a(AbstractC2795a abstractC2795a) {
            ((C2993a) abstractC2795a).f10085a.execSQL("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            C2993a c2993a = (C2993a) abstractC2795a;
            c2993a.f10085a.execSQL("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            c2993a.f10085a.execSQL("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            c2993a.f10085a.execSQL("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
            c2993a.f10085a.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            c2993a.f10085a.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
            c2993a.f10085a.execSQL("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            c2993a.f10085a.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            c2993a.f10085a.execSQL("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            c2993a.f10085a.execSQL("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            c2993a.f10085a.execSQL("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            c2993a.f10085a.execSQL("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            c2993a.f10085a.execSQL("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            c2993a.f10085a.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            c2993a.f10085a.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
        }

        @Override // p067d1.C2155g.AbstractC2156a
        /* renamed from: b */
        public C2155g.C2157b mo3807b(AbstractC2795a abstractC2795a) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("work_spec_id", new C2710c.C2711a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap.put("prerequisite_id", new C2710c.C2711a("prerequisite_id", "TEXT", true, 2, null, 1));
            HashSet hashSet = new HashSet(2);
            hashSet.add(new C2710c.C2712b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
            hashSet.add(new C2710c.C2712b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new C2710c.C2714d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id")));
            hashSet2.add(new C2710c.C2714d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id")));
            C2710c c2710c = new C2710c("Dependency", hashMap, hashSet, hashSet2);
            C2710c m3215a = C2710c.m3215a(abstractC2795a, "Dependency");
            if (!c2710c.equals(m3215a)) {
                return new C2155g.C2157b(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + c2710c + "\n Found:\n" + m3215a);
            }
            HashMap hashMap2 = new HashMap(25);
            hashMap2.put(FacebookAdapter.KEY_ID, new C2710c.C2711a(FacebookAdapter.KEY_ID, "TEXT", true, 1, null, 1));
            hashMap2.put("state", new C2710c.C2711a("state", "INTEGER", true, 0, null, 1));
            hashMap2.put("worker_class_name", new C2710c.C2711a("worker_class_name", "TEXT", true, 0, null, 1));
            hashMap2.put("input_merger_class_name", new C2710c.C2711a("input_merger_class_name", "TEXT", false, 0, null, 1));
            hashMap2.put("input", new C2710c.C2711a("input", "BLOB", true, 0, null, 1));
            hashMap2.put("output", new C2710c.C2711a("output", "BLOB", true, 0, null, 1));
            hashMap2.put("initial_delay", new C2710c.C2711a("initial_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("interval_duration", new C2710c.C2711a("interval_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("flex_duration", new C2710c.C2711a("flex_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("run_attempt_count", new C2710c.C2711a("run_attempt_count", "INTEGER", true, 0, null, 1));
            hashMap2.put("backoff_policy", new C2710c.C2711a("backoff_policy", "INTEGER", true, 0, null, 1));
            hashMap2.put("backoff_delay_duration", new C2710c.C2711a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("period_start_time", new C2710c.C2711a("period_start_time", "INTEGER", true, 0, null, 1));
            hashMap2.put("minimum_retention_duration", new C2710c.C2711a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
            hashMap2.put("schedule_requested_at", new C2710c.C2711a("schedule_requested_at", "INTEGER", true, 0, null, 1));
            hashMap2.put("run_in_foreground", new C2710c.C2711a("run_in_foreground", "INTEGER", true, 0, null, 1));
            hashMap2.put("out_of_quota_policy", new C2710c.C2711a("out_of_quota_policy", "INTEGER", true, 0, null, 1));
            hashMap2.put("required_network_type", new C2710c.C2711a("required_network_type", "INTEGER", false, 0, null, 1));
            hashMap2.put("requires_charging", new C2710c.C2711a("requires_charging", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_device_idle", new C2710c.C2711a("requires_device_idle", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_battery_not_low", new C2710c.C2711a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
            hashMap2.put("requires_storage_not_low", new C2710c.C2711a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
            hashMap2.put("trigger_content_update_delay", new C2710c.C2711a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("trigger_max_content_delay", new C2710c.C2711a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
            hashMap2.put("content_uri_triggers", new C2710c.C2711a("content_uri_triggers", "BLOB", false, 0, null, 1));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(2);
            hashSet4.add(new C2710c.C2714d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at")));
            hashSet4.add(new C2710c.C2714d("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time")));
            C2710c c2710c2 = new C2710c("WorkSpec", hashMap2, hashSet3, hashSet4);
            C2710c m3215a2 = C2710c.m3215a(abstractC2795a, "WorkSpec");
            if (!c2710c2.equals(m3215a2)) {
                return new C2155g.C2157b(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + c2710c2 + "\n Found:\n" + m3215a2);
            }
            HashMap hashMap3 = new HashMap(2);
            hashMap3.put("tag", new C2710c.C2711a("tag", "TEXT", true, 1, null, 1));
            hashMap3.put("work_spec_id", new C2710c.C2711a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet5 = new HashSet(1);
            hashSet5.add(new C2710c.C2712b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
            HashSet hashSet6 = new HashSet(1);
            hashSet6.add(new C2710c.C2714d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id")));
            C2710c c2710c3 = new C2710c("WorkTag", hashMap3, hashSet5, hashSet6);
            C2710c m3215a3 = C2710c.m3215a(abstractC2795a, "WorkTag");
            if (!c2710c3.equals(m3215a3)) {
                return new C2155g.C2157b(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + c2710c3 + "\n Found:\n" + m3215a3);
            }
            HashMap hashMap4 = new HashMap(2);
            hashMap4.put("work_spec_id", new C2710c.C2711a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap4.put("system_id", new C2710c.C2711a("system_id", "INTEGER", true, 0, null, 1));
            HashSet hashSet7 = new HashSet(1);
            hashSet7.add(new C2710c.C2712b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
            C2710c c2710c4 = new C2710c("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
            C2710c m3215a4 = C2710c.m3215a(abstractC2795a, "SystemIdInfo");
            if (!c2710c4.equals(m3215a4)) {
                return new C2155g.C2157b(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + c2710c4 + "\n Found:\n" + m3215a4);
            }
            HashMap hashMap5 = new HashMap(2);
            hashMap5.put(AppMeasurementSdk.ConditionalUserProperty.NAME, new C2710c.C2711a(AppMeasurementSdk.ConditionalUserProperty.NAME, "TEXT", true, 1, null, 1));
            hashMap5.put("work_spec_id", new C2710c.C2711a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet8 = new HashSet(1);
            hashSet8.add(new C2710c.C2712b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
            HashSet hashSet9 = new HashSet(1);
            hashSet9.add(new C2710c.C2714d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id")));
            C2710c c2710c5 = new C2710c("WorkName", hashMap5, hashSet8, hashSet9);
            C2710c m3215a5 = C2710c.m3215a(abstractC2795a, "WorkName");
            if (!c2710c5.equals(m3215a5)) {
                return new C2155g.C2157b(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + c2710c5 + "\n Found:\n" + m3215a5);
            }
            HashMap hashMap6 = new HashMap(2);
            hashMap6.put("work_spec_id", new C2710c.C2711a("work_spec_id", "TEXT", true, 1, null, 1));
            hashMap6.put("progress", new C2710c.C2711a("progress", "BLOB", true, 0, null, 1));
            HashSet hashSet10 = new HashSet(1);
            hashSet10.add(new C2710c.C2712b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList(FacebookAdapter.KEY_ID)));
            C2710c c2710c6 = new C2710c("WorkProgress", hashMap6, hashSet10, new HashSet(0));
            C2710c m3215a6 = C2710c.m3215a(abstractC2795a, "WorkProgress");
            if (!c2710c6.equals(m3215a6)) {
                return new C2155g.C2157b(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + c2710c6 + "\n Found:\n" + m3215a6);
            }
            HashMap hashMap7 = new HashMap(2);
            hashMap7.put("key", new C2710c.C2711a("key", "TEXT", true, 1, null, 1));
            hashMap7.put("long_value", new C2710c.C2711a("long_value", "INTEGER", false, 0, null, 1));
            C2710c c2710c7 = new C2710c("Preference", hashMap7, new HashSet(0), new HashSet(0));
            C2710c m3215a7 = C2710c.m3215a(abstractC2795a, "Preference");
            if (c2710c7.equals(m3215a7)) {
                return new C2155g.C2157b(true, null);
            }
            return new C2155g.C2157b(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + c2710c7 + "\n Found:\n" + m3215a7);
        }
    }

    @Override // p067d1.AbstractC2151f
    /* renamed from: e */
    public C2146e mo3817e() {
        return new C2146e(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // p067d1.AbstractC2151f
    /* renamed from: f */
    public AbstractC2796b mo3816f(C2140a c2140a) {
        C2155g c2155g = new C2155g(c2140a, new C0682a(12), "c103703e120ae8cc73c9248622f3cd1e", "49f946663a8deb7054212b8adda248c6");
        Context context = c2140a.f7834b;
        String str = c2140a.f7835c;
        if (context != null) {
            return c2140a.f7833a.mo1539a(new AbstractC2796b.C2798b(context, str, c2155g, false));
        }
        throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: l */
    public AbstractC4810b mo7480l() {
        AbstractC4810b abstractC4810b;
        if (this.f2646m != null) {
            return this.f2646m;
        }
        synchronized (this) {
            if (this.f2646m == null) {
                this.f2646m = new C4811c(this);
            }
            abstractC4810b = this.f2646m;
        }
        return abstractC4810b;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: m */
    public AbstractC4814e mo7479m() {
        AbstractC4814e abstractC4814e;
        if (this.f2651r != null) {
            return this.f2651r;
        }
        synchronized (this) {
            if (this.f2651r == null) {
                this.f2651r = new C4815f(this);
            }
            abstractC4814e = this.f2651r;
        }
        return abstractC4814e;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: n */
    public AbstractC4818h mo7478n() {
        AbstractC4818h abstractC4818h;
        if (this.f2648o != null) {
            return this.f2648o;
        }
        synchronized (this) {
            if (this.f2648o == null) {
                this.f2648o = new C4819i(this);
            }
            abstractC4818h = this.f2648o;
        }
        return abstractC4818h;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: o */
    public AbstractC4823k mo7477o() {
        AbstractC4823k abstractC4823k;
        if (this.f2649p != null) {
            return this.f2649p;
        }
        synchronized (this) {
            if (this.f2649p == null) {
                this.f2649p = new C4824l(this);
            }
            abstractC4823k = this.f2649p;
        }
        return abstractC4823k;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: p */
    public AbstractC4827n mo7476p() {
        AbstractC4827n abstractC4827n;
        if (this.f2650q != null) {
            return this.f2650q;
        }
        synchronized (this) {
            if (this.f2650q == null) {
                this.f2650q = new C4828o(this);
            }
            abstractC4827n = this.f2650q;
        }
        return abstractC4827n;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: q */
    public AbstractC4834q mo7475q() {
        AbstractC4834q abstractC4834q;
        if (this.f2645l != null) {
            return this.f2645l;
        }
        synchronized (this) {
            if (this.f2645l == null) {
                this.f2645l = new C4835r(this);
            }
            abstractC4834q = this.f2645l;
        }
        return abstractC4834q;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: r */
    public AbstractC4845t mo7474r() {
        AbstractC4845t abstractC4845t;
        if (this.f2647n != null) {
            return this.f2647n;
        }
        synchronized (this) {
            if (this.f2647n == null) {
                this.f2647n = new C4846u(this);
            }
            abstractC4845t = this.f2647n;
        }
        return abstractC4845t;
    }
}
