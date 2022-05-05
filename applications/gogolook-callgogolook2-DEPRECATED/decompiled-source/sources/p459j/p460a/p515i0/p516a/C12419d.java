package p459j.p460a.p515i0.p516a;

import android.util.Base64;
import androidx.exifinterface.media.ExifInterface;
import androidx.media2.session.MediaSessionImplBase;
import com.mopub.common.AdType;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.offline.offlinedb.CategMap;
import gogolook.callgogolook2.offline.offlinedb.OfflineDb;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbModule;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbV82;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbV82Module;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbV83;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbV83Module;
import gogolook.callgogolook2.offline.offlinedb.SourceMap;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import io.realm.exceptions.RealmError;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p188o.C6402c;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p459j.p460a.p538m0.C13026i;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p590x4.C14289m;
import p626l.C14989s;
import p626l.p631e0.C14966w;
import p626l.p631e0.C14973z;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15163y;
import p646n.p647a.p648a.C15199a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010%\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0007J\b\u0010\u0018\u001a\u00020\u0017H\u0007J\b\u0010\u0019\u001a\u00020\u0017H\u0007J\u001c\u0010\u001a\u001a\u00020\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001eH\u0007J\u0010\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\nH\u0002J\u001c\u0010!\u001a\u0004\u0018\u00010\n2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u0004H\u0007J\b\u0010%\u001a\u00020\u0004H\u0007J\b\u0010&\u001a\u00020\u0004H\u0007J\b\u0010'\u001a\u00020\u0004H\u0007J\b\u0010(\u001a\u00020\u0004H\u0007J\b\u0010)\u001a\u00020\u0004H\u0007J\b\u0010*\u001a\u00020\u0004H\u0007J\u001c\u0010+\u001a\u0004\u0018\u00010,2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\nH\u0007J\n\u0010-\u001a\u0004\u0018\u00010#H\u0007J\u0012\u0010-\u001a\u0004\u0018\u00010#2\u0006\u0010.\u001a\u00020\u0004H\u0003J\u001c\u0010/\u001a\u0004\u0018\u00010\n2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u00100\u001a\u00020\u0004H\u0007J\b\u00101\u001a\u00020\u0004H\u0007J\b\u00102\u001a\u00020\u0004H\u0007J\b\u00103\u001a\u00020\u0004H\u0007J\u0010\u00104\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u001eH\u0007J\b\u00106\u001a\u00020\u0004H\u0007J\b\u00107\u001a\u00020\u001eH\u0007J\u0018\u00108\u001a\u00020\u001e2\u0006\u00109\u001a\u00020\u00042\u0006\u0010:\u001a\u00020\u0004H\u0007J\b\u0010;\u001a\u00020\u001eH\u0007J\u0012\u0010<\u001a\u00020\u001e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u001c\u0010=\u001a\u00020\u00172\u0006\u0010>\u001a\u00020\u001e2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010@H\u0007J\b\u0010A\u001a\u00020\u001eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n��R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u001c\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u0013\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006B"}, m815d2 = {"Lgogolook/callgogolook2/offline/offlinedb/CommonDbManager;", "", "()V", "DB_VERSION_V81", "", "DB_VERSION_V82", "DB_VERSION_V83", "SCHEMA_VERSION", "", CallAction.DONE_TAG, "", "kotlin.jvm.PlatformType", "TYPE_165", "TYPE_CARD", "TYPE_SPAM", "TYPE_TOPTOP", "mCategoryMap", "", "mConfigMap", "Lio/realm/RealmConfiguration;", "mSourceMap", "offlineDbVersion", "cancelDownload", "", AdType.CLEAR, "clearApiCache", "download", "callback", "Lcom/gogolook/whoscallsdk/core/net/WCFileProgressCallback;", "manually", "", "getBcryptHash", "number", "getCategoryName", "realm", "Lio/realm/Realm;", "category", "getCurrentDbType", "getCurrentVersion", "getNewSpamNumCount", "getNewTopNumCount", "getNextDbType", "getNextVersion", "getOfflineDbItem", "Lgogolook/callgogolook2/offline/offlinedb/OfflineDbItem;", "getRealmDatabase", "dbVersion", "getSourceName", "source", "getSpamNumCount", "getTopNumCount", "getToptopSpamNumCount", "getTotalNumCount", "isPremium", "getUpdateRate", "hasNewVersion", "isContainType", "dbValue", "type", "isDownloaded", "isDownloading", "refreshStatus", "force", "refreshCallback", "Lcom/gogolook/whoscallsdk/core/net/WCHttpCallback;", "shouldDownload", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i0.a.d */
/* loaded from: classes3-dex2jar.jar:j/a/i0/a/d.class */
public final class C12419d {

    /* renamed from: c */
    public static Map<String, RealmConfiguration> f27995c;

    /* renamed from: d */
    public static Map<Integer, String> f27996d;

    /* renamed from: e */
    public static Map<Integer, String> f27997e;

    /* renamed from: f */
    public static final C12419d f27998f = new C12419d();

    /* renamed from: a */
    public static final String f27993a = f27998f.getClass().getSimpleName();

    /* renamed from: b */
    public static int f27994b = 83;

    /* renamed from: j.a.i0.a.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/d$a.class */
    public static final class C12420a extends AbstractC6377c {

        /* renamed from: a */
        public final /* synthetic */ C15163y f27999a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC6377c f28000b;

        /* renamed from: c */
        public final /* synthetic */ boolean f28001c;

        public C12420a(C15163y yVar, AbstractC6377c cVar, boolean z) {
            this.f27999a = yVar;
            this.f28000b = cVar;
            this.f28001c = z;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1446a() {
            AbstractC6377c cVar = this.f28000b;
            if (cVar != null) {
                cVar.mo1446a();
            }
            C14289m.m1908a(0, C12419d.m6206g(), this.f28001c, 3, -1, (String) null, System.currentTimeMillis() - this.f27999a.f33151a);
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1445a(int i) {
            AbstractC6377c cVar = this.f28000b;
            if (cVar != null) {
                cVar.mo1445a(i);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1444a(C6429b bVar) {
            AbstractC6377c cVar = this.f28000b;
            if (cVar != null) {
                cVar.mo1444a(bVar);
            }
            C14289m.m1908a(0, C12419d.m6206g(), this.f28001c, 2, bVar != null ? bVar.m22647a() : -1, bVar != null ? bVar.m22646b() : null, System.currentTimeMillis() - this.f27999a.f33151a);
            if (!C12419d.m6200m()) {
                C12419d.m6212b();
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: b */
        public void mo1443b() {
            AbstractC6377c cVar = this.f28000b;
            if (cVar != null) {
                cVar.mo1443b();
            }
            C14289m.m1908a(0, C12419d.m6206g(), this.f28001c, 1, -1, (String) null, System.currentTimeMillis() - this.f27999a.f33151a);
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: c */
        public void mo1442c() {
            this.f27999a.f33151a = System.currentTimeMillis();
            AbstractC6377c cVar = this.f28000b;
            if (cVar != null) {
                cVar.mo1442c();
            }
            C14289m.m1908a(0, C12419d.m6206g(), this.f28001c, 0, -1, (String) null, -1L);
        }
    }

    /* renamed from: j.a.i0.a.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/d$b.class */
    public static final class C12421b implements RealmMigration {

        /* renamed from: a */
        public static final C12421b f28002a = new C12421b();

        @Override // io.realm.RealmMigration
        public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
        }
    }

    /* renamed from: a */
    public static final int m6214a(boolean z) {
        return C6402c.m22794a(C14017g4.m2810n(), z ? 1 : 0);
    }

    /* renamed from: a */
    public static final Realm m6221a(int i) {
        RealmConfiguration realmConfiguration;
        Object obj;
        String f = C6402c.m22773f(C14017g4.m2810n());
        if (f == null) {
            return null;
        }
        try {
            if (f27995c == null) {
                synchronized (f27998f) {
                    if (f27995c == null) {
                        f27995c = new HashMap();
                    }
                    C14989s sVar = C14989s.f33022a;
                }
            }
            Map<String, RealmConfiguration> map = f27995c;
            if (map == null || map.containsKey(f)) {
                Map<String, RealmConfiguration> map2 = f27995c;
                realmConfiguration = map2 != null ? map2.get(f) : null;
            } else {
                synchronized (f27998f) {
                    Map<String, RealmConfiguration> map3 = f27995c;
                    if (map3 == null || map3.containsKey(f)) {
                        Map<String, RealmConfiguration> map4 = f27995c;
                        realmConfiguration = map4 != null ? map4.get(f) : null;
                        C14989s sVar2 = C14989s.f33022a;
                    } else {
                        File file = new File(f);
                        RealmConfiguration.Builder migration = new RealmConfiguration.Builder().directory(file.getParentFile()).name(file.getName()).schemaVersion(1L).migration(C12421b.f28002a);
                        f27994b = i;
                        switch (i) {
                            case 81:
                                obj = new OfflineDbModule();
                                break;
                            case 82:
                                obj = new OfflineDbV82Module();
                                break;
                            case 83:
                                obj = new OfflineDbV83Module();
                                break;
                            default:
                                throw new IllegalArgumentException("Unknown offline DB version " + i);
                        }
                        migration.modules(obj, new Object[0]);
                        RealmConfiguration build = migration.build();
                        Map<String, RealmConfiguration> map5 = f27995c;
                        realmConfiguration = build;
                        if (map5 != null) {
                            map5.put(f, build);
                            realmConfiguration = build;
                        }
                    }
                }
            }
            return Realm.getInstance(realmConfiguration);
        } catch (RealmError e) {
            C13973d4.m2952a(e);
            String str = f27993a;
            LogManager.m28579a(str, "getRealmDatabase with error : " + e.getMessage());
            return null;
        } catch (Exception e2) {
            C13973d4.m2952a(e2);
            String str2 = f27993a;
            LogManager.m28579a(str2, "getRealmDatabase with exception : " + e2.getMessage());
            Map<String, RealmConfiguration> map6 = f27995c;
            if (map6 == null) {
                return null;
            }
            map6.clear();
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static final C12430i m6216a(Realm realm, String str) {
        AbstractC12422e eVar;
        C12430i iVar;
        RealmQuery where;
        RealmQuery equalTo;
        RealmQuery where2;
        RealmQuery equalTo2;
        RealmQuery where3;
        RealmQuery equalTo3;
        C15149k.m377b(str, "number");
        try {
            switch (f27994b) {
                case 81:
                    if (!(realm == null || (where = realm.where(OfflineDb.class)) == null || (equalTo = where.equalTo("number", C14063l4.m2682a(str))) == null)) {
                        eVar = (OfflineDb) equalTo.findFirst();
                        break;
                    }
                    eVar = null;
                    break;
                case 82:
                    if (!(realm == null || (where2 = realm.where(OfflineDbV82.class)) == null || (equalTo2 = where2.equalTo("number", C14063l4.m2682a(str))) == null)) {
                        eVar = (OfflineDbV82) equalTo2.findFirst();
                        break;
                    }
                    eVar = null;
                    break;
                case 83:
                    if (!(realm == null || (where3 = realm.where(OfflineDbV83.class)) == null || (equalTo3 = where3.equalTo("number", f27998f.m6215a(str))) == null)) {
                        eVar = (OfflineDbV83) equalTo3.findFirst();
                        break;
                    }
                    eVar = null;
                    break;
                default:
                    eVar = null;
                    break;
            }
            if (eVar != null) {
                C12430i iVar2 = new C12430i();
                iVar2.f28020b = eVar.getName();
                iVar2.f28022d = eVar.getCateg();
                iVar2.f28019a = eVar.getNumber();
                iVar2.f28021c = eVar.getType();
                iVar2.f28023e = eVar.getHit();
                iVar = iVar2;
            } else {
                iVar = null;
            }
            return iVar;
        } catch (Exception e) {
            C13973d4.m2952a(e);
            String str2 = f27993a;
            LogManager.m28579a(str2, "getRealmDatabase with exception : " + e.getMessage());
            Map<String, RealmConfiguration> map = f27995c;
            if (map == null) {
                return null;
            }
            map.clear();
            return null;
        }
    }

    /* renamed from: a */
    public static final String m6217a(Realm realm, int i) {
        RealmQuery where;
        RealmQuery sort;
        try {
            if (f27996d == null) {
                synchronized (f27998f) {
                    if (f27996d == null) {
                        RealmResults findAll = (realm == null || (where = realm.where(CategMap.class)) == null || (sort = where.sort("id", Sort.ASCENDING)) == null) ? null : sort.findAll();
                        if (findAll != null && findAll.size() > 0) {
                            f27996d = new HashMap();
                            Iterator it = findAll.iterator();
                            while (it.hasNext()) {
                                CategMap categMap = (CategMap) it.next();
                                Map<Integer, String> map = f27996d;
                                if (map != null) {
                                    int realmGet$id = categMap.realmGet$id();
                                    String realmGet$name = categMap.realmGet$name();
                                    C15149k.m383a((Object) realmGet$name, "result.name");
                                    map.put(Integer.valueOf(realmGet$id), realmGet$name);
                                }
                            }
                        }
                    }
                    C14989s sVar = C14989s.f33022a;
                }
            }
            Map<Integer, String> map2 = f27996d;
            return map2 != null ? map2.get(Integer.valueOf(i)) : null;
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: a */
    public static final void m6222a() {
        C6402c.m22795a(C14017g4.m2810n());
    }

    /* renamed from: a */
    public static final void m6218a(AbstractC6377c cVar, boolean z) {
        C15163y yVar = new C15163y();
        yVar.f33151a = System.currentTimeMillis();
        C6402c.m22793a(C14017g4.m2810n(), C14063l4.m2690a(), new C12420a(yVar, cVar, z));
    }

    /* renamed from: a */
    public static final void m6213a(boolean z, AbstractC6378d dVar) {
        C6402c.m22791a(C14017g4.m2810n(), z, C14063l4.m2690a(), dVar);
    }

    /* renamed from: a */
    public static final boolean m6220a(int i, int i2) {
        return (i & i2) == i2;
    }

    /* renamed from: a */
    public static final boolean m6219a(AbstractC6377c cVar) {
        return C6402c.m22792a(C14017g4.m2810n(), cVar);
    }

    /* renamed from: b */
    public static final String m6211b(Realm realm, int i) {
        RealmQuery where;
        RealmQuery sort;
        try {
            if (f27997e == null) {
                synchronized (f27998f) {
                    if (f27997e == null) {
                        RealmResults findAll = (realm == null || (where = realm.where(SourceMap.class)) == null || (sort = where.sort("id", Sort.ASCENDING)) == null) ? null : sort.findAll();
                        if (findAll != null && findAll.size() > 0) {
                            f27997e = new HashMap();
                            Iterator it = findAll.iterator();
                            while (it.hasNext()) {
                                SourceMap sourceMap = (SourceMap) it.next();
                                Map<Integer, String> map = f27997e;
                                if (map != null) {
                                    int realmGet$id = sourceMap.realmGet$id();
                                    String realmGet$name = sourceMap.realmGet$name();
                                    C15149k.m383a((Object) realmGet$name, "result.name");
                                    map.put(Integer.valueOf(realmGet$id), realmGet$name);
                                }
                            }
                        }
                    }
                    C14989s sVar = C14989s.f33022a;
                }
            }
            Map<Integer, String> map2 = f27997e;
            return map2 != null ? map2.get(Integer.valueOf(i)) : null;
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: b */
    public static final void m6212b() {
        C6402c.m22779d();
    }

    /* renamed from: c */
    public static final void m6210c() {
        C6402c.m22776e();
    }

    /* renamed from: d */
    public static final int m6209d() {
        return C6402c.m22784b(C14017g4.m2810n());
    }

    /* renamed from: e */
    public static final int m6208e() {
        return C6402c.m22780c(C14017g4.m2810n());
    }

    /* renamed from: f */
    public static final int m6207f() {
        return C6402c.m22777d(C14017g4.m2810n());
    }

    /* renamed from: g */
    public static final int m6206g() {
        return C6402c.m22775e(C14017g4.m2810n());
    }

    /* renamed from: h */
    public static final Realm m6205h() {
        Realm a = m6221a(83);
        if (a == null) {
            a = m6221a(82);
        }
        if (a == null) {
            a = m6221a(81);
        }
        return a;
    }

    /* renamed from: i */
    public static final int m6204i() {
        return C6402c.m22771g(C14017g4.m2810n());
    }

    /* renamed from: j */
    public static final int m6203j() {
        return C6402c.m22769h(C14017g4.m2810n());
    }

    /* renamed from: k */
    public static final int m6202k() {
        return C6402c.m22767i(C14017g4.m2810n());
    }

    /* renamed from: l */
    public static final boolean m6201l() {
        return C6402c.m22766j(C14017g4.m2810n());
    }

    /* renamed from: m */
    public static final boolean m6200m() {
        return C6402c.m22764l(C14017g4.m2810n());
    }

    /* renamed from: n */
    public static final boolean m6199n() {
        return !m6200m() || m6201l();
    }

    /* renamed from: a */
    public final String m6215a(String str) {
        String str2 = m6209d() == 0 ? ExifInterface.LONGITUDE_EAST : "F";
        int e = m6208e();
        String str3 = str;
        if (C14108o4.m2475k(str)) {
            String l = C14108o4.m2474l(str);
            C15149k.m383a((Object) l, "UtilsTelephony.parseE164Number(number)");
            str3 = C14966w.m718a(l, "+", "", false, 4, (Object) null);
        }
        String a = C14966w.m718a(C14966w.m718a(C14966w.m718a(str3, "*", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, false, 4, (Object) null), "#", "B", false, 4, (Object) null), "+", "C", false, 4, (Object) null);
        String str4 = str2 + e + a;
        String encodeToString = Base64.encodeToString(C13026i.m4760a(C14966w.m723a((CharSequence) str4, 32 / str4.length()) + C14973z.m664d(str4, 32 % str4.length())), 2);
        C15149k.m383a((Object) encodeToString, "\"$dbType$dbVersion$parse…ing(it, Base64.NO_WRAP) }");
        String a2 = C14966w.m718a(encodeToString, "+", MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM, false, 4, (Object) null);
        String a3 = C15199a.m254a(a, "$2a$09$" + C14973z.m664d(a2, 22));
        C15149k.m383a((Object) a3, "\"$dbType$dbVersion$parse…ashpw(parsedNumber, it) }");
        return C14973z.m663e(a3, 31);
    }
}
