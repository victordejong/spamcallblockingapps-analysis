package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.IapProductRealmModule;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
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
import p459j.p460a.p582w0.C13973d4;
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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0006H\u0007J\b\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0016\u0010\u0019\u001a\u00020\u00102\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u001aH\u0007J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0004H\u0007J\u0010\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u001aH\u0007JY\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u001a2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010 2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010 2\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010 2\b\u0010$\u001a\u0004\u0018\u00010\u00042\b\u0010%\u001a\u0004\u0018\u00010&H\u0007¢\u0006\u0002\u0010'J,\u0010(\u001a\u00020\u00102\"\u0010)\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020+0*j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020+`,H\u0007J,\u0010-\u001a\u00020\u00102\"\u0010)\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020+0*j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020+`,H\u0007JB\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u001a2\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00180\u001a2\"\u00100\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002010*j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000201`,H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n \b*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R#\u0010\t\u001a\n \b*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u00062"}, m815d2 = {"Lgogolook/callgogolook2/realm/IapProductRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "compact", "", "dropTable", "", "getCount", "getDbFile", "Ljava/io/File;", "insertOrUpdateIapProduct", "iapProductRealmObject", "Lgogolook/callgogolook2/realm/obj/iap/IapProductRealmObject;", "insertOrUpdateIapProducts", "", "isIapProductAvailable", "productId", "queryAvailableProducts", "queryData", "fieldNames", "", "fields", "query", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "sortField", "sort", "Lio/realm/Sort;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;Ljava/lang/String;Lio/realm/Sort;)Ljava/util/List;", "saveIapProducts", IapPlanRealmObject.PRODUCTS, "Ljava/util/HashMap;", "Lgogolook/callgogolook2/gson/ValidProducts$ProductItem;", "Lkotlin/collections/HashMap;", "saveIapPromotions", "updateSkuDetail", "iapProductRealmObjects", PlanProductRealmObject.SKU_DETAILS, "Lcom/android/billingclient/api/SkuDetails;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.f */
/* loaded from: classes3-dex2jar.jar:j/a/n0/f.class */
public final class C13092f {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29565a;

    /* renamed from: c */
    public static final C13092f f29567c = new C13092f();

    /* renamed from: b */
    public static final AbstractC14974f f29566b = C14975g.m662a(C13093a.f29568a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/f$a.class */
    public static final class C13093a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13093a f29568a = new C13093a();

        /* renamed from: j.a.n0.f$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/f$a$a.class */
        public static final class C13094a implements RealmMigration {

            /* renamed from: a */
            public static final C13094a f29569a = new C13094a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13093a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("IapProduct").schemaVersion(1L).modules(new IapProductRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13094a.f29569a).build();
        }
    }

    /* renamed from: j.a.n0.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/f$b.class */
    public static final class C13095b extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ IapProductRealmObject f29570a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13095b(IapProductRealmObject iapProductRealmObject) {
            super(1);
            this.f29570a = iapProductRealmObject;
        }

        /* renamed from: a */
        public final boolean m4627a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                realm.insertOrUpdate(this.f29570a);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4627a(realm));
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13092f.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29565a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final List<IapProductRealmObject> m4628a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
        List<IapProductRealmObject> list;
        Realm b = C13193p.m4436b(f29567c.m4630a());
        if (b != null) {
            RealmQuery where = b.where(IapProductRealmObject.class);
            C15149k.m383a((Object) where, "where(IapProductRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, strArr, objArr, aVarArr);
            if (a != null) {
                list = (str == null || sort == null) ? b.copyFromRealm(a.findAll()) : b.copyFromRealm(a.findAll().sort(str, sort));
                b.close();
            } else {
                throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject>");
            }
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: a */
    public static final boolean m4629a(IapProductRealmObject iapProductRealmObject) {
        C15149k.m377b(iapProductRealmObject, "iapProductRealmObject");
        RealmConfiguration a = f29567c.m4630a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13095b(iapProductRealmObject));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public final RealmConfiguration m4630a() {
        AbstractC14974f fVar = f29566b;
        AbstractC14906i iVar = f29565a[0];
        return (RealmConfiguration) fVar.getValue();
    }
}
