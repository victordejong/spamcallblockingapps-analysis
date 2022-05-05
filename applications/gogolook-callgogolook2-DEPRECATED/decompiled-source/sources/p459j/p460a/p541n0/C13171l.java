package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.BlockLogRealmModule;
import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.Sort;
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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J7\u0010\u0012\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00010\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0014H\u0007¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u001aH\u0007J\b\u0010\u001b\u001a\u00020\u001cH\u0007J\b\u0010\u001d\u001a\u00020\u0006H\u0007J\u0010\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0016\u0010\u001e\u001a\u00020!2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020 0#H\u0007JY\u0010$\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010#2\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00142\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00142\b\u0010%\u001a\u0004\u0018\u00010\u00042\b\u0010&\u001a\u0004\u0018\u00010'H\u0007¢\u0006\u0002\u0010(R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\b\u001a\n \t*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R#\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��¨\u0006)"}, m815d2 = {"Lgogolook/callgogolook2/realm/MmsBlockLogRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", "MIGRATE_BATCH_SIZE", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "insertIdOffsetInMigrating", "", "deleteMmsBlockLog", "fieldNames", "", "fields", "query", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;)I", "dropMmsBlockLogTable", "", "getDbFile", "Ljava/io/File;", "getMmsBlockLogMaxId", "insertOrUpdateMmsBlockLogData", "mmsBlockLogRealmObject", "Lgogolook/callgogolook2/realm/obj/block/MmsBlockLogRealmObject;", "", "mmsBlockLogRealmObjects", "", "queryMmsBlockLogData", "sortField", "sort", "Lio/realm/Sort;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;Ljava/lang/String;Lio/realm/Sort;)Ljava/util/List;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.l */
/* loaded from: classes3-dex2jar.jar:j/a/n0/l.class */
public final class C13171l {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29693a;

    /* renamed from: d */
    public static final C13171l f29696d = new C13171l();

    /* renamed from: b */
    public static long f29694b = -1;

    /* renamed from: c */
    public static final AbstractC14974f f29695c = C14975g.m662a(C13172a.f29697a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.l$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/l$a.class */
    public static final class C13172a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13172a f29697a = new C13172a();

        /* renamed from: j.a.n0.l$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/l$a$a.class */
        public static final class C13173a implements RealmMigration {

            /* renamed from: a */
            public static final C13173a f29698a = new C13173a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13172a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("MmsBlockLog").schemaVersion(1L).modules(new BlockLogRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13173a.f29698a).build();
        }
    }

    /* renamed from: j.a.n0.l$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/l$b.class */
    public static final class C13174b extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ MmsBlockLogRealmObject f29699a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13174b(MmsBlockLogRealmObject mmsBlockLogRealmObject) {
            super(1);
            this.f29699a = mmsBlockLogRealmObject;
        }

        /* renamed from: a */
        public final boolean m4476a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                long j = 0;
                if (this.f29699a.getId() < 0) {
                    RealmQuery where = realm.where(MmsBlockLogRealmObject.class);
                    Number max = where != null ? where.max("id") : null;
                    if (max != null) {
                        j = max.longValue();
                    }
                    long j2 = j + 1;
                    MmsBlockLogRealmObject mmsBlockLogRealmObject = this.f29699a;
                    C13171l lVar = C13171l.f29696d;
                    if (j2 <= C13171l.f29694b) {
                        C13171l lVar2 = C13171l.f29696d;
                        j2 = C13171l.f29694b + 1;
                    }
                    mmsBlockLogRealmObject.setId(j2);
                }
                realm.insertOrUpdate(this.f29699a);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4476a(realm));
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13171l.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29693a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final List<MmsBlockLogRealmObject> m4477a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
        List<MmsBlockLogRealmObject> list;
        Realm b = C13193p.m4436b(f29696d.m4480a());
        if (b != null) {
            RealmQuery where = b.where(MmsBlockLogRealmObject.class);
            C15149k.m383a((Object) where, "where(MmsBlockLogRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, strArr, objArr, aVarArr);
            if (a != null) {
                list = (str == null || sort == null) ? b.copyFromRealm(a.findAll()) : b.copyFromRealm(a.findAll().sort(str, sort));
                b.close();
            } else {
                throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject>");
            }
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: a */
    public static final boolean m4479a(MmsBlockLogRealmObject mmsBlockLogRealmObject) {
        C15149k.m377b(mmsBlockLogRealmObject, "mmsBlockLogRealmObject");
        RealmConfiguration a = f29696d.m4480a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13174b(mmsBlockLogRealmObject));
        C14037j3.m2731a().mo2704a(new C13875a0());
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public final RealmConfiguration m4480a() {
        AbstractC14974f fVar = f29695c;
        AbstractC14906i iVar = f29693a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
