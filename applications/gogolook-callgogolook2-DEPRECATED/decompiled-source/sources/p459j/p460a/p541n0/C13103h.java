package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.InAppLogRealmModule;
import gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject;
import gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.RealmQuery;
import java.io.File;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p582w0.C13973d4;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\b\u0010\u0016\u001a\u00020\u0017H\u0007J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001dH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n \b*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R#\u0010\t\u001a\n \b*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u001e"}, m815d2 = {"Lgogolook/callgogolook2/realm/InAppLogRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "compact", "", "deleteObsoleteReportLog", "", "deletePurchaseLogBeforeDate", "date", "", "getDbFile", "Ljava/io/File;", "insertOrUpdatePurchaseLogData", "purchaseLogRealmObject", "Lgogolook/callgogolook2/realm/obj/log/PurchaseLogRealmObject;", "insertOrUpdateReportLogData", "reportLogRealmObject", "Lgogolook/callgogolook2/realm/obj/log/ReportLogRealmObject;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.h */
/* loaded from: classes3-dex2jar.jar:j/a/n0/h.class */
public final class C13103h {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29583a;

    /* renamed from: c */
    public static final C13103h f29585c = new C13103h();

    /* renamed from: b */
    public static final AbstractC14974f f29584b = C14975g.m662a(C13104a.f29586a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.h$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/h$a.class */
    public static final class C13104a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13104a f29586a = new C13104a();

        /* renamed from: j.a.n0.h$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/h$a$a.class */
        public static final class C13105a implements RealmMigration {

            /* renamed from: a */
            public static final C13105a f29587a = new C13105a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13104a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("ReportLog").schemaVersion(1L).modules(new InAppLogRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13105a.f29587a).build();
        }
    }

    /* renamed from: j.a.n0.h$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/h$b.class */
    public static final class C13106b extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public static final C13106b f29588a = new C13106b();

        public C13106b() {
            super(1);
        }

        /* renamed from: a */
        public final boolean m4610a(Realm realm) {
            C15149k.m377b(realm, "it");
            Number max = realm.where(ReportLogRealmObject.class).max("id");
            boolean z = false;
            int intValue = max != null ? max.intValue() : 0;
            if (intValue > 700) {
                z = realm.where(ReportLogRealmObject.class).lessThan("id", intValue - 700).findAll().deleteAllFromRealm();
            }
            return z;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4610a(realm));
        }
    }

    /* renamed from: j.a.n0.h$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/h$c.class */
    public static final class C13107c extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ long f29589a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13107c(long j) {
            super(1);
            this.f29589a = j;
        }

        /* renamed from: a */
        public final boolean m4609a(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.where(PurchaseLogRealmObject.class).lessThan("createTime", this.f29589a).findAll().deleteAllFromRealm();
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4609a(realm));
        }
    }

    /* renamed from: j.a.n0.h$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/h$d.class */
    public static final class C13108d extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ PurchaseLogRealmObject f29590a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13108d(PurchaseLogRealmObject purchaseLogRealmObject) {
            super(1);
            this.f29590a = purchaseLogRealmObject;
        }

        /* renamed from: a */
        public final boolean m4608a(Realm realm) {
            boolean z;
            C15149k.m377b(realm, "it");
            try {
                long j = 0;
                if (this.f29590a.getId() < 0) {
                    RealmQuery where = realm.where(PurchaseLogRealmObject.class);
                    Number max = where != null ? where.max("id") : null;
                    if (max != null) {
                        j = max.longValue();
                    }
                    this.f29590a.setId(j + 1);
                }
                realm.insertOrUpdate(this.f29590a);
                z = true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                z = false;
            }
            return z;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4608a(realm));
        }
    }

    /* renamed from: j.a.n0.h$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/h$e.class */
    public static final class C13109e extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ ReportLogRealmObject f29591a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13109e(ReportLogRealmObject reportLogRealmObject) {
            super(1);
            this.f29591a = reportLogRealmObject;
        }

        /* renamed from: a */
        public final boolean m4607a(Realm realm) {
            boolean z;
            C15149k.m377b(realm, "it");
            try {
                long j = 0;
                if (this.f29591a.getId() < 0) {
                    RealmQuery where = realm.where(ReportLogRealmObject.class);
                    Number max = where != null ? where.max("id") : null;
                    if (max != null) {
                        j = max.longValue();
                    }
                    this.f29591a.setId(j + 1);
                }
                realm.insertOrUpdate(this.f29591a);
                z = true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                z = false;
            }
            return z;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4607a(realm));
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13103h.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29583a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final boolean m4616a(long j) {
        RealmConfiguration a = f29585c.m4617a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13107c(j));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public static final boolean m4615a(PurchaseLogRealmObject purchaseLogRealmObject) {
        C15149k.m377b(purchaseLogRealmObject, "purchaseLogRealmObject");
        RealmConfiguration a = f29585c.m4617a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13108d(purchaseLogRealmObject));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public static final boolean m4614a(ReportLogRealmObject reportLogRealmObject) {
        C15149k.m377b(reportLogRealmObject, "reportLogRealmObject");
        RealmConfiguration a = f29585c.m4617a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13109e(reportLogRealmObject));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: b */
    public static final void m4613b() {
        Realm.compactRealm(f29585c.m4617a());
    }

    /* renamed from: c */
    public static final boolean m4612c() {
        RealmConfiguration a = f29585c.m4617a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, C13106b.f29588a);
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: d */
    public static final File m4611d() {
        RealmConfiguration a = f29585c.m4617a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: a */
    public final RealmConfiguration m4617a() {
        AbstractC14974f fVar = f29584b;
        AbstractC14906i iVar = f29583a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
