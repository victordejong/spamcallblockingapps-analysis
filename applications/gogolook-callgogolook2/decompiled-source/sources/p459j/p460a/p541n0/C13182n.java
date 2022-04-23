package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.NoteRealmModule;
import gogolook.callgogolook2.realm.obj.note.NoteRealmObject;
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
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14079m1;
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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0007J\u0006\u0010\u001a\u001a\u00020\u001bJ\b\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u0010\u001e\u001a\u00020\u0006H\u0007J \u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 2\u0006\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\u0017H\u0007J\u0012\u0010$\u001a\u00020\u00192\b\u0010%\u001a\u0004\u0018\u00010&H\u0007J\u0010\u0010'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020!H\u0007J\u0016\u0010'\u001a\u00020\u00192\f\u0010)\u001a\b\u0012\u0004\u0012\u00020!0 H\u0007JY\u0010*\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010,2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010,2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010,2\b\u00100\u001a\u0004\u0018\u00010\u00042\b\u00101\u001a\u0004\u0018\u000102H\u0007¢\u0006\u0002\u00103R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\f\u001a\n \r*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R#\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\u00110\u00118FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n��¨\u00064"}, m815d2 = {"Lgogolook/callgogolook2/realm/NoteRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", "GO_INSERT", "GO_UPDATE", "KEY", "MIGRATE_BATCH_SIZE", "NO_CHANGE", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "VALUE", "VERSION", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "insertIdOffsetInMigrating", "", "compact", "", "dropNoteTable", "", "getDbFile", "Ljava/io/File;", "getNoteMaxId", "getNotesNeedSyncToIndex", "", "Lgogolook/callgogolook2/realm/obj/note/NoteRealmObject;", "lastSyncId", "lastSyncTime", "handleSyncResultForNote", "noteDataArray", "Lorg/json/JSONArray;", "insertOrUpdateNoteData", "noteRealmObject", "noteRealmObjects", "queryNoteData", "fieldNames", "", "fields", "query", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "sortField", "sort", "Lio/realm/Sort;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;Ljava/lang/String;Lio/realm/Sort;)Ljava/util/List;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.n */
/* loaded from: classes3-dex2jar.jar:j/a/n0/n.class */
public final class C13182n {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29714a;

    /* renamed from: d */
    public static final C13182n f29717d = new C13182n();

    /* renamed from: b */
    public static long f29715b = -1;

    /* renamed from: c */
    public static final AbstractC14974f f29716c = C14975g.m662a(C13183a.f29718a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.n$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/n$a.class */
    public static final class C13183a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13183a f29718a = new C13183a();

        /* renamed from: j.a.n0.n$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/n$a$a.class */
        public static final class C13184a implements RealmMigration {

            /* renamed from: a */
            public static final C13184a f29719a = new C13184a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13183a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("Note").schemaVersion(1L).modules(new NoteRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13184a.f29719a).build();
        }
    }

    /* renamed from: j.a.n0.n$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/n$b.class */
    public static final class C13185b extends AbstractC15150l implements AbstractC15118l<Realm, List<NoteRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ long f29720a;

        /* renamed from: b */
        public final /* synthetic */ long f29721b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13185b(long j, long j2) {
            super(1);
            this.f29720a = j;
            this.f29721b = j2;
        }

        /* renamed from: a */
        public final List<NoteRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(NoteRealmObject.class).greaterThan("id", this.f29720a).m10371or().greaterThan("_updatetime", this.f29721b).findAll());
        }
    }

    /* renamed from: j.a.n0.n$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/n$c.class */
    public static final class C13186c extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ JSONArray f29722a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13186c(JSONArray jSONArray) {
            super(1);
            this.f29722a = jSONArray;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v15, types: [long] */
        /* JADX WARN: Type inference failed for: r0v75, types: [gogolook.callgogolook2.realm.obj.note.NoteRealmObject] */
        /* JADX WARN: Type inference failed for: r20v0 */
        /* JADX WARN: Type inference failed for: r20v1, types: [long] */
        /* JADX WARN: Type inference failed for: r20v3 */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4451a(io.realm.Realm r13) {
            /*
                Method dump skipped, instructions count: 538
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13182n.C13186c.m4451a(io.realm.Realm):void");
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4451a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.n$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/n$d.class */
    public static final class C13187d extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ List f29723a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13187d(List list) {
            super(1);
            this.f29723a = list;
        }

        /* renamed from: a */
        public final void m4450a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(NoteRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            long longValue = (max != null ? max.longValue() : 0L) + 1;
            C13182n nVar = C13182n.f29717d;
            if (longValue <= C13182n.f29715b) {
                C13182n nVar2 = C13182n.f29717d;
                longValue = C13182n.f29715b + 1;
            }
            for (NoteRealmObject noteRealmObject : this.f29723a) {
                if (noteRealmObject.getId() < 0) {
                    noteRealmObject.setId(longValue);
                    longValue++;
                }
            }
            realm.insertOrUpdate(this.f29723a);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4450a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.n$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/n$e.class */
    public static final class C13188e extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ NoteRealmObject f29724a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13188e(NoteRealmObject noteRealmObject) {
            super(1);
            this.f29724a = noteRealmObject;
        }

        /* renamed from: a */
        public final boolean m4449a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                RealmQuery where = realm.where(NoteRealmObject.class);
                Number max = where != null ? where.max("id") : null;
                long longValue = (max != null ? max.longValue() : 0L) + 1;
                if (this.f29724a.getId() < 0) {
                    NoteRealmObject noteRealmObject = this.f29724a;
                    C13182n nVar = C13182n.f29717d;
                    if (longValue <= C13182n.f29715b) {
                        C13182n nVar2 = C13182n.f29717d;
                        longValue = C13182n.f29715b + 1;
                    }
                    noteRealmObject.setId(longValue);
                }
                realm.insertOrUpdate(this.f29724a);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4449a(realm));
        }
    }

    /* renamed from: j.a.n0.n$f */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/n$f.class */
    public static final class C13189f extends AbstractC15150l implements AbstractC15118l<Realm, List<NoteRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String[] f29725a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f29726b;

        /* renamed from: c */
        public final /* synthetic */ C13193p.EnumC13194a[] f29727c;

        /* renamed from: d */
        public final /* synthetic */ String f29728d;

        /* renamed from: e */
        public final /* synthetic */ Sort f29729e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13189f(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
            super(1);
            this.f29725a = strArr;
            this.f29726b = objArr;
            this.f29727c = aVarArr;
            this.f29728d = str;
            this.f29729e = sort;
        }

        /* renamed from: a */
        public final List<NoteRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmQuery where = realm.where(NoteRealmObject.class);
            C15149k.m383a((Object) where, "where(NoteRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, this.f29725a, this.f29726b, this.f29727c);
            if (a != null) {
                return (this.f29728d == null || this.f29729e == null) ? realm.copyFromRealm(a.findAll()) : realm.copyFromRealm(a.findAll().sort(this.f29728d, this.f29729e));
            }
            throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.note.NoteRealmObject>");
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13182n.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29714a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final List<NoteRealmObject> m4461a(long j, long j2) {
        RealmConfiguration a = f29717d.m4462a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13185b(j, j2));
    }

    /* renamed from: a */
    public static final List<NoteRealmObject> m4456a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
        RealmConfiguration a = f29717d.m4462a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13189f(strArr, objArr, aVarArr, str, sort));
    }

    /* renamed from: a */
    public static final void m4458a(List<? extends NoteRealmObject> list) {
        C15149k.m377b(list, "noteRealmObjects");
        RealmConfiguration a = f29717d.m4462a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13187d(list));
        C14037j3.m2731a().mo2704a(new C14079m1());
    }

    /* renamed from: a */
    public static final void m4457a(JSONArray jSONArray) {
        if (jSONArray != null) {
            RealmConfiguration a = f29717d.m4462a();
            C15149k.m383a((Object) a, "configuration");
            C13193p.m4442a(a, new C13186c(jSONArray));
        }
    }

    /* renamed from: a */
    public static final boolean m4460a(NoteRealmObject noteRealmObject) {
        C15149k.m377b(noteRealmObject, "noteRealmObject");
        RealmConfiguration a = f29717d.m4462a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13188e(noteRealmObject));
        C14037j3.m2731a().mo2704a(new C14079m1());
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: b */
    public static final void m4455b() {
        Realm.compactRealm(f29717d.m4462a());
    }

    /* renamed from: c */
    public static final File m4454c() {
        RealmConfiguration a = f29717d.m4462a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: d */
    public static final int m4453d() {
        Realm b = C13193p.m4436b(f29717d.m4462a());
        int i = 0;
        i = 0;
        if (b != null) {
            RealmQuery where = b.where(NoteRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            if (max != null) {
                i = max.intValue();
            }
            b.close();
        }
        return i;
    }

    /* renamed from: a */
    public final RealmConfiguration m4462a() {
        AbstractC14974f fVar = f29716c;
        AbstractC14906i iVar = f29714a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
