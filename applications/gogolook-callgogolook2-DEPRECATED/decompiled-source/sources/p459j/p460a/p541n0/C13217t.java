package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.WhiteListRealmModule;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.Sort;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import org.json.JSONArray;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.C13914b2;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14037j3;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0007J7\u0010\u001b\u001a\u00020\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00010\u001d2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u001dH\u0007¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020\u0018H\u0007J\b\u0010#\u001a\u00020$H\u0007J\u0010\u0010%\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&H\u0007J\u0017\u0010(\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u001dH\u0007¢\u0006\u0002\u0010)J\b\u0010*\u001a\u00020\u0006H\u0007J\u0012\u0010+\u001a\u00020\u001a2\b\u0010,\u001a\u0004\u0018\u00010-H\u0007J\u0010\u0010.\u001a\u00020\u00182\u0006\u0010/\u001a\u00020'H\u0007J\u0016\u0010.\u001a\u00020\u001a2\f\u00100\u001a\b\u0012\u0004\u0012\u00020'0&H\u0007JY\u00101\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&2\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001d2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001d2\b\u00102\u001a\u0004\u0018\u00010\u00042\b\u00103\u001a\u0004\u0018\u000104H\u0007¢\u0006\u0002\u00105R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\f\u001a\n \r*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R#\u0010\u000f\u001a\n \r*\u0004\u0018\u00010\u00100\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n��¨\u00066"}, m815d2 = {"Lgogolook/callgogolook2/realm/WhiteListRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", "GO_INSERT", "GO_UPDATE", "KEY", "MIGRATE_BATCH_SIZE", "NO_CHANGE", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "VALUE", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "insertIdOffsetInMigrating", "", "isDbMigrating", "", "compact", "", "deleteWhiteListData", "fieldNames", "", "fields", "query", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;)I", "dropWhiteListTable", "getDbFile", "Ljava/io/File;", "getNonDeleteWhiteList", "", "Lgogolook/callgogolook2/realm/obj/whitelist/WhiteListRealmObject;", "getNonDeleteWhiteListE164", "()[Ljava/lang/String;", "getWhiteListMaxId", "handleWhiteListSyncResultFromServer", "whiteDataArray", "Lorg/json/JSONArray;", "insertOrUpdateWhiteListData", "whiteListRealmObject", "whiteListRealmObjects", "queryWhiteListData", "sortField", "sort", "Lio/realm/Sort;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;Ljava/lang/String;Lio/realm/Sort;)Ljava/util/List;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.t */
/* loaded from: classes3-dex2jar.jar:j/a/n0/t.class */
public final class C13217t {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29782a;

    /* renamed from: d */
    public static final C13217t f29785d = new C13217t();

    /* renamed from: b */
    public static long f29783b = -1;

    /* renamed from: c */
    public static final AbstractC14974f f29784c = C14975g.m662a(C13218a.f29786a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.t$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/t$a.class */
    public static final class C13218a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13218a f29786a = new C13218a();

        /* renamed from: j.a.n0.t$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/t$a$a.class */
        public static final class C13219a implements RealmMigration {

            /* renamed from: a */
            public static final C13219a f29787a = new C13219a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13218a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("WhiteList").schemaVersion(1L).modules(new WhiteListRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13219a.f29787a).build();
        }
    }

    /* renamed from: j.a.n0.t$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/t$b.class */
    public static final class C13220b extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ JSONArray f29788a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13220b(JSONArray jSONArray) {
            super(1);
            this.f29788a = jSONArray;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        /* JADX WARN: Type inference failed for: r0v46, types: [gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject] */
        /* JADX WARN: Type inference failed for: r21v0 */
        /* JADX WARN: Type inference failed for: r21v1, types: [long] */
        /* JADX WARN: Type inference failed for: r21v3 */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4392a(io.realm.Realm r13) {
            /*
                Method dump skipped, instructions count: 453
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13217t.C13220b.m4392a(io.realm.Realm):void");
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4392a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.t$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/t$c.class */
    public static final class C13221c extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ List f29789a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13221c(List list) {
            super(1);
            this.f29789a = list;
        }

        /* renamed from: a */
        public final void m4391a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(WhiteListRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            long longValue = (max != null ? max.longValue() : 0L) + 1;
            C13217t tVar = C13217t.f29785d;
            if (longValue <= C13217t.f29783b) {
                C13217t tVar2 = C13217t.f29785d;
                longValue = C13217t.f29783b + 1;
            }
            for (WhiteListRealmObject whiteListRealmObject : this.f29789a) {
                if (whiteListRealmObject.getId() < 0) {
                    whiteListRealmObject.setId(longValue);
                    longValue++;
                }
            }
            realm.insertOrUpdate(this.f29789a);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4391a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.t$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/t$d.class */
    public static final class C13222d extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ WhiteListRealmObject f29790a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13222d(WhiteListRealmObject whiteListRealmObject) {
            super(1);
            this.f29790a = whiteListRealmObject;
        }

        /* renamed from: a */
        public final boolean m4390a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                long j = 0;
                if (this.f29790a.getId() < 0) {
                    RealmQuery where = realm.where(WhiteListRealmObject.class);
                    Number max = where != null ? where.max("id") : null;
                    if (max != null) {
                        j = max.longValue();
                    }
                    long j2 = j + 1;
                    WhiteListRealmObject whiteListRealmObject = this.f29790a;
                    C13217t tVar = C13217t.f29785d;
                    if (j2 <= C13217t.f29783b) {
                        C13217t tVar2 = C13217t.f29785d;
                        j2 = C13217t.f29783b + 1;
                    }
                    whiteListRealmObject.setId(j2);
                }
                realm.insertOrUpdate(this.f29790a);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4390a(realm));
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13217t.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29782a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final List<WhiteListRealmObject> m4398a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
        List<WhiteListRealmObject> list;
        Realm b = C13193p.m4436b(f29785d.m4403a());
        if (b != null) {
            RealmQuery where = b.where(WhiteListRealmObject.class);
            C15149k.m383a((Object) where, "where(WhiteListRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, strArr, objArr, aVarArr);
            if (a != null) {
                list = (str == null || sort == null) ? b.copyFromRealm(a.findAll()) : b.copyFromRealm(a.findAll().sort(str, sort));
                b.close();
            } else {
                throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject>");
            }
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: a */
    public static final void m4400a(List<? extends WhiteListRealmObject> list) {
        C15149k.m377b(list, "whiteListRealmObjects");
        RealmConfiguration a = f29785d.m4403a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13221c(list));
        C14037j3.m2731a().mo2704a(new C13914b2());
    }

    /* renamed from: a */
    public static final void m4399a(JSONArray jSONArray) {
        if (jSONArray != null) {
            RealmConfiguration a = f29785d.m4403a();
            C15149k.m383a((Object) a, "configuration");
            C13193p.m4442a(a, new C13220b(jSONArray));
        }
    }

    /* renamed from: a */
    public static final boolean m4402a(WhiteListRealmObject whiteListRealmObject) {
        C15149k.m377b(whiteListRealmObject, "whiteListRealmObject");
        RealmConfiguration a = f29785d.m4403a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13222d(whiteListRealmObject));
        C14037j3.m2731a().mo2704a(new C13914b2());
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: b */
    public static final void m4397b() {
        Realm.compactRealm(f29785d.m4403a());
    }

    /* renamed from: c */
    public static final File m4396c() {
        RealmConfiguration a = f29785d.m4403a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: d */
    public static final List<WhiteListRealmObject> m4395d() {
        List<WhiteListRealmObject> list;
        Realm b = C13193p.m4436b(f29785d.m4403a());
        if (b != null) {
            list = b.copyFromRealm(b.where(WhiteListRealmObject.class).notEqualTo("_status", (Integer) 2).sort("_updatetime", Sort.DESCENDING).findAll());
            b.close();
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: e */
    public static final String[] m4394e() {
        String[] strArr;
        List<WhiteListRealmObject> d = m4395d();
        if (d != null && (!d.isEmpty())) {
            String[] strArr2 = new String[d.size()];
            int i = 0;
            int size = d.size();
            while (true) {
                strArr = strArr2;
                if (i >= size) {
                    break;
                }
                strArr2[i] = d.get(i).get_e164();
                i++;
            }
        } else {
            strArr = null;
        }
        return strArr;
    }

    /* renamed from: f */
    public static final int m4393f() {
        Realm b = C13193p.m4436b(f29785d.m4403a());
        int i = 0;
        i = 0;
        if (b != null) {
            RealmQuery where = b.where(WhiteListRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            if (max != null) {
                i = max.intValue();
            }
            b.close();
        }
        return i;
    }

    /* renamed from: a */
    public final RealmConfiguration m4403a() {
        AbstractC14974f fVar = f29784c;
        AbstractC14906i iVar = f29782a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
