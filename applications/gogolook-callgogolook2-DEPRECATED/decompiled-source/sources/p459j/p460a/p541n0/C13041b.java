package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.BlockLogRealmModule;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.C13875a0;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14037j3;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p626l.p641z.p643d.C15162x;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0007J7\u0010\u0013\u001a\u00020\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00010\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015H\u0007¢\u0006\u0002\u0010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0007J\b\u0010\u001c\u001a\u00020\u0006H\u0007J \u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e2\u0006\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0010H\u0007J \u0010\"\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e2\u0006\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0010H\u0007J\u0010\u0010#\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eH\u0007J\b\u0010$\u001a\u00020%H\u0007J\u0010\u0010&\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020\u001fH\u0007J\u0016\u0010(\u001a\u00020\u00122\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0007JY\u0010*\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00152\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00152\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00152\b\u0010+\u001a\u0004\u0018\u00010\u00042\b\u0010,\u001a\u0004\u0018\u00010-H\u0007¢\u0006\u0002\u0010.R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n \b*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R#\u0010\t\u001a\n \b*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n��¨\u0006/"}, m815d2 = {"Lgogolook/callgogolook2/realm/BlockLogRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "insertIdOffsetInMigrating", "", "compact", "", "deleteBlockLog", "fieldNames", "", "fields", "querys", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;)I", "dropBlockLogTable", "", "getBlockLogMaxId", "getBlockLogWithLoadedIdAndGreaterThanDate", "", "Lgogolook/callgogolook2/realm/obj/block/BlockLogRealmObject;", "loadedId", "loadedDate", "getBlockLogWithLoadedIdAndLessThanDate", "getBlockedCallLogList", "getDbFile", "Ljava/io/File;", "insertOrUpdateBlockLogData", "blockLogRealmObject", "insertOrUpdateBlockLogDatas", "blockLogRealmObjects", "queryBlockLogDatas", "sortField", "sort", "Lio/realm/Sort;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;Ljava/lang/String;Lio/realm/Sort;)Ljava/util/List;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.b */
/* loaded from: classes3-dex2jar.jar:j/a/n0/b.class */
public final class C13041b {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29483a;

    /* renamed from: d */
    public static final C13041b f29486d = new C13041b();

    /* renamed from: b */
    public static long f29484b = -1;

    /* renamed from: c */
    public static final AbstractC14974f f29485c = C14975g.m662a(C13042a.f29487a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/b$a.class */
    public static final class C13042a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13042a f29487a = new C13042a();

        /* renamed from: j.a.n0.b$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/b$a$a.class */
        public static final class C13043a implements RealmMigration {

            /* renamed from: a */
            public static final C13043a f29488a = new C13043a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13042a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("BlockLog").schemaVersion(1L).modules(new BlockLogRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13043a.f29488a).build();
        }
    }

    /* renamed from: j.a.n0.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/b$b.class */
    public static final class C13044b implements Realm.Transaction {

        /* renamed from: a */
        public final /* synthetic */ String[] f29489a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f29490b;

        /* renamed from: c */
        public final /* synthetic */ C13193p.EnumC13194a[] f29491c;

        /* renamed from: d */
        public final /* synthetic */ C15162x f29492d;

        public C13044b(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, C15162x xVar) {
            this.f29489a = strArr;
            this.f29490b = objArr;
            this.f29491c = aVarArr;
            this.f29492d = xVar;
        }

        @Override // io.realm.Realm.Transaction
        public final void execute(Realm realm) {
            RealmQuery where = realm.where(BlockLogRealmObject.class);
            C15149k.m383a((Object) where, "where(BlockLogRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, this.f29489a, this.f29490b, this.f29491c);
            if (a != null) {
                C15162x xVar = this.f29492d;
                RealmResults<? extends RealmObject> findAll = a.findAll();
                int i = -1;
                if (findAll != null) {
                    i = -1;
                    if (findAll.deleteAllFromRealm()) {
                        i = findAll.size();
                    }
                }
                xVar.f33150a = i;
                return;
            }
            throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject>");
        }
    }

    /* renamed from: j.a.n0.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/b$c.class */
    public static final class C13045c extends AbstractC15150l implements AbstractC15118l<Realm, List<BlockLogRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ long f29493a;

        /* renamed from: b */
        public final /* synthetic */ long f29494b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13045c(long j, long j2) {
            super(1);
            this.f29493a = j;
            this.f29494b = j2;
        }

        /* renamed from: a */
        public final List<BlockLogRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(BlockLogRealmObject.class).greaterThan("id", this.f29493a + 1).m10371or().greaterThan("_createtime", this.f29494b + 1).sort("id", Sort.DESCENDING).findAll());
        }
    }

    /* renamed from: j.a.n0.b$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/b$d.class */
    public static final class C13046d extends AbstractC15150l implements AbstractC15118l<Realm, List<BlockLogRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ long f29495a;

        /* renamed from: b */
        public final /* synthetic */ long f29496b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13046d(long j, long j2) {
            super(1);
            this.f29495a = j;
            this.f29496b = j2;
        }

        /* renamed from: a */
        public final List<BlockLogRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(BlockLogRealmObject.class).greaterThan("id", this.f29495a + 1).m10371or().lessThan("_createtime", this.f29496b - 1).sort("id", Sort.DESCENDING).findAll());
        }
    }

    /* renamed from: j.a.n0.b$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/b$e.class */
    public static final class C13047e extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ BlockLogRealmObject f29497a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13047e(BlockLogRealmObject blockLogRealmObject) {
            super(1);
            this.f29497a = blockLogRealmObject;
        }

        /* renamed from: a */
        public final boolean m4715a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                long j = 0;
                if (this.f29497a.getId() < 0) {
                    RealmQuery where = realm.where(BlockLogRealmObject.class);
                    Number max = where != null ? where.max("id") : null;
                    if (max != null) {
                        j = max.longValue();
                    }
                    long j2 = j + 1;
                    BlockLogRealmObject blockLogRealmObject = this.f29497a;
                    C13041b bVar = C13041b.f29486d;
                    if (j2 <= C13041b.f29484b) {
                        C13041b bVar2 = C13041b.f29486d;
                        j2 = C13041b.f29484b + 1;
                    }
                    blockLogRealmObject.setId(j2);
                }
                realm.insertOrUpdate(this.f29497a);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4715a(realm));
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13041b.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29483a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final int m4724a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr) {
        C15149k.m377b(strArr, "fieldNames");
        C15149k.m377b(objArr, "fields");
        C15149k.m377b(aVarArr, "querys");
        C15162x xVar = new C15162x();
        xVar.f33150a = -1;
        Realm b = C13193p.m4436b(f29486d.m4728a());
        if (b != null) {
            b.executeTransaction(new C13044b(strArr, objArr, aVarArr, xVar));
            b.close();
        }
        return xVar.f33150a;
    }

    /* renamed from: a */
    public static final List<BlockLogRealmObject> m4727a(long j, long j2) {
        RealmConfiguration a = f29486d.m4728a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13045c(j, j2));
    }

    /* renamed from: a */
    public static final List<BlockLogRealmObject> m4723a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
        List<BlockLogRealmObject> list;
        Realm b = C13193p.m4436b(f29486d.m4728a());
        if (b != null) {
            RealmQuery where = b.where(BlockLogRealmObject.class);
            C15149k.m383a((Object) where, "where(BlockLogRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, strArr, objArr, aVarArr);
            if (a != null) {
                list = (str == null || sort == null) ? b.copyFromRealm(a.findAll()) : b.copyFromRealm(a.findAll().sort(str, sort));
                b.close();
            } else {
                throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject>");
            }
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: a */
    public static final boolean m4726a(BlockLogRealmObject blockLogRealmObject) {
        C15149k.m377b(blockLogRealmObject, "blockLogRealmObject");
        RealmConfiguration a = f29486d.m4728a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13047e(blockLogRealmObject));
        C14037j3.m2731a().mo2704a(new C13875a0());
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: b */
    public static final List<BlockLogRealmObject> m4721b(long j, long j2) {
        RealmConfiguration a = f29486d.m4728a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13046d(j, j2));
    }

    /* renamed from: b */
    public static final void m4722b() {
        Realm.compactRealm(f29486d.m4728a());
    }

    /* renamed from: c */
    public static final int m4720c() {
        Realm b = C13193p.m4436b(f29486d.m4728a());
        int i = 0;
        i = 0;
        if (b != null) {
            RealmQuery where = b.where(BlockLogRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            if (max != null) {
                i = max.intValue();
            }
            b.close();
        }
        return i;
    }

    /* renamed from: d */
    public static final List<BlockLogRealmObject> m4719d() {
        List<BlockLogRealmObject> list;
        Realm b = C13193p.m4436b(f29486d.m4728a());
        if (b != null) {
            RealmResults findAll = b.where(BlockLogRealmObject.class).isNotNull("_e164").notEqualTo("_kind", (Integer) 2).sort("_createtime", Sort.DESCENDING).findAll();
            list = b.copyFromRealm(findAll.where().distinct("_e164").findAll());
            for (BlockLogRealmObject blockLogRealmObject : list) {
                blockLogRealmObject.set_blockCount((int) findAll.where().equalTo("_e164", blockLogRealmObject.get_e164()).count());
            }
            b.close();
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: e */
    public static final File m4718e() {
        RealmConfiguration a = f29486d.m4728a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: a */
    public final RealmConfiguration m4728a() {
        AbstractC14974f fVar = f29485c;
        AbstractC14906i iVar = f29483a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
