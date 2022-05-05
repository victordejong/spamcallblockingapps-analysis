package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.TagRealmModule;
import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
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
import org.json.JSONArray;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14317y1;
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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0007J\u0006\u0010\u001a\u001a\u00020\u001bJ\b\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u0010\u001e\u001a\u00020\u0006H\u0007J \u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 2\u0006\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0017H\u0007J\u0012\u0010$\u001a\u00020\u00192\b\u0010%\u001a\u0004\u0018\u00010&H\u0007J\u0010\u0010'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020!H\u0007J\u0016\u0010'\u001a\u00020\u00192\f\u0010)\u001a\b\u0012\u0004\u0012\u00020!0 H\u0007J\u0010\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\u0004H\u0007JY\u0010,\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010.2\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010.2\u000e\u00100\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010.2\b\u00102\u001a\u0004\u0018\u00010\u00042\b\u00103\u001a\u0004\u0018\u000104H\u0007¢\u0006\u0002\u00105R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\f\u001a\n \r*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R#\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\u00110\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n��¨\u00066"}, m815d2 = {"Lgogolook/callgogolook2/realm/TagRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", "GO_INSERT", "GO_UPDATE", "KEY", "MIGRATE_BATCH_SIZE", "NO_CHANGE", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "VALUE", "VERSION", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "insertIdOffsetInMigrating", "", "compact", "", "dropTagTable", "", "getDbFile", "Ljava/io/File;", "getTagMaxId", "getTagsNeedSyncToIndex", "", "Lgogolook/callgogolook2/realm/obj/tag/TagRealmObject;", "lastSyncId", "lastSyncTime", "handleSyncResultForTag", "tagDataArray", "Lorg/json/JSONArray;", "insertOrUpdateTagData", "tagRealmObject", "tagRealmObjects", "isTagExist", "e164", "queryTagData", "fieldNames", "", "fields", "query", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "sortField", "sort", "Lio/realm/Sort;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;Ljava/lang/String;Lio/realm/Sort;)Ljava/util/List;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.r */
/* loaded from: classes3-dex2jar.jar:j/a/n0/r.class */
public final class C13198r {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29751a;

    /* renamed from: d */
    public static final C13198r f29754d = new C13198r();

    /* renamed from: b */
    public static long f29752b = -1;

    /* renamed from: c */
    public static final AbstractC14974f f29753c = C14975g.m662a(C13199a.f29755a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.r$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/r$a.class */
    public static final class C13199a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13199a f29755a = new C13199a();

        /* renamed from: j.a.n0.r$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/r$a$a.class */
        public static final class C13200a implements RealmMigration {

            /* renamed from: a */
            public static final C13200a f29756a = new C13200a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13199a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("Tag").schemaVersion(1L).modules(new TagRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13200a.f29756a).build();
        }
    }

    /* renamed from: j.a.n0.r$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/r$b.class */
    public static final class C13201b extends AbstractC15150l implements AbstractC15118l<Realm, List<TagRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ long f29757a;

        /* renamed from: b */
        public final /* synthetic */ long f29758b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13201b(long j, long j2) {
            super(1);
            this.f29757a = j;
            this.f29758b = j2;
        }

        /* renamed from: a */
        public final List<TagRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(TagRealmObject.class).greaterThan("id", this.f29757a).m10371or().greaterThan("_updatetime", this.f29758b).findAll());
        }
    }

    /* renamed from: j.a.n0.r$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/r$c.class */
    public static final class C13202c extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ JSONArray f29759a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13202c(JSONArray jSONArray) {
            super(1);
            this.f29759a = jSONArray;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v66, types: [gogolook.callgogolook2.realm.obj.tag.TagRealmObject] */
        /* JADX WARN: Type inference failed for: r27v0 */
        /* JADX WARN: Type inference failed for: r27v1, types: [long] */
        /* JADX WARN: Type inference failed for: r27v3 */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4421a(io.realm.Realm r17) {
            /*
                Method dump skipped, instructions count: 650
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13198r.C13202c.m4421a(io.realm.Realm):void");
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4421a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.r$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/r$d.class */
    public static final class C13203d extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ List f29760a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13203d(List list) {
            super(1);
            this.f29760a = list;
        }

        /* renamed from: a */
        public final void m4420a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(TagRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            long longValue = (max != null ? max.longValue() : 0L) + 1;
            C13198r rVar = C13198r.f29754d;
            if (longValue <= C13198r.f29752b) {
                C13198r rVar2 = C13198r.f29754d;
                longValue = C13198r.f29752b + 1;
            }
            for (TagRealmObject tagRealmObject : this.f29760a) {
                if (tagRealmObject.getId() < 0) {
                    tagRealmObject.setId(longValue);
                    longValue++;
                }
            }
            realm.insertOrUpdate(this.f29760a);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4420a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.r$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/r$e.class */
    public static final class C13204e extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ TagRealmObject f29761a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13204e(TagRealmObject tagRealmObject) {
            super(1);
            this.f29761a = tagRealmObject;
        }

        /* renamed from: a */
        public final boolean m4419a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                long j = 0;
                if (this.f29761a.getId() < 0) {
                    RealmQuery where = realm.where(TagRealmObject.class);
                    Number max = where != null ? where.max("id") : null;
                    if (max != null) {
                        j = max.longValue();
                    }
                    long j2 = j + 1;
                    TagRealmObject tagRealmObject = this.f29761a;
                    C13198r rVar = C13198r.f29754d;
                    if (j2 <= C13198r.f29752b) {
                        C13198r rVar2 = C13198r.f29754d;
                        j2 = C13198r.f29752b + 1;
                    }
                    tagRealmObject.setId(j2);
                }
                realm.insertOrUpdate(this.f29761a);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4419a(realm));
        }
    }

    /* renamed from: j.a.n0.r$f */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/r$f.class */
    public static final class C13205f extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ String f29762a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13205f(String str) {
            super(1);
            this.f29762a = str;
        }

        /* renamed from: a */
        public final boolean m4418a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmResults findAll = realm.where(TagRealmObject.class).equalTo("_e164", this.f29762a).equalTo("_type", (Integer) 0).findAll();
            C15149k.m383a((Object) findAll, "result");
            return !findAll.isEmpty();
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4418a(realm));
        }
    }

    /* renamed from: j.a.n0.r$g */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/r$g.class */
    public static final class C13206g extends AbstractC15150l implements AbstractC15118l<Realm, List<TagRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String[] f29763a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f29764b;

        /* renamed from: c */
        public final /* synthetic */ C13193p.EnumC13194a[] f29765c;

        /* renamed from: d */
        public final /* synthetic */ String f29766d;

        /* renamed from: e */
        public final /* synthetic */ Sort f29767e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13206g(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
            super(1);
            this.f29763a = strArr;
            this.f29764b = objArr;
            this.f29765c = aVarArr;
            this.f29766d = str;
            this.f29767e = sort;
        }

        /* renamed from: a */
        public final List<TagRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmQuery where = realm.where(TagRealmObject.class);
            C15149k.m383a((Object) where, "where(TagRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, this.f29763a, this.f29764b, this.f29765c);
            if (a != null) {
                return (this.f29766d == null || this.f29767e == null) ? realm.copyFromRealm(a.findAll()) : realm.copyFromRealm(a.findAll().sort(this.f29766d, this.f29767e));
            }
            throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.tag.TagRealmObject>");
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13198r.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29751a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final List<TagRealmObject> m4432a(long j, long j2) {
        RealmConfiguration a = f29754d.m4433a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13201b(j, j2));
    }

    /* renamed from: a */
    public static final List<TagRealmObject> m4426a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
        RealmConfiguration a = f29754d.m4433a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13206g(strArr, objArr, aVarArr, str, sort));
    }

    /* renamed from: a */
    public static final void m4428a(List<? extends TagRealmObject> list) {
        C15149k.m377b(list, "tagRealmObjects");
        RealmConfiguration a = f29754d.m4433a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13203d(list));
        C14037j3.m2731a().mo2704a(new C14317y1());
    }

    /* renamed from: a */
    public static final void m4427a(JSONArray jSONArray) {
        if (jSONArray != null) {
            RealmConfiguration a = f29754d.m4433a();
            C15149k.m383a((Object) a, "configuration");
            C13193p.m4442a(a, new C13202c(jSONArray));
        }
    }

    /* renamed from: a */
    public static final boolean m4431a(TagRealmObject tagRealmObject) {
        C15149k.m377b(tagRealmObject, "tagRealmObject");
        RealmConfiguration a = f29754d.m4433a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13204e(tagRealmObject));
        C14037j3.m2731a().mo2704a(new C14317y1());
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public static final boolean m4429a(String str) {
        C15149k.m377b(str, "e164");
        RealmConfiguration a = f29754d.m4433a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4435b(a, new C13205f(str));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: b */
    public static final void m4425b() {
        Realm.compactRealm(f29754d.m4433a());
    }

    /* renamed from: c */
    public static final File m4424c() {
        RealmConfiguration a = f29754d.m4433a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: d */
    public static final int m4423d() {
        Realm b = C13193p.m4436b(f29754d.m4433a());
        int i = 0;
        i = 0;
        if (b != null) {
            RealmQuery where = b.where(TagRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            if (max != null) {
                i = max.intValue();
            }
            b.close();
        }
        return i;
    }

    /* renamed from: a */
    public final RealmConfiguration m4433a() {
        AbstractC14974f fVar = f29753c;
        AbstractC14906i iVar = f29751a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
