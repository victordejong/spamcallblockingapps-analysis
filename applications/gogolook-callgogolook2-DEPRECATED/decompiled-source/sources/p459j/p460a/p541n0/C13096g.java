package p459j.p460a.p541n0;

import gogolook.callgogolook2.realm.module.IapSubscriptionRealmModule;
import gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import java.io.File;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p576w.p578o.C13804j;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0007J\b\u0010\u0010\u001a\u00020\u0011H\u0007J\b\u0010\u0012\u001a\u00020\u0013H\u0007J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\b\u0010\u0016\u001a\u00020\u0006H\u0007J\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0015H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0018J\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0086@ø\u0001��¢\u0006\u0002\u0010\u001cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R#\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, m815d2 = {"Lgogolook/callgogolook2/realm/IapSubscriptionRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", "configuration", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "compact", "", "dropTable", "", "getDbFile", "Ljava/io/File;", "getSubscriptionStatus", "Lgogolook/callgogolook2/realm/obj/iap/SubscriptionStatusRealmObject;", "getSubscriptionStatusCount", "getSubscriptionStatusWithDispatchers", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertOrUpdateStatus", "status", "Lgogolook/callgogolook2/iap/model/SubscriptionStatus;", "(Lgogolook/callgogolook2/iap/model/SubscriptionStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.g */
/* loaded from: classes3-dex2jar.jar:j/a/n0/g.class */
public final class C13096g {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29571a;

    /* renamed from: c */
    public static final C13096g f29573c = new C13096g();

    /* renamed from: b */
    public static final AbstractC14974f f29572b = C14975g.m662a(C13097a.f29574a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/g$a.class */
    public static final class C13097a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13097a f29574a = new C13097a();

        /* renamed from: j.a.n0.g$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/g$a$a.class */
        public static final class C13098a implements RealmMigration {

            /* renamed from: a */
            public static final C13098a f29575a = new C13098a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
            }
        }

        public C13097a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("IapSubscriptionRealmHelper").schemaVersion(1L).modules(new IapSubscriptionRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13098a.f29575a).build();
        }
    }

    /* renamed from: j.a.n0.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/g$b.class */
    public static final class C13099b extends AbstractC15150l implements AbstractC15118l<Realm, SubscriptionStatusRealmObject> {

        /* renamed from: a */
        public static final C13099b f29576a = new C13099b();

        public C13099b() {
            super(1);
        }

        /* renamed from: a */
        public final SubscriptionStatusRealmObject invoke(Realm realm) {
            C15149k.m377b(realm, "realm");
            SubscriptionStatusRealmObject subscriptionStatusRealmObject = (SubscriptionStatusRealmObject) realm.where(SubscriptionStatusRealmObject.class).findFirst();
            return subscriptionStatusRealmObject != null ? (SubscriptionStatusRealmObject) realm.copyFromRealm((Realm) subscriptionStatusRealmObject) : null;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/realm/IapSubscriptionRealmHelper$getSubscriptionStatusWithDispatchers$2", m472f = "IapSubscriptionRealmHelper.kt", m471l = {68}, m470m = "invokeSuspend")
    /* renamed from: j.a.n0.g$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/g$c.class */
    public static final class C13100c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super SubscriptionStatusRealmObject>, Object> {

        /* renamed from: a */
        public CoroutineScope f29577a;

        /* renamed from: b */
        public int f29578b;

        public C13100c(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13100c cVar = new C13100c(dVar);
            cVar.f29577a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super SubscriptionStatusRealmObject> dVar) {
            return ((C13100c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f29578b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                return C13096g.m4620d();
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/realm/IapSubscriptionRealmHelper$insertOrUpdateStatus$2", m472f = "IapSubscriptionRealmHelper.kt", m471l = {72}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.g$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/g$d.class */
    public static final class C13101d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f29579a;

        /* renamed from: b */
        public int f29580b;

        /* renamed from: c */
        public final /* synthetic */ C13804j f29581c;

        /* renamed from: j.a.n0.g$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/g$d$a.class */
        public static final class C13102a extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {
            public C13102a() {
                super(1);
            }

            /* renamed from: a */
            public final void m4618a(Realm realm) {
                C15149k.m377b(realm, "realm");
                realm.where(SubscriptionStatusRealmObject.class).findAll().deleteAllFromRealm();
                realm.insert(new SubscriptionStatusRealmObject(C13101d.this.f29581c));
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
                m4618a(realm);
                return C14989s.f33022a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13101d(C13804j jVar, AbstractC15044d dVar) {
            super(2, dVar);
            this.f29581c = jVar;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13101d dVar2 = new C13101d(this.f29581c, dVar);
            dVar2.f29579a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13101d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f29580b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                RealmConfiguration a = C13096g.f29573c.m4626a();
                C15149k.m383a((Object) a, "configuration");
                return C13193p.m4442a(a, new C13102a());
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13096g.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29571a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: b */
    public static final void m4622b() {
        Realm.compactRealm(f29573c.m4626a());
    }

    /* renamed from: c */
    public static final File m4621c() {
        RealmConfiguration a = f29573c.m4626a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: d */
    public static final SubscriptionStatusRealmObject m4620d() {
        RealmConfiguration a = f29573c.m4626a();
        C15149k.m383a((Object) a, "configuration");
        return (SubscriptionStatusRealmObject) C13193p.m4435b(a, C13099b.f29576a);
    }

    /* renamed from: a */
    public final RealmConfiguration m4626a() {
        AbstractC14974f fVar = f29572b;
        AbstractC14906i iVar = f29571a[0];
        return (RealmConfiguration) fVar.getValue();
    }

    /* renamed from: a */
    public final Object m4624a(C13804j jVar, AbstractC15044d<? super C14989s> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13101d(jVar, null), dVar);
    }

    /* renamed from: a */
    public final Object m4623a(AbstractC15044d<? super SubscriptionStatusRealmObject> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13100c(null), dVar);
    }
}
