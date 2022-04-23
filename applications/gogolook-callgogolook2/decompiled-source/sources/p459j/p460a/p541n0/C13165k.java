package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.MessageUrlScanRealmModule;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.Sort;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p582w0.C13973d4;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0006H\u0007J\b\u0010\u0014\u001a\u00020\u0012H\u0007J\b\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u001e\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u001b2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R#\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u001e"}, m815d2 = {"Lgogolook/callgogolook2/realm/MessageUrlScanRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", CallAction.DONE_TAG, "configuration", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "compact", "", "deleteAllOutdatedSmsUrlScanResults", "", "timestamp", "dropTable", "getDbFile", "Ljava/io/File;", "insertOrUpdateSmsUrlScanResult", "newResult", "Lgogolook/callgogolook2/realm/obj/messaging/SmsUrlScanResultRealmObject;", "querySmsUrlScanResultByTimeRange", "", "startTimestamp", "endTimestamp", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.k */
/* loaded from: classes3-dex2jar.jar:j/a/n0/k.class */
public final class C13165k {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29684a;

    /* renamed from: c */
    public static final C13165k f29686c = new C13165k();

    /* renamed from: b */
    public static final AbstractC14974f f29685b = C14975g.m662a(C13166a.f29687a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.k$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/k$a.class */
    public static final class C13166a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13166a f29687a = new C13166a();

        /* renamed from: j.a.n0.k$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/k$a$a.class */
        public static final class C13167a implements RealmMigration {

            /* renamed from: a */
            public static final C13167a f29688a = new C13167a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13166a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("MessageUrlScan").schemaVersion(1L).modules(new MessageUrlScanRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13167a.f29688a).build();
        }
    }

    /* renamed from: j.a.n0.k$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/k$b.class */
    public static final class C13168b extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ long f29689a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13168b(long j) {
            super(1);
            this.f29689a = j;
        }

        /* renamed from: a */
        public final boolean m4483a(Realm realm) {
            C15149k.m377b(realm, "realm");
            try {
                return realm.where(SmsUrlScanResultRealmObject.class).lessThan(SmsUrlScanResultRealmObject.UPDATE_DATE, this.f29689a).findAll().deleteAllFromRealm();
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4483a(realm));
        }
    }

    /* renamed from: j.a.n0.k$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/k$c.class */
    public static final class C13169c extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ SmsUrlScanResultRealmObject f29690a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13169c(SmsUrlScanResultRealmObject smsUrlScanResultRealmObject) {
            super(1);
            this.f29690a = smsUrlScanResultRealmObject;
        }

        /* renamed from: a */
        public final boolean m4482a(Realm realm) {
            C15149k.m377b(realm, "realm");
            try {
                SmsUrlScanResultRealmObject smsUrlScanResultRealmObject = (SmsUrlScanResultRealmObject) realm.where(SmsUrlScanResultRealmObject.class).equalTo(SmsUrlScanResultRealmObject.REF_URI, this.f29690a.getRefUri()).equalTo("url", this.f29690a.getUrl()).equalTo(SmsUrlScanResultRealmObject.URL_INDEX, Integer.valueOf(this.f29690a.getUrlIndex())).sort(SmsUrlScanResultRealmObject.UPDATE_DATE, Sort.DESCENDING).findFirst();
                if (smsUrlScanResultRealmObject == null) {
                    Number max = realm.where(SmsUrlScanResultRealmObject.class).max("id");
                    this.f29690a.setId((max != null ? max.longValue() : 0L) + 1);
                    smsUrlScanResultRealmObject = this.f29690a;
                } else {
                    smsUrlScanResultRealmObject.setRating(this.f29690a.getRating());
                    smsUrlScanResultRealmObject.setSource(this.f29690a.getSource());
                    smsUrlScanResultRealmObject.setUpdateDate(this.f29690a.getUpdateDate());
                }
                realm.insertOrUpdate(smsUrlScanResultRealmObject);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4482a(realm));
        }
    }

    /* renamed from: j.a.n0.k$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/k$d.class */
    public static final class C13170d extends AbstractC15150l implements AbstractC15118l<Realm, List<SmsUrlScanResultRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ long f29691a;

        /* renamed from: b */
        public final /* synthetic */ long f29692b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13170d(long j, long j2) {
            super(1);
            this.f29691a = j;
            this.f29692b = j2;
        }

        /* renamed from: a */
        public final List<SmsUrlScanResultRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "realm");
            return realm.copyFromRealm(realm.where(SmsUrlScanResultRealmObject.class).isNotEmpty(SmsUrlScanResultRealmObject.REF_URI).isNotNull(SmsUrlScanResultRealmObject.REF_URI).greaterThanOrEqualTo(SmsUrlScanResultRealmObject.UPDATE_DATE, this.f29691a).lessThanOrEqualTo(SmsUrlScanResultRealmObject.UPDATE_DATE, this.f29692b).sort(SmsUrlScanResultRealmObject.UPDATE_DATE, Sort.DESCENDING).findAll());
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13165k.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29684a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final List<SmsUrlScanResultRealmObject> m4487a(long j, long j2) {
        RealmConfiguration a = f29686c.m4489a();
        C15149k.m383a((Object) a, "configuration");
        List<SmsUrlScanResultRealmObject> list = (List) C13193p.m4435b(a, new C13170d(j, j2));
        if (list == null) {
            list = C15021m.m565a();
        }
        return list;
    }

    /* renamed from: a */
    public static final boolean m4488a(long j) {
        RealmConfiguration a = f29686c.m4489a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13168b(j));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public static final boolean m4486a(SmsUrlScanResultRealmObject smsUrlScanResultRealmObject) {
        C15149k.m377b(smsUrlScanResultRealmObject, "newResult");
        String refUri = smsUrlScanResultRealmObject.getRefUri();
        boolean z = false;
        if (refUri == null || refUri.length() == 0) {
            return false;
        }
        RealmConfiguration a = f29686c.m4489a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13169c(smsUrlScanResultRealmObject));
        if (bool != null) {
            z = bool.booleanValue();
        }
        return z;
    }

    /* renamed from: b */
    public static final void m4485b() {
        Realm.compactRealm(f29686c.m4489a());
    }

    /* renamed from: c */
    public static final File m4484c() {
        RealmConfiguration a = f29686c.m4489a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: a */
    public final RealmConfiguration m4489a() {
        AbstractC14974f fVar = f29685b;
        AbstractC14906i iVar = f29684a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
