package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.MySpamRealmModule;
import gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject;
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
import p459j.p460a.p582w0.C13875a0;
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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0007J\u0006\u0010\u0019\u001a\u00020\u001aJ\b\u0010\u001b\u001a\u00020\u001cH\u0007J\b\u0010\u001d\u001a\u00020\u0006H\u0007J\u0012\u0010\u001e\u001a\u00020\u00182\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0007J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020#H\u0007J\u0016\u0010!\u001a\u00020\u00182\f\u0010$\u001a\b\u0012\u0004\u0012\u00020#0%H\u0007JY\u0010&\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010%2\u000e\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010(2\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010(2\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010(2\b\u0010,\u001a\u0004\u0018\u00010\u00042\b\u0010-\u001a\u0004\u0018\u00010.H\u0007¢\u0006\u0002\u0010/R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\u000b\u001a\n \f*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R#\u0010\u000f\u001a\n \f*\u0004\u0018\u00010\u00100\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n��¨\u00060"}, m815d2 = {"Lgogolook/callgogolook2/realm/MySpamRealmHelper;", "", "()V", "DB_NAME", "", "GO_INSERT", "", "GO_UPDATE", "KEY", "MIGRATE_BATCH_SIZE", "NO_CHANGE", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "VALUE", "VERSION", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "insertIdOffsetInMigrating", "", "compact", "", "dropMySpamTable", "", "getDbFile", "Ljava/io/File;", "getMySpamMaxId", "handleMySpamDataSyncResultFromServer", "mySpamDataArray", "Lorg/json/JSONArray;", "insertOrUpdateMySpamData", "mySpamRealmObject", "Lgogolook/callgogolook2/realm/obj/myspam/MySpamRealmObject;", "MySpamRealmObjects", "", "queryMySpamData", "fieldNames", "", "fields", "query", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "sortField", "sort", "Lio/realm/Sort;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;Ljava/lang/String;Lio/realm/Sort;)Ljava/util/List;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.m */
/* loaded from: classes3-dex2jar.jar:j/a/n0/m.class */
public final class C13175m {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29700a;

    /* renamed from: d */
    public static final C13175m f29703d = new C13175m();

    /* renamed from: b */
    public static long f29701b = -1;

    /* renamed from: c */
    public static final AbstractC14974f f29702c = C14975g.m662a(C13176a.f29704a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.m$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/m$a.class */
    public static final class C13176a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13176a f29704a = new C13176a();

        /* renamed from: j.a.n0.m$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/m$a$a.class */
        public static final class C13177a implements RealmMigration {

            /* renamed from: a */
            public static final C13177a f29705a = new C13177a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13176a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("MySpam").schemaVersion(1L).modules(new MySpamRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13177a.f29705a).build();
        }
    }

    /* renamed from: j.a.n0.m$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/m$b.class */
    public static final class C13178b extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ JSONArray f29706a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13178b(JSONArray jSONArray) {
            super(1);
            this.f29706a = jSONArray;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* JADX WARN: Type inference failed for: r0v57, types: [gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject] */
        /* JADX WARN: Type inference failed for: r30v0 */
        /* JADX WARN: Type inference failed for: r30v1, types: [long] */
        /* JADX WARN: Type inference failed for: r30v3 */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4466a(io.realm.Realm r17) {
            /*
                Method dump skipped, instructions count: 585
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13175m.C13178b.m4466a(io.realm.Realm):void");
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4466a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.m$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/m$c.class */
    public static final class C13179c extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ List f29707a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13179c(List list) {
            super(1);
            this.f29707a = list;
        }

        /* renamed from: a */
        public final void m4465a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(MySpamRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            long longValue = (max != null ? max.longValue() : 0L) + 1;
            C13175m mVar = C13175m.f29703d;
            if (longValue <= C13175m.f29701b) {
                C13175m mVar2 = C13175m.f29703d;
                longValue = C13175m.f29701b + 1;
            }
            for (MySpamRealmObject mySpamRealmObject : this.f29707a) {
                if (mySpamRealmObject.getId() < 0) {
                    mySpamRealmObject.setId(longValue);
                    longValue++;
                }
            }
            realm.insertOrUpdate(this.f29707a);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4465a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.m$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/m$d.class */
    public static final class C13180d extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ MySpamRealmObject f29708a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13180d(MySpamRealmObject mySpamRealmObject) {
            super(1);
            this.f29708a = mySpamRealmObject;
        }

        /* renamed from: a */
        public final boolean m4464a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                long j = 0;
                if (this.f29708a.getId() < 0) {
                    RealmQuery where = realm.where(MySpamRealmObject.class);
                    Number max = where != null ? where.max("id") : null;
                    if (max != null) {
                        j = max.longValue();
                    }
                    long j2 = j + 1;
                    MySpamRealmObject mySpamRealmObject = this.f29708a;
                    C13175m mVar = C13175m.f29703d;
                    if (j2 <= C13175m.f29701b) {
                        C13175m mVar2 = C13175m.f29703d;
                        j2 = C13175m.f29701b + 1;
                    }
                    mySpamRealmObject.setId(j2);
                }
                realm.insertOrUpdate(this.f29708a);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4464a(realm));
        }
    }

    /* renamed from: j.a.n0.m$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/m$e.class */
    public static final class C13181e extends AbstractC15150l implements AbstractC15118l<Realm, List<MySpamRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String[] f29709a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f29710b;

        /* renamed from: c */
        public final /* synthetic */ C13193p.EnumC13194a[] f29711c;

        /* renamed from: d */
        public final /* synthetic */ String f29712d;

        /* renamed from: e */
        public final /* synthetic */ Sort f29713e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13181e(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
            super(1);
            this.f29709a = strArr;
            this.f29710b = objArr;
            this.f29711c = aVarArr;
            this.f29712d = str;
            this.f29713e = sort;
        }

        /* renamed from: a */
        public final List<MySpamRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmQuery where = realm.where(MySpamRealmObject.class);
            C15149k.m383a((Object) where, "where(MySpamRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, this.f29709a, this.f29710b, this.f29711c);
            if (a != null) {
                return (this.f29712d == null || this.f29713e == null) ? realm.copyFromRealm(a.findAll()) : realm.copyFromRealm(a.findAll().sort(this.f29712d, this.f29713e));
            }
            throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject>");
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13175m.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29700a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final List<MySpamRealmObject> m4470a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
        RealmConfiguration a = f29703d.m4475a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13181e(strArr, objArr, aVarArr, str, sort));
    }

    /* renamed from: a */
    public static final void m4472a(List<? extends MySpamRealmObject> list) {
        C15149k.m377b(list, "MySpamRealmObjects");
        RealmConfiguration a = f29703d.m4475a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13179c(list));
        C14037j3.m2731a().mo2704a(new C13875a0());
    }

    /* renamed from: a */
    public static final void m4471a(JSONArray jSONArray) {
        if (jSONArray != null) {
            RealmConfiguration a = f29703d.m4475a();
            C15149k.m383a((Object) a, "configuration");
            C13193p.m4442a(a, new C13178b(jSONArray));
        }
    }

    /* renamed from: a */
    public static final boolean m4474a(MySpamRealmObject mySpamRealmObject) {
        C15149k.m377b(mySpamRealmObject, "mySpamRealmObject");
        RealmConfiguration a = f29703d.m4475a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13180d(mySpamRealmObject));
        C14037j3.m2731a().mo2704a(new C13875a0());
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: b */
    public static final void m4469b() {
        Realm.compactRealm(f29703d.m4475a());
    }

    /* renamed from: c */
    public static final File m4468c() {
        RealmConfiguration a = f29703d.m4475a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: d */
    public static final int m4467d() {
        Realm b = C13193p.m4436b(f29703d.m4475a());
        int i = 0;
        i = 0;
        if (b != null) {
            RealmQuery where = b.where(MySpamRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            if (max != null) {
                i = max.intValue();
            }
            b.close();
        }
        return i;
    }

    /* renamed from: a */
    public final RealmConfiguration m4475a() {
        AbstractC14974f fVar = f29702c;
        AbstractC14906i iVar = f29700a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
