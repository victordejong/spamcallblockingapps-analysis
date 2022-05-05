package p459j.p460a.p541n0;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.core.app.Person;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.realm.module.IndexRealmModule;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.realm.obj.index.SearchIndexRealmObject;
import io.realm.Case;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p541n0.p542u.p543a.C13223a;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p587d5.C13977d;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15026r;
import p626l.p634w.AbstractC15037a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p640y.C15086c;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\bÆ\u0002\u0018��2\u00020\u0001:\u0002DEB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0007J0\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00062\u001e\u0010\u001a\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c0\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u0010H\u0007J\b\u0010\u001f\u001a\u00020\u0010H\u0007J\b\u0010 \u001a\u00020\u0010H\u0007J\b\u0010!\u001a\u00020\u0010H\u0007J\u0018\u0010\"\u001a\u00020\u00062\u000e\u0010#\u001a\n\u0012\u0006\b\u0001\u0012\u00020%0$H\u0007J\b\u0010&\u001a\u00020'H\u0007J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0004H\u0002J\u0016\u0010+\u001a\b\u0012\u0004\u0012\u00020\u001d0,2\u0006\u0010-\u001a\u00020\u0004H\u0007J\u0016\u0010.\u001a\u00020\u00172\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001d00H\u0007J\u0018\u00101\u001a\u00020\u00102\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020)H\u0002J\u0010\u00105\u001a\u00020\u00102\u0006\u00104\u001a\u00020)H\u0002J\u0018\u00106\u001a\u00020\u00172\u0006\u0010*\u001a\u00020\u00042\u0006\u00107\u001a\u00020)H\u0002J \u00108\u001a\u00020\u00102\u0006\u00102\u001a\u0002032\u0006\u00109\u001a\u00020)2\u0006\u00104\u001a\u00020)H\u0002J\u0010\u0010:\u001a\u00020\u00102\u0006\u00109\u001a\u00020)H\u0002J\u0018\u0010;\u001a\u00020\u00102\u0006\u00109\u001a\u00020)2\u0006\u00104\u001a\u00020)H\u0002J\u0010\u0010<\u001a\u00020\u00172\u0006\u0010=\u001a\u00020)H\u0002J\u0018\u0010>\u001a\u00020\u00102\u0006\u00109\u001a\u00020)2\u0006\u00104\u001a\u00020)H\u0002J\u0018\u0010?\u001a\u00020\u00102\u0006\u00109\u001a\u00020)2\u0006\u00104\u001a\u00020)H\u0002J\u0018\u0010@\u001a\u00020\u00102\u0006\u00109\u001a\u00020)2\u0006\u00104\u001a\u00020)H\u0002J\u0019\u0010A\u001a\u00020\u00102\u0006\u00102\u001a\u000203H\u0082@ø\u0001��¢\u0006\u0002\u0010BJ\u0010\u0010C\u001a\u00020\u00172\u0006\u00102\u001a\u000203H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006F"}, m815d2 = {"Lgogolook/callgogolook2/realm/IndexRealmHelper;", "", "()V", "DB_NAME", "", "DB_VERSION", "", "LOG_TAG", "LONG_NAME_THRESHOLD", "configuration", "Lio/realm/RealmConfiguration;", "getConfiguration", "()Lio/realm/RealmConfiguration;", "configuration$delegate", "Lkotlin/Lazy;", "isUpdating", "", "()Z", "setUpdating", "(Z)V", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "compact", "", "deleteByFieldValues", "refType", "append", "Lkotlin/Function1;", "Lio/realm/RealmQuery;", "Lgogolook/callgogolook2/realm/obj/index/CacheIndexRealmObject;", "dropCacheTable", "dropDialerIndexTable", "dropNumberIndexTable", "dropSearchIndexTable", "getCacheListCount", "javaClass", "Ljava/lang/Class;", "Lio/realm/RealmObject;", "getDbFile", "Ljava/io/File;", "getSyncedInfo", "", Person.KEY_KEY, "getTextSearchMatchesResultWithLimit", "", "query", "insertOrUpdateCacheDataList", "cacheIndexRealmObjects", "", "removeDeletedContacts", "context", "Landroid/content/Context;", "lastUpdateTime", "removePotentiallyCorruptedCache", "setSyncedInfo", "syncedInfo", "syncContactCache", "currentTime", "syncEmptyNameCache", "syncFavoriteCache", "syncIndex", "currentMillis", "syncLogCache", "syncMemoCache", "syncTagCache", "updateIndexDatabase", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateIndexDatabaseAsync", "ContactQuery", "DeleteContactQuery", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.i */
/* loaded from: classes3-dex2jar.jar:j/a/n0/i.class */
public final class C13110i {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f29592a;

    /* renamed from: b */
    public static boolean f29593b;

    /* renamed from: e */
    public static final C13110i f29596e = new C13110i();

    /* renamed from: c */
    public static final AbstractC14974f f29594c = C14975g.m662a(C13115c.f29607a);

    /* renamed from: d */
    public static final Mutex f29595d = MutexKt.Mutex$default(false, 1, null);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\bf\u0018�� \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, m815d2 = {"Lgogolook/callgogolook2/realm/IndexRealmHelper$ContactQuery;", "", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.n0.i$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$a.class */
    public interface AbstractC13111a {

        /* renamed from: a */
        public static final C13112a f29597a = C13112a.f29602e;

        /* renamed from: j.a.n0.i$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/i$a$a.class */
        public static final class C13112a {

            /* renamed from: e */
            public static final /* synthetic */ C13112a f29602e = new C13112a();

            /* renamed from: a */
            public static final Uri f29598a = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;

            /* renamed from: b */
            public static final String[] f29599b = {"_id", "data1", "contact_id", CacheIndexRealmObject.DISPLAY_NAME};

            /* renamed from: c */
            public static final String f29600c = f29600c;

            /* renamed from: c */
            public static final String f29600c = f29600c;

            /* renamed from: d */
            public static final String f29601d = f29600c + " AND length(lookup) < 1000";

            /* renamed from: a */
            public final String[] m4572a() {
                return f29599b;
            }

            /* renamed from: b */
            public final String m4571b() {
                return f29601d;
            }

            /* renamed from: c */
            public final Uri m4570c() {
                return f29598a;
            }
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\bg\u0018�� \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, m815d2 = {"Lgogolook/callgogolook2/realm/IndexRealmHelper$DeleteContactQuery;", "", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    @TargetApi(18)
    /* renamed from: j.a.n0.i$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$b.class */
    public interface AbstractC13113b {

        /* renamed from: a */
        public static final C13114a f29603a = C13114a.f29606c;

        /* renamed from: j.a.n0.i$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/n0/i$b$a.class */
        public static final class C13114a {

            /* renamed from: c */
            public static final /* synthetic */ C13114a f29606c = new C13114a();

            /* renamed from: a */
            public static final Uri f29604a = ContactsContract.DeletedContacts.CONTENT_URI;

            /* renamed from: b */
            public static final String[] f29605b = {"contact_id"};

            /* renamed from: a */
            public final String[] m4569a() {
                return f29605b;
            }

            /* renamed from: b */
            public final Uri m4568b() {
                return f29604a;
            }
        }
    }

    /* renamed from: j.a.n0.i$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$c.class */
    public static final class C13115c extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13115c f29607a = new C13115c();

        public C13115c() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("index").schemaVersion(2).modules(new IndexRealmModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).deleteRealmIfMigrationNeeded().build();
        }
    }

    /* renamed from: j.a.n0.i$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$d.class */
    public static final class C13116d extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ int f29608a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC15118l f29609b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13116d(int i, AbstractC15118l lVar) {
            super(1);
            this.f29608a = i;
            this.f29609b = lVar;
        }

        /* renamed from: a */
        public final boolean m4567a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmQuery beginGroup = realm.where(CacheIndexRealmObject.class).equalTo(CacheIndexRealmObject.REF_TYPE, Integer.valueOf(this.f29608a)).beginGroup();
            AbstractC15118l lVar = this.f29609b;
            C15149k.m383a((Object) beginGroup, "this");
            RealmResults findAll = ((RealmQuery) lVar.invoke(beginGroup)).endGroup().findAll();
            C15149k.m383a((Object) findAll, "it");
            if (!(!findAll.isEmpty())) {
                findAll = null;
            }
            return findAll != null ? C13223a.m4389a(findAll) : false;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4567a(realm));
        }
    }

    /* renamed from: j.a.n0.i$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$e.class */
    public static final class C13117e extends AbstractC15150l implements AbstractC15118l<Realm, List<CacheIndexRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ String f29610a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13117e(String str) {
            super(1);
            this.f29610a = str;
        }

        /* renamed from: a */
        public final List<CacheIndexRealmObject> invoke(Realm realm) {
            C15149k.m377b(realm, "it");
            try {
                return realm.copyFromRealm(realm.where(CacheIndexRealmObject.class).contains("searchIndexRealmObjects.normalized_index", this.f29610a, Case.INSENSITIVE).m10371or().contains("numberIndexRealmObjects.normalized_index", this.f29610a, Case.INSENSITIVE).distinct("e164").findAll());
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
                return null;
            }
        }
    }

    /* renamed from: j.a.n0.i$f */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$f.class */
    public static final class C13118f extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ Collection f29611a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13118f(Collection collection) {
            super(1);
            this.f29611a = collection;
        }

        /* renamed from: a */
        public final void m4565a(Realm realm) {
            C15149k.m377b(realm, "it");
            RealmQuery where = realm.where(CacheIndexRealmObject.class);
            Number max = where != null ? where.max("_id") : null;
            long longValue = (max != null ? max.longValue() : 0L) + 1;
            for (CacheIndexRealmObject cacheIndexRealmObject : this.f29611a) {
                if (cacheIndexRealmObject.get_id() < 0) {
                    cacheIndexRealmObject.set_id(longValue);
                    longValue++;
                }
            }
            realm.insertOrUpdate(this.f29611a);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Realm realm) {
            m4565a(realm);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.n0.i$g */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$g.class */
    public static final class C13119g extends AbstractC15150l implements AbstractC15118l<RealmQuery<CacheIndexRealmObject>, RealmQuery<CacheIndexRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ Set f29612a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13119g(Set set) {
            super(1);
            this.f29612a = set;
        }

        /* renamed from: a */
        public final RealmQuery<CacheIndexRealmObject> invoke(RealmQuery<CacheIndexRealmObject> realmQuery) {
            C15149k.m377b(realmQuery, "it");
            Object[] array = this.f29612a.toArray(new Long[0]);
            if (array != null) {
                RealmQuery<CacheIndexRealmObject> in = realmQuery.m10376in("contact_id", (Long[]) array);
                C15149k.m383a((Object) in, "it.`in`(CONTACT_ID, idList.toTypedArray())");
                return in;
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
        }
    }

    /* renamed from: j.a.n0.i$h */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$h.class */
    public static final class C13120h extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ long f29613a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13120h(long j) {
            super(1);
            this.f29613a = j;
        }

        /* renamed from: a */
        public final Boolean invoke(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmResults findAll = realm.where(CacheIndexRealmObject.class).greaterThan(CacheIndexRealmObject.LAST_UPDATE_TIME, this.f29613a).findAll();
            C15149k.m383a((Object) findAll, "it");
            Boolean bool = null;
            if (!(!findAll.isEmpty())) {
                findAll = null;
            }
            if (findAll != null) {
                bool = Boolean.valueOf(C13223a.m4389a(findAll));
            }
            return bool;
        }
    }

    /* renamed from: j.a.n0.i$i */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$i.class */
    public static final class C13121i extends AbstractC15150l implements AbstractC15118l<RealmQuery<CacheIndexRealmObject>, RealmQuery<CacheIndexRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ Map f29614a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13121i(Map map) {
            super(1);
            this.f29614a = map;
        }

        /* renamed from: a */
        public final RealmQuery<CacheIndexRealmObject> invoke(RealmQuery<CacheIndexRealmObject> realmQuery) {
            C15149k.m377b(realmQuery, "it");
            Object[] array = this.f29614a.keySet().toArray(new Long[0]);
            if (array != null) {
                RealmQuery<CacheIndexRealmObject> in = realmQuery.m10376in("contact_id", (Long[]) array);
                C15149k.m383a((Object) in, "it.`in`(CONTACT_ID, cont…tMap.keys.toTypedArray())");
                return in;
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
        }
    }

    /* renamed from: j.a.n0.i$j */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$j.class */
    public static final class C13122j extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ long f29615a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13122j(long j) {
            super(1);
            this.f29615a = j;
        }

        /* renamed from: a */
        public final boolean m4561a(Realm realm) {
            C15149k.m377b(realm, "realm");
            RealmResults findAll = realm.where(CacheIndexRealmObject.class).isEmpty(CacheIndexRealmObject.DISPLAY_NAME).findAll();
            Iterator it = findAll.iterator();
            while (it.hasNext()) {
                CacheIndexRealmObject cacheIndexRealmObject = (CacheIndexRealmObject) it.next();
                NumberInfo e = C11052i.m10328e().m10327e(cacheIndexRealmObject.getE164());
                if (e != null) {
                    RowInfo c = RowInfo.m28235c(cacheIndexRealmObject.getE164(), e);
                    if (c != null) {
                        C15149k.m383a((Object) c, "it");
                        String str = c.m28224h().name;
                        if (!(true ^ (str == null || str.length() == 0))) {
                            c = null;
                        }
                        if (c != null) {
                            cacheIndexRealmObject.setLast_update_time(this.f29615a);
                            C15149k.m383a((Object) c, "it");
                            cacheIndexRealmObject.setDisplay_name(c.m28224h().name);
                        }
                    }
                }
            }
            C15149k.m383a((Object) findAll, "caches");
            return !findAll.isEmpty();
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4561a(realm));
        }
    }

    /* renamed from: j.a.n0.i$k */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$k.class */
    public static final class C13123k extends AbstractC15150l implements AbstractC15118l<RealmQuery<CacheIndexRealmObject>, RealmQuery<CacheIndexRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ Long[] f29616a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13123k(Long[] lArr) {
            super(1);
            this.f29616a = lArr;
        }

        /* renamed from: a */
        public final RealmQuery<CacheIndexRealmObject> invoke(RealmQuery<CacheIndexRealmObject> realmQuery) {
            C15149k.m377b(realmQuery, "it");
            RealmQuery<CacheIndexRealmObject> in = realmQuery.m10376in("ref_id", this.f29616a);
            C15149k.m383a((Object) in, "it.`in`(REF_ID, deleteIdArray)");
            return in;
        }
    }

    /* renamed from: j.a.n0.i$l */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$l.class */
    public static final class C13124l extends AbstractC15150l implements AbstractC15118l<Realm, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ long f29617a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13124l(long j) {
            super(1);
            this.f29617a = j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:101:0x02ed A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0225  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x022b  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0237  */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r13v6, types: [long] */
        /* JADX WARN: Type inference failed for: r15v1 */
        /* JADX WARN: Type inference failed for: r15v2 */
        /* JADX WARN: Type inference failed for: r15v20 */
        /* JADX WARN: Type inference failed for: r15v21 */
        /* JADX WARN: Type inference failed for: r15v6 */
        /* JADX WARN: Type inference failed for: r17v1 */
        /* JADX WARN: Type inference failed for: r17v18 */
        /* JADX WARN: Type inference failed for: r17v6 */
        /* JADX WARN: Type inference failed for: r17v7 */
        /* JADX WARN: Type inference failed for: r17v8, types: [long] */
        /* JADX WARN: Type inference failed for: r19v11 */
        /* JADX WARN: Type inference failed for: r19v2 */
        /* JADX WARN: Type inference failed for: r19v4 */
        /* JADX WARN: Type inference failed for: r19v5 */
        /* JADX WARN: Type inference failed for: r19v6, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p626l.C14989s invoke(io.realm.Realm r10) {
            /*
                Method dump skipped, instructions count: 771
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13110i.C13124l.invoke(io.realm.Realm):l.s");
        }
    }

    /* renamed from: j.a.n0.i$m */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$m.class */
    public static final class C13125m extends AbstractC15150l implements AbstractC15118l<RealmQuery<CacheIndexRealmObject>, RealmQuery<CacheIndexRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ Long[] f29618a;

        /* renamed from: b */
        public final /* synthetic */ String[] f29619b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13125m(Long[] lArr, String[] strArr) {
            super(1);
            this.f29618a = lArr;
            this.f29619b = strArr;
        }

        /* renamed from: a */
        public final RealmQuery<CacheIndexRealmObject> invoke(RealmQuery<CacheIndexRealmObject> realmQuery) {
            C15149k.m377b(realmQuery, "query");
            RealmQuery<CacheIndexRealmObject> in = realmQuery.m10376in("ref_id", this.f29618a).m10371or().m10374in("e164", this.f29619b);
            C15149k.m383a((Object) in, "query.`in`(REF_ID, delet…n`(E164, deleteE164Array)");
            return in;
        }
    }

    /* renamed from: j.a.n0.i$n */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$n.class */
    public static final class C13126n extends AbstractC15150l implements AbstractC15118l<RealmQuery<CacheIndexRealmObject>, RealmQuery<CacheIndexRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ Long[] f29620a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13126n(Long[] lArr) {
            super(1);
            this.f29620a = lArr;
        }

        /* renamed from: a */
        public final RealmQuery<CacheIndexRealmObject> invoke(RealmQuery<CacheIndexRealmObject> realmQuery) {
            C15149k.m377b(realmQuery, "it");
            RealmQuery<CacheIndexRealmObject> in = realmQuery.m10376in("ref_id", this.f29620a);
            C15149k.m383a((Object) in, "it.`in`(REF_ID, deleteIdArray)");
            return in;
        }
    }

    /* renamed from: j.a.n0.i$o */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$o.class */
    public static final class C13127o extends AbstractC15150l implements AbstractC15118l<RealmQuery<CacheIndexRealmObject>, RealmQuery<CacheIndexRealmObject>> {

        /* renamed from: a */
        public final /* synthetic */ Long[] f29621a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13127o(Long[] lArr) {
            super(1);
            this.f29621a = lArr;
        }

        /* renamed from: a */
        public final RealmQuery<CacheIndexRealmObject> invoke(RealmQuery<CacheIndexRealmObject> realmQuery) {
            C15149k.m377b(realmQuery, "it");
            RealmQuery<CacheIndexRealmObject> in = realmQuery.m10376in("ref_id", this.f29621a);
            C15149k.m383a((Object) in, "it.`in`(REF_ID, deleteIdArray)");
            return in;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/realm/IndexRealmHelper$updateIndexDatabase$2", m472f = "IndexRealmHelper.kt", m471l = {PsExtractor.AUDIO_STREAM}, m470m = "invokeSuspend")
    /* renamed from: j.a.n0.i$p */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$p.class */
    public static final class C13128p extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super Boolean>, Object> {

        /* renamed from: a */
        public CoroutineScope f29622a;

        /* renamed from: b */
        public int f29623b;

        /* renamed from: c */
        public final /* synthetic */ Context f29624c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13128p(Context context, AbstractC15044d dVar) {
            super(2, dVar);
            this.f29624c = context;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13128p pVar = new C13128p(this.f29624c, dVar);
            pVar.f29622a = (CoroutineScope) obj;
            return pVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super Boolean> dVar) {
            return ((C13128p) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C15064c.m478a();
            if (this.f29623b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (obj instanceof C14979k.C14981b) {
                throw ((C14979k.C14981b) obj).f33014a;
            } else if (C13110i.f29596e.m4587b()) {
                return C15066b.m474a(false);
            } else {
                C13110i.f29596e.m4588a(true);
                long currentTimeMillis = System.currentTimeMillis();
                long a = C13110i.f29596e.m4591a("index_realm_last_updated_millis");
                boolean a2 = C13110i.f29596e.m4601a(this.f29624c, a) | C13110i.f29596e.m4604a(a) | C13110i.f29596e.m4603a(currentTimeMillis, a) | C13110i.f29596e.m4585b(currentTimeMillis, a) | C13110i.f29596e.m4600a(this.f29624c, currentTimeMillis, a) | C13110i.f29596e.m4575d(currentTimeMillis, a) | C13110i.f29596e.m4579c(currentTimeMillis, a) | C13110i.f29596e.m4586b(currentTimeMillis);
                if (a2) {
                    C13110i.f29596e.m4580c(currentTimeMillis);
                }
                C13110i.f29596e.m4590a("index_realm_last_updated_millis", currentTimeMillis);
                C13110i.f29596e.m4588a(false);
                return C15066b.m474a(a2);
            }
        }
    }

    /* renamed from: j.a.n0.i$q */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$q.class */
    public static final class C13129q extends AbstractC15037a implements CoroutineExceptionHandler {
        public C13129q(AbstractC15049g.AbstractC15054c cVar) {
            super(cVar);
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(AbstractC15049g gVar, Throwable th) {
            C13973d4.m2952a(th);
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/realm/IndexRealmHelper$updateIndexDatabaseAsync$1", m472f = "IndexRealmHelper.kt", m471l = {MatroskaExtractor.ID_CUE_TRACK_POSITIONS, 673, MatroskaExtractor.ID_PIXEL_HEIGHT}, m470m = "invokeSuspend")
    /* renamed from: j.a.n0.i$r */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/i$r.class */
    public static final class C13130r extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f29625a;

        /* renamed from: b */
        public Object f29626b;

        /* renamed from: c */
        public Object f29627c;

        /* renamed from: d */
        public int f29628d;

        /* renamed from: e */
        public int f29629e;

        /* renamed from: f */
        public final /* synthetic */ Context f29630f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13130r(Context context, AbstractC15044d dVar) {
            super(2, dVar);
            this.f29630f = context;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13130r rVar = new C13130r(this.f29630f, dVar);
            rVar.f29625a = (CoroutineScope) obj;
            return rVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13130r) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x010f  */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 373
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13110i.C13130r.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13110i.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
        C15131a0.m412a(sVar);
        f29592a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final void m4602a(Context context) {
        C15149k.m377b(context, "context");
        if (!f29595d.isLocked()) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.MainScope(), new C13129q(CoroutineExceptionHandler.Key), null, new C13130r(context, null), 2, null);
        }
    }

    /* renamed from: a */
    public static final void m4589a(Collection<? extends CacheIndexRealmObject> collection) {
        C15149k.m377b(collection, "cacheIndexRealmObjects");
        if (!collection.isEmpty()) {
            C13193p.m4442a(f29596e.m4606a(), new C13118f(collection));
        }
    }

    /* renamed from: b */
    public static final List<CacheIndexRealmObject> m4582b(String str) {
        C15149k.m377b(str, "query");
        if (f29593b) {
            return new ArrayList();
        }
        List<CacheIndexRealmObject> list = (List) C13193p.m4435b(f29596e.m4606a(), new C13117e(str));
        if (list == null) {
            list = new ArrayList<>();
        }
        return list;
    }

    /* renamed from: c */
    public static final void m4581c() {
        Realm.compactRealm(f29596e.m4606a());
    }

    /* renamed from: d */
    public static final boolean m4576d() {
        return C13193p.m4440a(SearchIndexRealmObject.class, f29596e.m4606a());
    }

    /* renamed from: e */
    public static final File m4573e() {
        return new File(f29596e.m4606a().getPath());
    }

    /* renamed from: a */
    public final long m4591a(String str) {
        return C13977d.f31385a.m9460a(str, (Long) 0L);
    }

    /* renamed from: a */
    public final RealmConfiguration m4606a() {
        AbstractC14974f fVar = f29594c;
        AbstractC14906i iVar = f29592a[0];
        return (RealmConfiguration) fVar.getValue();
    }

    /* renamed from: a */
    public final /* synthetic */ Object m4599a(Context context, AbstractC15044d<? super Boolean> dVar) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C13128p(context, null), dVar);
    }

    /* renamed from: a */
    public final void m4590a(String str, long j) {
        C13977d.f31385a.m9459a(str, (String) Long.valueOf(j));
    }

    /* renamed from: a */
    public final void m4588a(boolean z) {
        f29593b = z;
    }

    /* renamed from: a */
    public final boolean m4605a(int i, AbstractC15118l<? super RealmQuery<CacheIndexRealmObject>, ? extends RealmQuery<CacheIndexRealmObject>> lVar) {
        boolean z;
        try {
            Boolean bool = (Boolean) C13193p.m4442a(m4606a(), new C13116d(i, lVar));
            z = false;
            if (bool != null) {
                z = bool.booleanValue();
            }
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m4604a(long j) {
        Boolean bool = (Boolean) C13193p.m4442a(m4606a(), new C13120h(j));
        return bool != null ? bool.booleanValue() : false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [j.a.n0.i] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2, types: [long] */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4603a(long r20, long r22) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13110i.m4603a(long, long):boolean");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final boolean m4601a(Context context, long j) {
        Cursor query = context.getContentResolver().query(AbstractC13113b.f29603a.m4568b(), AbstractC13113b.f29603a.m4569a(), "contact_deleted_timestamp > ?", new String[]{String.valueOf(j)}, null);
        boolean z = false;
        if (query != null) {
            try {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                while (query.moveToNext()) {
                    linkedHashSet.add(Long.valueOf(query.getLong(0)));
                }
                if (!(true ^ linkedHashSet.isEmpty())) {
                    linkedHashSet = null;
                }
                Boolean valueOf = linkedHashSet != null ? Boolean.valueOf(f29596e.m4605a(2, new C13119g(linkedHashSet))) : null;
                C15086c.m447a(query, null);
                z = false;
                if (valueOf != null) {
                    z = valueOf.booleanValue();
                }
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final boolean m4600a(Context context, long j, long j2) {
        Throwable th;
        Exception e;
        Object obj;
        boolean z = false;
        try {
            try {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Cursor query = context.getContentResolver().query(AbstractC13111a.f29597a.m4570c(), AbstractC13111a.f29597a.m4572a(), AbstractC13111a.f29597a.m4571b(), new String[]{String.valueOf(j2)}, null);
                if (query != null) {
                    while (query.moveToNext()) {
                        try {
                            long j3 = query.getLong(0);
                            long j4 = query.getLong(2);
                            String string = query.getString(1);
                            String str = "";
                            if (string == null) {
                                string = "";
                            }
                            String l = C14108o4.m2474l(string);
                            String string2 = query.getString(3);
                            if (string2 != null) {
                                str = string2;
                            }
                            List list = (List) linkedHashMap.get(Long.valueOf(j4));
                            if (list == null) {
                                list = new ArrayList();
                                linkedHashMap.put(Long.valueOf(j4), list);
                            }
                            Iterator it = list.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    obj = null;
                                    break;
                                }
                                obj = it.next();
                                CacheIndexRealmObject cacheIndexRealmObject = (CacheIndexRealmObject) obj;
                                if (C15149k.m384a((Object) cacheIndexRealmObject.getE164(), (Object) l) && C15149k.m384a((Object) cacheIndexRealmObject.getDisplay_name(), (Object) str)) {
                                    break;
                                }
                            }
                            if (obj == null) {
                                C15149k.m383a((Object) l, "e164");
                                list.add(new CacheIndexRealmObject(0L, j3, 2, string, l, j4, str, j, null, null, null, 1793, null));
                            }
                        } finally {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                            }
                        }
                    }
                    C14989s sVar = C14989s.f33022a;
                    C15086c.m447a(query, null);
                }
                ArrayList arrayList = new ArrayList();
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    C15026r.m552a(arrayList, (List) entry.getValue());
                }
                try {
                    m4605a(2, new C13121i(linkedHashMap));
                    m4589a(arrayList);
                    z = !arrayList.isEmpty();
                } catch (Exception e2) {
                    e = e2;
                    C14080m2.m2612a((Throwable) e);
                    return z;
                }
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
        } catch (Throwable th4) {
            th = th4;
            throw th;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m4587b() {
        return f29593b;
    }

    /* renamed from: b */
    public final boolean m4586b(long j) {
        Boolean bool = (Boolean) C13193p.m4442a(m4606a(), new C13122j(j));
        return bool != null ? bool.booleanValue() : false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [j.a.n0.i] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2, types: [long] */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4585b(long r20, long r22) {
        /*
            Method dump skipped, instructions count: 599
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13110i.m4585b(long, long):boolean");
    }

    /* renamed from: c */
    public final void m4580c(long j) {
        C13193p.m4442a(m4606a(), new C13124l(j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [j.a.n0.i] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2, types: [long] */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4579c(long r20, long r22) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13110i.m4579c(long, long):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [j.a.n0.i] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2, types: [long] */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4575d(long r20, long r22) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p541n0.C13110i.m4575d(long, long):boolean");
    }
}
