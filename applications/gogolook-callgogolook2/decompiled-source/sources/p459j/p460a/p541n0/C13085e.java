package p459j.p460a.p541n0;

import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.IapPlanRealmModule;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject;
import io.realm.C10917x2535fbf0;
import io.realm.DynamicRealm;
import io.realm.FieldAttribute;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmList;
import io.realm.RealmMigration;
import io.realm.RealmObjectSchema;
import io.realm.RealmQuery;
import io.realm.RealmSchema;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import p081h.p093b.p094a.p095a.C5552i;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p576w.p578o.C13795b;
import p459j.p460a.p576w.p578o.C13799f;
import p459j.p460a.p576w.p578o.C13801h;
import p459j.p460a.p582w0.p583a5.C13891a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15029u;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0012H\u0007J\b\u0010\u0014\u001a\u00020\u0012H\u0007J\b\u0010\u0015\u001a\u00020\u0012H\u0007J\u0010\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007J\b\u0010\u0019\u001a\u00020\u001aH\u0007J\b\u0010\u001b\u001a\u00020\u0006H\u0007J\b\u0010\u001c\u001a\u00020\u0006H\u0007J\b\u0010\u001d\u001a\u00020\u0006H\u0007J\b\u0010\u001e\u001a\u00020\u0006H\u0007J\u0016\u0010\u001f\u001a\u00020\u00102\f\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u0017H\u0007J\b\u0010\"\u001a\u00020\u0012H\u0007J\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020'0\u0017H\u0002J\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00020)0$2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020+0\u0017H\u0002J%\u0010,\u001a\u00020\u00102\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020/0.H\u0087@ø\u0001��¢\u0006\u0002\u00100R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\u0007\u001a\n \b*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R#\u0010\t\u001a\n \b*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u00061"}, m815d2 = {"Lgogolook/callgogolook2/realm/IapPlanRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", CallAction.DONE_TAG, "kotlin.jvm.PlatformType", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "compact", "", "dropIapPlanTable", "", "dropPlanFeatureTable", "dropPlanProductTable", "dropSkuDetailsTable", "getAvailablePlans", "", "Lgogolook/callgogolook2/realm/obj/iap/IapPlanRealmObject;", "getDbFile", "Ljava/io/File;", "getIapPlanCount", "getPlanFeatureCount", "getPlanProductCount", "getSkuDetailsCount", "insertOrUpdatePlans", "plans", "Lgogolook/callgogolook2/iap/model/Plan;", "isSpamHammerIapFeature", "mapFeatureRealmList", "Lio/realm/RealmList;", "Lgogolook/callgogolook2/realm/obj/iap/PlanFeatureRealmObject;", "feats", "Lgogolook/callgogolook2/iap/model/Feature;", "mapProductRealmList", "Lgogolook/callgogolook2/realm/obj/iap/PlanProductRealmObject;", IapPlanRealmObject.PRODUCTS, "Lgogolook/callgogolook2/iap/model/Product;", "updateProductsWithSkuDetails", "skuDetailsMap", "", "Lcom/android/billingclient/api/SkuDetails;", "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.e */
/* loaded from: classes3-dex2jar.jar:j/a/n0/e.class */
public final class C13085e {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29554a;

    /* renamed from: c */
    public static final C13085e f29556c = new C13085e();

    /* renamed from: b */
    public static final AbstractC14974f f29555b = C14975g.m662a(C13086a.f29557a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/e$a.class */
    public static final class C13086a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13086a f29557a = new C13086a();

        /* renamed from: j.a.n0.e$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/e$a$a.class */
        public static final class C13087a implements RealmMigration {

            /* renamed from: a */
            public static final C13087a f29558a = new C13087a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
                RealmObjectSchema realmObjectSchema;
                C15149k.m383a((Object) dynamicRealm, "realm");
                RealmSchema schema = dynamicRealm.getSchema();
                if (j < 2 && (realmObjectSchema = schema.get(C10917x2535fbf0.ClassNameHelper.INTERNAL_CLASS_NAME)) != null) {
                    realmObjectSchema.addField("period", String.class, new FieldAttribute[0]);
                    realmObjectSchema.addField(PlanProductRealmObject.PROMO_TYPE, Integer.TYPE, new FieldAttribute[0]);
                    realmObjectSchema.addField(PlanProductRealmObject.DISCOUNT, Integer.TYPE, new FieldAttribute[0]);
                }
            }
        }

        public C13086a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("IapPlanRealmHelper").schemaVersion(2).modules(new IapPlanRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13087a.f29558a).build();
        }
    }

    /* renamed from: j.a.n0.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/e$b.class */
    public static final class C13088b extends AbstractC15150l implements AbstractC15118l<Realm, List<IapPlanRealmObject>> {

        /* renamed from: a */
        public static final C13088b f29559a = new C13088b();

        public C13088b() {
            super(1);
        }

        /* renamed from: a */
        public final List<IapPlanRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(IapPlanRealmObject.class).findAll());
        }
    }

    /* renamed from: j.a.n0.e$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/e$c.class */
    public static final class C13089c extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ List f29560a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13089c(List list) {
            super(1);
            this.f29560a = list;
        }

        /* renamed from: a */
        public final void m4632a(Realm realm) {
            List<C13799f> subList;
            C15149k.m377b(realm, "realm");
            RealmQuery where = realm.where(IapPlanRealmObject.class);
            boolean z = false;
            where.notEqualTo(IapPlanRealmObject.PLAN_ID, ((C13799f) this.f29560a.get(0)).m3425e());
            List list = this.f29560a;
            if (list.size() > 1) {
                z = true;
            }
            if (!z) {
                list = null;
            }
            if (!(list == null || (subList = list.subList(1, this.f29560a.size())) == null)) {
                for (C13799f fVar : subList) {
                    where.m10371or().notEqualTo(IapPlanRealmObject.PLAN_ID, fVar.m3425e());
                }
            }
            where.findAll().deleteAllFromRealm();
            for (C13799f fVar2 : this.f29560a) {
                realm.insertOrUpdate(new IapPlanRealmObject(fVar2.m3425e(), fVar2.m3426d(), fVar2.m3429a(), fVar2.m3427c(), C13085e.f29556c.m4642a(fVar2.m3428b()), C13085e.f29556c.m4638b(fVar2.m3424f())));
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4632a(realm);
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/realm/IapPlanRealmHelper$updateProductsWithSkuDetails$2", m472f = "IapPlanRealmHelper.kt", m471l = {162}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.e$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/e$d.class */
    public static final class C13090d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f29561a;

        /* renamed from: b */
        public int f29562b;

        /* renamed from: c */
        public final /* synthetic */ Map f29563c;

        /* renamed from: j.a.n0.e$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/e$d$a.class */
        public static final class C13091a extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {
            public C13091a() {
                super(1);
            }

            /* renamed from: a */
            public final void m4631a(Realm realm) {
                C15149k.m377b(realm, "realm");
                Set<Map.Entry> entrySet = C13090d.this.f29563c.entrySet();
                Map.Entry entry = (Map.Entry) C15029u.m524e(entrySet);
                C15029u.m531c(entrySet, 1);
                RealmQuery where = realm.where(PlanProductRealmObject.class);
                where.equalTo("productId", entry != null ? (String) entry.getKey() : null);
                for (Map.Entry entry2 : entrySet) {
                    where.m10371or().equalTo("productId", (String) entry2.getKey());
                }
                List<PlanProductRealmObject> copyFromRealm = realm.copyFromRealm(where.findAll());
                C15149k.m383a((Object) copyFromRealm, "toBeUpdated");
                for (PlanProductRealmObject planProductRealmObject : copyFromRealm) {
                    C5552i iVar = (C5552i) C13090d.this.f29563c.get(planProductRealmObject.getProductId());
                    if (iVar != null) {
                        planProductRealmObject.setSkuDetails(new SkuDetailsRealmObject(iVar));
                    }
                }
                realm.insertOrUpdate(copyFromRealm);
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
                m4631a(realm);
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13090d(Map map, AbstractC15044d dVar) {
            super(2, dVar);
            this.f29563c = map;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13090d dVar2 = new C13090d(this.f29563c, dVar);
            dVar2.f29561a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13090d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f29562b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (obj instanceof C14979k.C14981b) {
                throw ((C14979k.C14981b) obj).f33014a;
            } else if (this.f29563c.isEmpty()) {
                return C14989s.f33022a;
            } else {
                RealmConfiguration a = C13085e.f29556c.m4645a();
                C15149k.m383a((Object) a, "configuration");
                C13193p.m4442a(a, new C13091a());
                return C14989s.f33022a;
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13085e.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29554a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final Object m4641a(Map<String, C5552i> map, AbstractC15044d<? super C14989s> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13090d(map, null), dVar);
    }

    /* renamed from: b */
    public static final void m4640b() {
        Realm.compactRealm(f29556c.m4645a());
    }

    /* renamed from: c */
    public static final List<IapPlanRealmObject> m4637c() {
        RealmConfiguration a = f29556c.m4645a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, C13088b.f29559a);
    }

    /* renamed from: c */
    public static final void m4636c(List<C13799f> list) {
        C15149k.m377b(list, "plans");
        RealmConfiguration a = f29556c.m4645a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13089c(list));
    }

    /* renamed from: d */
    public static final File m4635d() {
        RealmConfiguration a = f29556c.m4645a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: e */
    public static final boolean m4634e() {
        boolean z;
        IapPlanRealmObject iapPlanRealmObject;
        RealmList<PlanFeatureRealmObject> features;
        List<IapPlanRealmObject> c = m4637c();
        if (c != null) {
            if (!(!c.isEmpty())) {
                c = null;
            }
            if (!(c == null || (iapPlanRealmObject = c.get(0)) == null || (features = iapPlanRealmObject.getFeatures()) == null)) {
                Iterator<PlanFeatureRealmObject> it = features.iterator();
                do {
                    z = false;
                    if (!it.hasNext()) {
                        break;
                    }
                } while (!C15149k.m384a((Object) it.next().getName(), (Object) "spamhammer"));
                z = true;
                return z;
            }
        }
        z = false;
        if (C13891a.m3148n()) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public final RealmConfiguration m4645a() {
        AbstractC14974f fVar = f29555b;
        AbstractC14906i iVar = f29554a[0];
        return (RealmConfiguration) fVar.getValue();
    }

    /* renamed from: a */
    public final RealmList<PlanFeatureRealmObject> m4642a(List<C13795b> list) {
        RealmList<PlanFeatureRealmObject> realmList = new RealmList<>();
        for (C13795b bVar : list) {
            realmList.add(new PlanFeatureRealmObject(bVar));
        }
        return realmList;
    }

    /* renamed from: b */
    public final RealmList<PlanProductRealmObject> m4638b(List<C13801h> list) {
        RealmList<PlanProductRealmObject> realmList = new RealmList<>();
        for (C13801h hVar : list) {
            realmList.add(new PlanProductRealmObject(hVar));
        }
        return realmList;
    }
}
