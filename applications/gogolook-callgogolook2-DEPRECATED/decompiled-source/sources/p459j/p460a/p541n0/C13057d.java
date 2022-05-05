package p459j.p460a.p541n0;

import androidx.core.app.NotificationCompat;
import androidx.media2.exoplayer.external.extractor.p007ts.AdtsReader;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.realm.module.FavoriteRealmModule;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmList;
import io.realm.RealmMigration;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import org.json.JSONArray;
import p081h.p160h.p179e.p180a.p187n.AbstractC6391b;
import p081h.p160h.p179e.p180a.p187n.C6384a;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14186u0;
import p459j.p460a.p582w0.C14193v0;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p632u.C15022n;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0007J\b\u0010\u001a\u001a\u00020\u0019H\u0007J7\u0010\u001b\u001a\u00020\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00010\u001d2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u001dH\u0007¢\u0006\u0002\u0010!J7\u0010\"\u001a\u00020\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00010\u001d2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u001dH\u0007¢\u0006\u0002\u0010!J\b\u0010#\u001a\u00020$H\u0007J\b\u0010%\u001a\u00020$H\u0007J\b\u0010&\u001a\u00020'H\u0007J\b\u0010(\u001a\u00020\u0006H\u0007J\u0018\u0010)\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*2\u0006\u0010,\u001a\u00020\u0006H\u0007J \u0010-\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*2\u0006\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u0004H\u0007J\b\u00100\u001a\u00020\u0006H\u0007J \u00101\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010*2\u0006\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020\u0016H\u0007J0\u00105\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010*2\u0006\u00106\u001a\u00020\u00042\u0006\u00107\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020$H\u0007J\b\u0010:\u001a\u00020$H\u0007J\u0012\u0010;\u001a\u00020\u00192\b\u0010<\u001a\u0004\u0018\u00010=H\u0003J\u0012\u0010>\u001a\u00020\u00192\b\u0010?\u001a\u0004\u0018\u00010=H\u0003J\u001c\u0010@\u001a\u00020\u00192\b\u0010?\u001a\u0004\u0018\u00010=2\b\u0010<\u001a\u0004\u0018\u00010=H\u0007J\u0010\u0010A\u001a\u00020\u00192\u0006\u0010B\u001a\u00020CH\u0002J\u0010\u0010D\u001a\u00020$2\u0006\u0010E\u001a\u00020+H\u0007J\u0016\u0010D\u001a\u00020\u00192\f\u0010F\u001a\b\u0012\u0004\u0012\u00020+0*H\u0007J\u0010\u0010G\u001a\u00020$2\u0006\u0010H\u001a\u000202H\u0007J\u0016\u0010G\u001a\u00020\u00192\f\u0010I\u001a\b\u0012\u0004\u0012\u0002020*H\u0007J$\u0010J\u001a\u00020$2\b\u0010K\u001a\u0004\u0018\u00010\u00042\b\u0010L\u001a\u0004\u0018\u00010\u00042\u0006\u0010H\u001a\u000202H\u0007J\u0010\u0010M\u001a\u00020$2\u0006\u0010N\u001a\u00020\u0004H\u0007J\u0010\u0010O\u001a\u00020$2\u0006\u0010P\u001a\u00020\u0004H\u0007J\u0010\u0010Q\u001a\u00020$2\u0006\u0010P\u001a\u00020\u0004H\u0007J\u0010\u0010R\u001a\u00020$2\u0006\u0010N\u001a\u00020\u0004H\u0007JY\u0010S\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*2\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001d2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001d2\b\u0010T\u001a\u0004\u0018\u00010\u00042\b\u0010U\u001a\u0004\u0018\u00010VH\u0007¢\u0006\u0002\u0010WJY\u0010X\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010*2\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001d2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001d2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001d2\b\u0010T\u001a\u0004\u0018\u00010\u00042\b\u0010U\u001a\u0004\u0018\u00010VH\u0007¢\u0006\u0002\u0010WR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R#\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u000e¢\u0006\u0002\n��¨\u0006Y"}, m815d2 = {"Lgogolook/callgogolook2/realm/FavoriteRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", "GO_INSERT", "GO_UPDATE", "KEY", "MIGRATE_BATCH_SIZE", "NO_CHANGE", CallAction.DONE_TAG, "VALUE", "configuration", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "insertFavoriteIdOffsetMigrating", "", "insertGroupIdOffsetMigrating", "autoCategoryUnCategoryFavorites", "", "compact", "deleteFavoriteGroup", "fieldNames", "", "fields", "query", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;)I", "deleteFavoriteList", "dropFavoriteGroupTable", "", "dropFavoriteListTable", "getDbFile", "Ljava/io/File;", "getFavoriteGroupMaxId", "getFavoriteGroups", "", "Lgogolook/callgogolook2/realm/obj/favorite/FavoriteGroupRealmObject;", "sortType", "getFavoriteGroupsAb1", "lifeName", "restaurantName", "getFavoriteListMaxId", "getFavoriteListNeedSyncToIndex", "Lgogolook/callgogolook2/realm/obj/favorite/FavoriteListRealmObject;", "startSyncTime", "lastSyncId", "getFavorites", "category", "categorySortType", "favoriteListSortType", "isAll", "groupFavorites", "handleFavoriteGroupSyncResultFromServer", "favoriteGroupDataArray", "Lorg/json/JSONArray;", "handleFavoriteListSyncResultFromServer", "favoriteListDataArray", "handleFavoriteSyncResultFromServer", "insertDefaultGroup", "realm", "Lio/realm/Realm;", "insertOrUpdateFavoriteGroupData", "favoriteGroupRealmObject", "favoriteGroupRealmObjects", "insertOrUpdateFavoriteListData", "favoriteListRealmObject", FavoriteGroupRealmObject.FAVORITELISTREALMOBJECTS, "insertOrUpdateGroupFavoriteList", "oldGroupId", "newGroupId", "isFavoriteGroupPinned", "groupName", "isFavoriteNumberExist", "e164", "isFavoriteNumberExistAndActive", "isGroupExist", "queryFavoriteGroup", "sortField", "sort", "Lio/realm/Sort;", "([Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;Ljava/lang/String;Lio/realm/Sort;)Ljava/util/List;", "queryFavoriteListData", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.d */
/* loaded from: classes3-dex2jar.jar:j/a/n0/d.class */
public final class C13057d {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29510a;

    /* renamed from: e */
    public static final C13057d f29514e = new C13057d();

    /* renamed from: b */
    public static long f29511b = -1;

    /* renamed from: c */
    public static long f29512c = -1;

    /* renamed from: d */
    public static final AbstractC14974f f29513d = C14975g.m662a(C13063d.f29520a);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012F\u0010\u0002\u001aB\u0012\u001a\b��\u0012\u0016\u0012\u0004\u0012\u00020\u0005 \u0006*\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00040\u0004 \u0006* \u0012\u001a\b��\u0012\u0016\u0012\u0004\u0012\u00020\u0005 \u0006*\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0007"}, m815d2 = {"<anonymous>", "", "it", "Lrx/SingleSubscriber;", "", "Lgogolook/callgogolook2/realm/obj/favorite/FavoriteListRealmObject;", "kotlin.jvm.PlatformType", NotificationCompat.CATEGORY_CALL}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$a.class */
    public static final class C13058a<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public static final C13058a f29515a = new C13058a();

        /* renamed from: j.a.n0.d$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/d$a$a.class */
        public static final class C13059a extends AbstractC6391b {

            /* renamed from: a */
            public final /* synthetic */ FavoriteListRealmObject f29516a;

            public C13059a(FavoriteListRealmObject favoriteListRealmObject) {
                this.f29516a = favoriteListRealmObject;
            }

            @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
            /* renamed from: a */
            public void mo4669a(int i) {
                C14080m2.m2612a((Throwable) new Exception("Unexpected status code: " + i));
            }

            @Override // p081h.p160h.p179e.p180a.p187n.AbstractC6391b
            /* renamed from: a */
            public void mo4668a(int i, NumInfo numInfo) {
                String str = null;
                String str2 = numInfo != null ? numInfo.bizcate : null;
                if (str2 != null) {
                    str = C14099o3.m2510n().m2534b(str2);
                }
                int a = str != null ? C14099o3.m2510n().m2543a(str) : 0;
                this.f29516a.set_auto_cate(a > 0 ? Integer.valueOf(a) : 0);
            }
        }

        /* renamed from: j.a.n0.d$a$b */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/d$a$b.class */
        public static final class C13060b extends AbstractC15150l implements AbstractC15118l<Realm, List<FavoriteListRealmObject>> {

            /* renamed from: a */
            public static final C13060b f29517a = new C13060b();

            public C13060b() {
                super(1);
            }

            /* renamed from: a */
            public final List<FavoriteListRealmObject> invoke(Realm realm) {
                C15149k.m377b(realm, "realm");
                return realm.copyFromRealm(realm.where(FavoriteListRealmObject.class).equalTo("_parentid", "0").notEqualTo("_status", (Integer) 2).findAll());
            }
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<? extends FavoriteListRealmObject>> singleSubscriber) {
            RealmConfiguration a = C13057d.f29514e.m4700a();
            C15149k.m383a((Object) a, "configuration");
            List<FavoriteListRealmObject> list = (List) C13193p.m4435b(a, C13060b.f29517a);
            if (list == null || list.isEmpty()) {
                singleSubscriber.onError(new Throwable("Realm querry result null"));
                return;
            }
            for (FavoriteListRealmObject favoriteListRealmObject : list) {
                favoriteListRealmObject.set_auto_cate(-1);
                String str = favoriteListRealmObject.get_e164();
                String n = C14017g4.m2810n();
                C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
                C6384a.m22869a(str, n, new C13059a(favoriteListRealmObject));
            }
            singleSubscriber.onSuccess(list);
        }
    }

    /* renamed from: j.a.n0.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$b.class */
    public static final class C13061b<T> implements Action1<List<? extends FavoriteListRealmObject>> {

        /* renamed from: a */
        public static final C13061b f29518a = new C13061b();

        /* renamed from: a */
        public final void call(List<? extends FavoriteListRealmObject> list) {
            C15149k.m383a((Object) list, "it");
            C13057d.m4681b(list);
        }
    }

    /* renamed from: j.a.n0.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$c.class */
    public static final class C13062c<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C13062c f29519a = new C13062c();

        /* renamed from: a */
        public final void call(Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m815d2 = {"<anonymous>", "Lio/realm/RealmConfiguration;", "kotlin.jvm.PlatformType", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.d$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$d.class */
    public static final class C13063d extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13063d f29520a = new C13063d();

        /* renamed from: j.a.n0.d$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/d$d$a.class */
        public static final class C13064a implements RealmMigration {

            /* renamed from: a */
            public static final C13064a f29521a = new C13064a();

            @Override // io.realm.RealmMigration
            public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
                long j3 = 2;
                if (j < j3 && j2 == j3) {
                    try {
                        RealmResults<DynamicRealmObject> findAll = dynamicRealm.where(FavoriteGroupRealmObject.class.getSimpleName()).equalTo("_name", "0").findAll();
                        if (findAll.size() > 1) {
                            Object obj = findAll.get(0);
                            if (obj != null) {
                                ((DynamicRealmObject) obj).deleteFromRealm();
                            } else {
                                C15149k.m378b();
                                throw null;
                            }
                        }
                    } catch (Exception e) {
                        C13973d4.m2952a(e);
                    }
                }
            }
        }

        /* renamed from: j.a.n0.d$d$b */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/d$d$b.class */
        public static final class C13065b implements Realm.Transaction {

            /* renamed from: a */
            public static final C13065b f29522a = new C13065b();

            @Override // io.realm.Realm.Transaction
            public final void execute(Realm realm) {
                C13057d dVar = C13057d.f29514e;
                C15149k.m383a((Object) realm, "it");
                dVar.m4695a(realm);
            }
        }

        public C13063d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("Favorite").schemaVersion(2).modules(new FavoriteRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).migration(C13064a.f29521a).initialData(C13065b.f29522a).build();
        }
    }

    /* renamed from: j.a.n0.d$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$e.class */
    public static final class C13066e extends AbstractC15150l implements AbstractC15118l<Realm, Integer> {

        /* renamed from: a */
        public static final C13066e f29523a = new C13066e();

        public C13066e() {
            super(1);
        }

        /* renamed from: a */
        public final Integer invoke(Realm realm) {
            Number max;
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(FavoriteGroupRealmObject.class);
            return (where == null || (max = where.max("id")) == null) ? null : Integer.valueOf(max.intValue());
        }
    }

    /* renamed from: j.a.n0.d$f */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$f.class */
    public static final class C13067f extends AbstractC15150l implements AbstractC15118l<Realm, List<FavoriteGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ int f29524a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13067f(int i) {
            super(1);
            this.f29524a = i;
        }

        /* renamed from: a */
        public final List<FavoriteGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmResults sort = realm.where(FavoriteGroupRealmObject.class).notEqualTo("_status", (Integer) 2).isNotNull("_name").findAll().sort(FavoriteGroupRealmObject.PINNED, Sort.DESCENDING);
            int i = this.f29524a;
            if (i == 0) {
                sort = sort.sort("_updatetime", Sort.ASCENDING);
            } else if (i == 1) {
                sort = sort.sort("_updatetime", Sort.DESCENDING);
            } else if (i == 2) {
                sort = sort.sort("_name", Sort.ASCENDING);
            } else if (i == 3) {
                sort = sort.sort("_name", Sort.DESCENDING);
            }
            return realm.copyFromRealm(sort);
        }
    }

    /* renamed from: j.a.n0.d$g */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$g.class */
    public static final class C13068g extends AbstractC15150l implements AbstractC15118l<Realm, List<FavoriteGroupRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String f29525a;

        /* renamed from: b */
        public final /* synthetic */ String f29526b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13068g(String str, String str2) {
            super(1);
            this.f29525a = str;
            this.f29526b = str2;
        }

        /* renamed from: a */
        public final List<FavoriteGroupRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(FavoriteGroupRealmObject.class).beginGroup().notEqualTo("_status", (Integer) 2).endGroup().beginGroup().notEqualTo("_name", this.f29525a).notEqualTo("_name", this.f29526b).m10371or().isNotEmpty(FavoriteGroupRealmObject.FAVORITELISTREALMOBJECTS).endGroup().distinct("_name").findAll());
        }
    }

    /* renamed from: j.a.n0.d$h */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$h.class */
    public static final class C13069h extends AbstractC15150l implements AbstractC15118l<Realm, Integer> {

        /* renamed from: a */
        public static final C13069h f29527a = new C13069h();

        public C13069h() {
            super(1);
        }

        /* renamed from: a */
        public final Integer invoke(Realm realm) {
            Number max;
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(FavoriteListRealmObject.class);
            return (where == null || (max = where.max("id")) == null) ? null : Integer.valueOf(max.intValue());
        }
    }

    /* renamed from: j.a.n0.d$i */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$i.class */
    public static final class C13070i extends AbstractC15150l implements AbstractC15118l<Realm, List<FavoriteListRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ long f29528a;

        /* renamed from: b */
        public final /* synthetic */ long f29529b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13070i(long j, long j2) {
            super(1);
            this.f29528a = j;
            this.f29529b = j2;
        }

        /* renamed from: a */
        public final List<FavoriteListRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.copyFromRealm(realm.where(FavoriteListRealmObject.class).greaterThan("id", this.f29528a).m10371or().greaterThan("_updatetime", this.f29529b).findAll());
        }
    }

    /* renamed from: j.a.n0.d$j */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$j.class */
    public static final class C13071j extends AbstractC15150l implements AbstractC15118l<Realm, List<? extends RealmList<FavoriteListRealmObject>>> {

        /* renamed from: a */
        public final /* synthetic */ boolean f29530a;

        /* renamed from: b */
        public final /* synthetic */ String f29531b;

        /* renamed from: c */
        public final /* synthetic */ int f29532c;

        /* renamed from: d */
        public final /* synthetic */ int f29533d;

        /* renamed from: e */
        public final /* synthetic */ ArrayList f29534e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13071j(boolean z, String str, int i, int i2, ArrayList arrayList) {
            super(1);
            this.f29530a = z;
            this.f29531b = str;
            this.f29532c = i;
            this.f29533d = i2;
            this.f29534e = arrayList;
        }

        /* renamed from: a */
        public final List<RealmList<FavoriteListRealmObject>> invoke(Realm realm) {
            RealmList<FavoriteListRealmObject> realmList;
            C15149k.m377b(realm, "it");
            RealmResults sort = this.f29530a ? realm.where(FavoriteGroupRealmObject.class).notEqualTo("_status", (Integer) 2).findAll().sort(FavoriteGroupRealmObject.PINNED, Sort.DESCENDING) : realm.where(FavoriteGroupRealmObject.class).equalTo("_name", this.f29531b).notEqualTo("_status", (Integer) 2).findAll().sort(FavoriteGroupRealmObject.PINNED, Sort.DESCENDING);
            int i = this.f29532c;
            if (i == 0) {
                sort = sort.sort("_updatetime", Sort.ASCENDING);
            } else if (i == 1) {
                sort = sort.sort("_updatetime", Sort.DESCENDING);
            } else if (i == 2) {
                sort = sort.sort("_name", Sort.ASCENDING);
            } else if (i == 3) {
                sort = sort.sort("_name", Sort.DESCENDING);
            }
            ArrayList arrayList = null;
            if (sort != null) {
                ArrayList arrayList2 = new ArrayList(C15022n.m555a(sort, 10));
                int i2 = 0;
                for (Object obj : sort) {
                    if (i2 >= 0) {
                        RealmList<FavoriteListRealmObject> favoriteListRealmObjects = ((FavoriteGroupRealmObject) obj).getFavoriteListRealmObjects();
                        if (favoriteListRealmObjects != null) {
                            if (!(!favoriteListRealmObjects.isEmpty())) {
                                favoriteListRealmObjects = null;
                            }
                            if (favoriteListRealmObjects != null) {
                                RealmResults<FavoriteListRealmObject> findAll = favoriteListRealmObjects.where().notEqualTo("_status", (Integer) 2).findAll();
                                realmList = favoriteListRealmObjects;
                                if (findAll != null) {
                                    int i3 = this.f29533d;
                                    if (i3 == 0) {
                                        this.f29534e.addAll(realm.copyFromRealm(findAll.sort("_createtime", Sort.ASCENDING)));
                                        realmList = favoriteListRealmObjects;
                                    } else if (i3 == 1) {
                                        this.f29534e.addAll(realm.copyFromRealm(findAll.sort("_createtime", Sort.DESCENDING)));
                                        realmList = favoriteListRealmObjects;
                                    } else if (i3 == 2) {
                                        this.f29534e.addAll(realm.copyFromRealm(findAll.sort("_e164", Sort.ASCENDING)));
                                        realmList = favoriteListRealmObjects;
                                    } else if (i3 != 3) {
                                        realmList = favoriteListRealmObjects;
                                    } else {
                                        this.f29534e.addAll(realm.copyFromRealm(findAll.sort("_e164", Sort.DESCENDING)));
                                        realmList = favoriteListRealmObjects;
                                    }
                                }
                                arrayList2.add(realmList);
                                i2++;
                            }
                        }
                        realmList = null;
                        arrayList2.add(realmList);
                        i2++;
                    } else {
                        C15021m.m558c();
                        throw null;
                    }
                }
                arrayList = arrayList2;
            }
            return arrayList;
        }
    }

    /* renamed from: j.a.n0.d$k */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$k.class */
    public static final class C13072k extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public static final C13072k f29535a = new C13072k();

        public C13072k() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public final boolean m4658a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                List<FavoriteGroupRealmObject> copyFromRealm = realm.copyFromRealm(realm.where(FavoriteGroupRealmObject.class).findAll());
                RealmResults findAll = realm.where(FavoriteListRealmObject.class).findAll();
                if (copyFromRealm != null) {
                    ArrayList arrayList = new ArrayList(C15022n.m555a(copyFromRealm, 10));
                    for (FavoriteGroupRealmObject favoriteGroupRealmObject : copyFromRealm) {
                        List<FavoriteListRealmObject> copyFromRealm2 = realm.copyFromRealm(findAll.where().equalTo("_parentid", favoriteGroupRealmObject.get_name()).findAll());
                        RealmList favoriteListRealmObjects = favoriteGroupRealmObject.getFavoriteListRealmObjects();
                        if (favoriteListRealmObjects == null) {
                            favoriteListRealmObjects = new RealmList();
                        }
                        favoriteListRealmObjects.clear();
                        C15149k.m383a((Object) copyFromRealm2, "favorites");
                        ArrayList arrayList2 = new ArrayList(C15022n.m555a(copyFromRealm2, 10));
                        for (FavoriteListRealmObject favoriteListRealmObject : copyFromRealm2) {
                            if (!favoriteListRealmObjects.contains(favoriteListRealmObject)) {
                                favoriteListRealmObjects.add(realm.copyToRealmOrUpdate((Realm) favoriteListRealmObject, new ImportFlag[0]));
                            }
                            arrayList2.add(C14989s.f33022a);
                        }
                        favoriteGroupRealmObject.setFavoriteListRealmObjects(favoriteListRealmObjects);
                        arrayList.add(C14989s.f33022a);
                    }
                }
                realm.insertOrUpdate(copyFromRealm);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4658a(realm));
        }
    }

    /* renamed from: j.a.n0.d$l */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$l.class */
    public static final class C13073l extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ JSONArray f29536a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13073l(JSONArray jSONArray) {
            super(1);
            this.f29536a = jSONArray;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        /* JADX WARN: Type inference failed for: r0v60, types: [gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject] */
        /* JADX WARN: Type inference failed for: r37v1, types: [long] */
        /* JADX WARN: Type inference failed for: r37v2 */
        /* JADX WARN: Type inference failed for: r37v3 */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4657a(io.realm.Realm r18) {
            /*
                Method dump skipped, instructions count: 610
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13057d.C13073l.m4657a(io.realm.Realm):void");
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4657a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.d$m */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$m.class */
    public static final class C13074m extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ JSONArray f29537a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13074m(JSONArray jSONArray) {
            super(1);
            this.f29537a = jSONArray;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject] */
        /* JADX WARN: Type inference failed for: r37v1, types: [long] */
        /* JADX WARN: Type inference failed for: r37v8 */
        /* JADX WARN: Type inference failed for: r37v9 */
        /* JADX WARN: Unknown variable types count: 3 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m4656a(io.realm.Realm r19) {
            /*
                Method dump skipped, instructions count: 669
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13057d.C13074m.m4656a(io.realm.Realm):void");
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4656a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.d$n */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$n.class */
    public static final class C13075n extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ List f29538a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13075n(List list) {
            super(1);
            this.f29538a = list;
        }

        /* renamed from: a */
        public final void m4655a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(FavoriteGroupRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            long longValue = (max != null ? max.longValue() : 0L) + 1;
            C13057d dVar = C13057d.f29514e;
            if (longValue <= C13057d.f29511b) {
                C13057d dVar2 = C13057d.f29514e;
                longValue = C13057d.f29511b + 1;
            }
            for (FavoriteGroupRealmObject favoriteGroupRealmObject : this.f29538a) {
                if (favoriteGroupRealmObject.getId() < 0) {
                    favoriteGroupRealmObject.setId(longValue);
                    longValue++;
                }
            }
            realm.insertOrUpdate(this.f29538a);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4655a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.d$o */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$o.class */
    public static final class C13076o extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ FavoriteGroupRealmObject f29539a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13076o(FavoriteGroupRealmObject favoriteGroupRealmObject) {
            super(1);
            this.f29539a = favoriteGroupRealmObject;
        }

        /* renamed from: a */
        public final boolean m4654a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                long j = 0;
                if (this.f29539a.getId() < 0) {
                    RealmQuery where = realm.where(FavoriteGroupRealmObject.class);
                    Number max = where != null ? where.max("id") : null;
                    if (max != null) {
                        j = max.longValue();
                    }
                    long j2 = j + 1;
                    FavoriteGroupRealmObject favoriteGroupRealmObject = this.f29539a;
                    C13057d dVar = C13057d.f29514e;
                    if (j2 <= C13057d.f29511b) {
                        C13057d dVar2 = C13057d.f29514e;
                        j2 = C13057d.f29511b + 1;
                    }
                    favoriteGroupRealmObject.setId(j2);
                }
                realm.insertOrUpdate(this.f29539a);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4654a(realm));
        }
    }

    /* renamed from: j.a.n0.d$p */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$p.class */
    public static final class C13077p extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ List f29540a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13077p(List list) {
            super(1);
            this.f29540a = list;
        }

        /* renamed from: a */
        public final void m4653a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(FavoriteListRealmObject.class);
            Number max = where != null ? where.max("id") : null;
            long longValue = (max != null ? max.longValue() : 0L) + 1;
            C13057d dVar = C13057d.f29514e;
            if (longValue <= C13057d.f29512c) {
                C13057d dVar2 = C13057d.f29514e;
                longValue = C13057d.f29512c + 1;
            }
            for (FavoriteListRealmObject favoriteListRealmObject : this.f29540a) {
                if (favoriteListRealmObject.getId() < 0) {
                    favoriteListRealmObject.setId(longValue);
                    longValue++;
                }
            }
            realm.insertOrUpdate(this.f29540a);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4653a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.d$q */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$q.class */
    public static final class C13078q extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ FavoriteListRealmObject f29541a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13078q(FavoriteListRealmObject favoriteListRealmObject) {
            super(1);
            this.f29541a = favoriteListRealmObject;
        }

        /* renamed from: a */
        public final boolean m4652a(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                long j = 0;
                if (this.f29541a.getId() < 0) {
                    RealmQuery where = realm.where(FavoriteListRealmObject.class);
                    Number max = where != null ? where.max("id") : null;
                    if (max != null) {
                        j = max.longValue();
                    }
                    long j2 = j + 1;
                    FavoriteListRealmObject favoriteListRealmObject = this.f29541a;
                    C13057d dVar = C13057d.f29514e;
                    if (j2 <= C13057d.f29512c) {
                        C13057d dVar2 = C13057d.f29514e;
                        j2 = C13057d.f29512c + 1;
                    }
                    favoriteListRealmObject.setId(j2);
                }
                realm.insertOrUpdate(this.f29541a);
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4652a(realm));
        }
    }

    /* renamed from: j.a.n0.d$r */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$r.class */
    public static final class C13079r extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ String f29542a;

        /* renamed from: b */
        public final /* synthetic */ FavoriteListRealmObject f29543b;

        /* renamed from: c */
        public final /* synthetic */ String f29544c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13079r(String str, FavoriteListRealmObject favoriteListRealmObject, String str2) {
            super(1);
            this.f29542a = str;
            this.f29543b = favoriteListRealmObject;
            this.f29544c = str2;
        }

        /* renamed from: a */
        public final boolean m4651a(Realm realm) {
            RealmResults<FavoriteGroupRealmObject> findAll;
            RealmResults<FavoriteGroupRealmObject> findAll2;
            C15149k.m377b(realm, "realm");
            try {
                String str = this.f29542a;
                if (!(str == null || (findAll2 = realm.where(FavoriteGroupRealmObject.class).equalTo("_name", str).findAll()) == null)) {
                    ArrayList arrayList = new ArrayList(C15022n.m555a(findAll2, 10));
                    for (FavoriteGroupRealmObject favoriteGroupRealmObject : findAll2) {
                        RealmList<FavoriteListRealmObject> favoriteListRealmObjects = favoriteGroupRealmObject.getFavoriteListRealmObjects();
                        arrayList.add(favoriteListRealmObjects != null ? Boolean.valueOf(favoriteListRealmObjects.remove(this.f29543b)) : null);
                    }
                }
                String str2 = this.f29544c;
                if (str2 == null || (findAll = realm.where(FavoriteGroupRealmObject.class).equalTo("_name", str2).findAll()) == null) {
                    return true;
                }
                ArrayList arrayList2 = new ArrayList(C15022n.m555a(findAll, 10));
                for (FavoriteGroupRealmObject favoriteGroupRealmObject2 : findAll) {
                    RealmList<FavoriteListRealmObject> favoriteListRealmObjects2 = favoriteGroupRealmObject2.getFavoriteListRealmObjects();
                    if (favoriteListRealmObjects2 == null) {
                        favoriteListRealmObjects2 = new RealmList<>();
                    }
                    if (!favoriteListRealmObjects2.contains(this.f29543b)) {
                        favoriteListRealmObjects2.add(this.f29543b);
                    }
                    favoriteGroupRealmObject2.setFavoriteListRealmObjects(favoriteListRealmObjects2);
                    arrayList2.add(C14989s.f33022a);
                }
                return true;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return false;
            }
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4651a(realm));
        }
    }

    /* renamed from: j.a.n0.d$s */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$s.class */
    public static final class C13080s extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ String f29545a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13080s(String str) {
            super(1);
            this.f29545a = str;
        }

        /* renamed from: a */
        public final Boolean invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmResults findAll = realm.where(FavoriteGroupRealmObject.class).equalTo("_name", this.f29545a).notEqualTo("_status", (Integer) 2).equalTo(FavoriteGroupRealmObject.PINNED, (Integer) 1).findAll();
            return findAll != null ? Boolean.valueOf(!findAll.isEmpty()) : null;
        }
    }

    /* renamed from: j.a.n0.d$t */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$t.class */
    public static final class C13081t extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ String f29546a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13081t(String str) {
            super(1);
            this.f29546a = str;
        }

        /* renamed from: a */
        public final Boolean invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmResults findAll = realm.where(FavoriteListRealmObject.class).equalTo("_e164", this.f29546a).findAll();
            return findAll != null ? Boolean.valueOf(!findAll.isEmpty()) : null;
        }
    }

    /* renamed from: j.a.n0.d$u */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$u.class */
    public static final class C13082u extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ String f29547a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13082u(String str) {
            super(1);
            this.f29547a = str;
        }

        /* renamed from: a */
        public final Boolean invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmResults findAll = realm.where(FavoriteListRealmObject.class).equalTo("_e164", this.f29547a).notEqualTo("_status", (Integer) 2).findAll();
            return findAll != null ? Boolean.valueOf(!findAll.isEmpty()) : null;
        }
    }

    /* renamed from: j.a.n0.d$v */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$v.class */
    public static final class C13083v extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ String f29548a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13083v(String str) {
            super(1);
            this.f29548a = str;
        }

        /* renamed from: a */
        public final Boolean invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmResults findAll = realm.where(FavoriteGroupRealmObject.class).notEqualTo("_status", (Integer) 2).equalTo("_name", this.f29548a).findAll();
            return findAll != null ? Boolean.valueOf(!findAll.isEmpty()) : null;
        }
    }

    /* renamed from: j.a.n0.d$w */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/d$w.class */
    public static final class C13084w extends AbstractC15150l implements AbstractC15118l<Realm, List<FavoriteListRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String[] f29549a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f29550b;

        /* renamed from: c */
        public final /* synthetic */ C13193p.EnumC13194a[] f29551c;

        /* renamed from: d */
        public final /* synthetic */ String f29552d;

        /* renamed from: e */
        public final /* synthetic */ Sort f29553e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13084w(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
            super(1);
            this.f29549a = strArr;
            this.f29550b = objArr;
            this.f29551c = aVarArr;
            this.f29552d = str;
            this.f29553e = sort;
        }

        /* renamed from: a */
        public final List<FavoriteListRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmQuery where = realm.where(FavoriteListRealmObject.class);
            C15149k.m383a((Object) where, "realm.where(FavoriteListRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, this.f29549a, this.f29550b, this.f29551c);
            if (a != null) {
                return (this.f29552d == null || this.f29553e == null) ? realm.copyFromRealm(a.findAll()) : realm.copyFromRealm(a.findAll().sort(this.f29552d, this.f29553e));
            }
            throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject>");
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13057d.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29510a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final List<FavoriteGroupRealmObject> m4699a(int i) {
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13067f(i));
    }

    /* renamed from: a */
    public static final List<FavoriteListRealmObject> m4698a(long j, long j2) {
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4442a(a, new C13070i(j2, j));
    }

    /* renamed from: a */
    public static final List<FavoriteListRealmObject> m4691a(String str, int i, int i2, boolean z) {
        C15149k.m377b(str, "category");
        ArrayList arrayList = new ArrayList();
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4435b(a, new C13071j(z, str, i, i2, arrayList));
        return arrayList;
    }

    /* renamed from: a */
    public static final List<FavoriteGroupRealmObject> m4690a(String str, String str2) {
        C15149k.m377b(str, "lifeName");
        C15149k.m377b(str2, "restaurantName");
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13068g(str, str2));
    }

    /* renamed from: a */
    public static final List<FavoriteGroupRealmObject> m4685a(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
        List<FavoriteGroupRealmObject> list;
        Realm b = C13193p.m4436b(f29514e.m4700a());
        if (b != null) {
            RealmQuery where = b.where(FavoriteGroupRealmObject.class);
            C15149k.m383a((Object) where, "where(FavoriteGroupRealmObject::class.java)");
            RealmQuery<? extends RealmObject> a = C13193p.m4441a(where, strArr, objArr, aVarArr);
            if (a != null) {
                list = (str == null || sort == null) ? b.copyFromRealm(a.findAll()) : b.copyFromRealm(a.findAll().sort(str, sort));
                b.close();
            } else {
                throw new C14986p("null cannot be cast to non-null type io.realm.RealmQuery<gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject>");
            }
        } else {
            list = null;
        }
        return list;
    }

    /* renamed from: a */
    public static final void m4688a(List<? extends FavoriteGroupRealmObject> list) {
        C15149k.m377b(list, "favoriteGroupRealmObjects");
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13075n(list));
        C14037j3.m2731a().mo2704a(new C14186u0());
    }

    /* renamed from: a */
    public static final void m4687a(JSONArray jSONArray) {
        if (jSONArray != null) {
            RealmConfiguration a = f29514e.m4700a();
            C15149k.m383a((Object) a, "configuration");
            C13193p.m4442a(a, new C13073l(jSONArray));
        }
    }

    /* renamed from: a */
    public static final void m4686a(JSONArray jSONArray, JSONArray jSONArray2) {
        m4680b(jSONArray);
        m4687a(jSONArray2);
        m4671g();
    }

    /* renamed from: a */
    public static final boolean m4697a(FavoriteGroupRealmObject favoriteGroupRealmObject) {
        C15149k.m377b(favoriteGroupRealmObject, "favoriteGroupRealmObject");
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13076o(favoriteGroupRealmObject));
        C14037j3.m2731a().mo2704a(new C14186u0());
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public static final boolean m4696a(FavoriteListRealmObject favoriteListRealmObject) {
        C15149k.m377b(favoriteListRealmObject, "favoriteListRealmObject");
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13078q(favoriteListRealmObject));
        C14037j3.m2731a().mo2704a(new C14193v0());
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public static final boolean m4692a(String str) {
        C15149k.m377b(str, "groupName");
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4435b(a, new C13080s(str));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public static final boolean m4689a(String str, String str2, FavoriteListRealmObject favoriteListRealmObject) {
        C15149k.m377b(favoriteListRealmObject, "favoriteListRealmObject");
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, new C13079r(str, favoriteListRealmObject, str2));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: b */
    public static final List<FavoriteListRealmObject> m4679b(String[] strArr, Object[] objArr, C13193p.EnumC13194a[] aVarArr, String str, Sort sort) {
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        return (List) C13193p.m4435b(a, new C13084w(strArr, objArr, aVarArr, str, sort));
    }

    /* renamed from: b */
    public static final void m4684b() {
        Single.create(C13058a.f29515a).subscribeOn(Schedulers.m0io()).observeOn(Schedulers.m0io()).subscribe(C13061b.f29518a, C13062c.f29519a);
    }

    /* renamed from: b */
    public static final void m4681b(List<? extends FavoriteListRealmObject> list) {
        C15149k.m377b(list, FavoriteGroupRealmObject.FAVORITELISTREALMOBJECTS);
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        C13193p.m4442a(a, new C13077p(list));
        C14037j3.m2731a().mo2704a(new C14193v0());
    }

    /* renamed from: b */
    public static final void m4680b(JSONArray jSONArray) {
        if (jSONArray != null) {
            RealmConfiguration a = f29514e.m4700a();
            C15149k.m383a((Object) a, "configuration");
            C13193p.m4442a(a, new C13074m(jSONArray));
        }
    }

    /* renamed from: b */
    public static final boolean m4682b(String str) {
        C15149k.m377b(str, "e164");
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4435b(a, new C13081t(str));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: c */
    public static final void m4678c() {
        Realm.compactRealm(f29514e.m4700a());
    }

    /* renamed from: c */
    public static final boolean m4676c(String str) {
        C15149k.m377b(str, "e164");
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4435b(a, new C13082u(str));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: d */
    public static final File m4675d() {
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        return new File(a.getPath());
    }

    /* renamed from: d */
    public static final boolean m4674d(String str) {
        C15149k.m377b(str, "groupName");
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4435b(a, new C13083v(str));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: e */
    public static final int m4673e() {
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        Integer num = (Integer) C13193p.m4435b(a, C13066e.f29523a);
        return num != null ? num.intValue() : 0;
    }

    /* renamed from: f */
    public static final int m4672f() {
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        Integer num = (Integer) C13193p.m4435b(a, C13069h.f29527a);
        return num != null ? num.intValue() : 0;
    }

    /* renamed from: g */
    public static final boolean m4671g() {
        RealmConfiguration a = f29514e.m4700a();
        C15149k.m383a((Object) a, "configuration");
        Boolean bool = (Boolean) C13193p.m4442a(a, C13072k.f29535a);
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public final RealmConfiguration m4700a() {
        AbstractC14974f fVar = f29513d;
        AbstractC14906i iVar = f29510a[0];
        return (RealmConfiguration) fVar.getValue();
    }

    /* renamed from: a */
    public final void m4695a(Realm realm) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            realm.insertOrUpdate(new FavoriteGroupRealmObject(0L, "0", "", 0, 0, currentTimeMillis, currentTimeMillis, 1, null, null, AdtsReader.MATCH_STATE_I, null));
        } catch (Exception e) {
            C13973d4.m2952a(e);
        }
    }
}
