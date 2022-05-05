package p081h.p160h.p179e.p180a.p188o;

import androidx.exifinterface.media.ExifInterface;
import androidx.media2.session.SessionCommand;
import com.gogolook.whoscallsdk.core.offlinedb.PersonalOfflineDbModule;
import com.mopub.common.AdType;
import gogolook.callgogolook2.p074ad.AdUtils;
import io.realm.DynamicRealm;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmMigration;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.exceptions.RealmError;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.C6341b;
import p081h.p160h.p179e.p180a.C6344e;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6376b;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p186m.C6375a;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p081h.p160h.p179e.p180a.p190p.C6440k;
import p081h.p160h.p179e.p180a.p190p.p191f.C6433a;
import p081h.p160h.p179e.p180a.p190p.p191f.C6435c;
import p626l.C14985o;
import p626l.C14989s;
import p626l.p631e0.C14966w;
import p626l.p632u.C15005e0;
import p626l.p640y.C15086c;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\u0018�� G2\u00020\u0001:\u0001GB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\nH\u0002J\"\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u001a\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0002J*\u0010\u0017\u001a\u0004\u0018\u00010\u0005\"\b\b��\u0010\u0018*\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00062\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001cH\u0016J\u001b\u0010\u001d\u001a\u00020\n\"\u0004\b��\u0010\u00182\u0006\u0010\u001e\u001a\u0002H\u0018H\u0016¢\u0006\u0002\u0010\u001fJ\b\u0010 \u001a\u00020\u0005H\u0016J\b\u0010!\u001a\u00020\u0006H\u0002J\b\u0010\"\u001a\u00020\u0005H\u0016J\n\u0010#\u001a\u0004\u0018\u00010\u0015H\u0002J\u001b\u0010$\u001a\u00020\n\"\u0004\b��\u0010\u00182\u0006\u0010%\u001a\u0002H\u0018H\u0016¢\u0006\u0002\u0010\u001fJ/\u0010&\u001a\u0004\u0018\u0001H\u0018\"\b\b��\u0010\u0018*\u00020\u00192\u0006\u0010'\u001a\u00020\u00052\f\u0010(\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001cH\u0016¢\u0006\u0002\u0010)J\b\u0010*\u001a\u00020\u0005H\u0002J\n\u0010+\u001a\u0004\u0018\u00010,H\u0002J*\u0010-\u001a\u0004\u0018\u00010\u0005\"\b\b��\u0010\u0018*\u00020\u00192\u0006\u0010.\u001a\u00020\u00062\f\u0010/\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001cH\u0016J\b\u00100\u001a\u000201H\u0016J\u0010\u00102\u001a\u00020\n2\u0006\u00103\u001a\u00020\u0005H\u0016J\b\u00104\u001a\u000201H\u0016J\b\u00105\u001a\u000201H\u0016J\b\u00106\u001a\u000201H\u0016J\u0012\u00107\u001a\u0002012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u00108\u001a\u0002012\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\b\u00109\u001a\u00020\nH\u0016J*\u0010:\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010;\u001a\u0002012\u0006\u0010\u0010\u001a\u00020\u00062\b\u0010<\u001a\u0004\u0018\u00010=H\u0016J\"\u0010>\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0002J\u001a\u0010?\u001a\u00020\n2\u0006\u0010@\u001a\u00020\u00062\b\u0010A\u001a\u0004\u0018\u00010BH\u0002J\u0010\u0010C\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J \u0010D\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010E\u001a\u00020FH\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006H"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/offlinedb/OfflineDbPersonal;", "Lcom/gogolook/whoscallsdk/core/offlinedb/SdkOfflineDb;", "()V", "dbTypeMap", "", "", "", "mRealmConfig", "Lio/realm/RealmConfiguration;", "cancelDownload", "", AdType.CLEAR, "clearApiCache", "clearDbInfo", "downloadOfflineDb", "region", "dbType", "fileProgressCallback", "Lcom/gogolook/whoscallsdk/core/net/WCFileProgressCallback;", "downloadPersonalOfflineDb", "personalDbData", "Lcom/gogolook/whoscallsdk/core/offlinedb/PersonalDbData;", "callback", "getCategoryName", ExifInterface.GPS_DIRECTION_TRUE, "Lio/realm/RealmObject;", "category", "categoryClass", "Ljava/lang/Class;", "getCurrentDbInfoObj", "currentDbInfo", "(Ljava/lang/Object;)V", "getCurrentRegion", "getCurrentVersion", "getDbPath", "getDbPrefsInfo", "getNextDbInfoObj", "nextdDbInfo", "getOfflineDbItem", "hashedNum", "dbClass", "(Ljava/lang/String;Ljava/lang/Class;)Lio/realm/RealmObject;", "getPersonalOfflineDbUrl", "getRealmDatabase", "Lio/realm/Realm;", "getSourceName", "source", "sourceMapClass", "hasNewVersion", "", "init", "path", "isDbExist", "isDbFileExists", "isDownloaded", "isDownloading", "isRegionChange", "logStatus", "refreshStatus", "force", "refreshCallback", "Lcom/gogolook/whoscallsdk/core/net/WCHttpCallback;", "refreshStatusAndDownloadDb", "sendRefreshCallback", "statusCode", "jsonObj", "Lorg/json/JSONObject;", "updateDownloadedInfo", "updateNextDbInfo", "currentTime", "", "Companion", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.a.o.j */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/j.class */
public final class C6422j extends AbstractC6408e {

    /* renamed from: d */
    public RealmConfiguration f16024d;

    /* renamed from: e */
    public final Map<String, Integer> f16025e = C15005e0.m621b(C14985o.m644a("basic", 0), C14985o.m644a("premium", 1));

    /* renamed from: h.h.e.a.o.j$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/j$a.class */
    public static final class C6423a {
        public C6423a() {
        }

        public /* synthetic */ C6423a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: h.h.e.a.o.j$b */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/j$b.class */
    public static final class C6424b extends AbstractC6376b {

        /* renamed from: b */
        public final /* synthetic */ C6406d f16027b;

        /* renamed from: c */
        public final /* synthetic */ C6375a f16028c;

        /* renamed from: d */
        public final /* synthetic */ String f16029d;

        public C6424b(C6406d dVar, C6375a aVar, String str) {
            this.f16027b = dVar;
            this.f16028c = aVar;
            this.f16029d = str;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22663a() {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22662a(int i, ArrayList<AbstractC6377c> arrayList) {
            C6438i.m22579c("[Personal offlineDb] onProgressUpdate : " + i);
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    AbstractC6377c cVar = arrayList.get(i2);
                    if (cVar != null) {
                        cVar.mo1445a(i);
                    }
                }
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22661a(String str) {
            C15149k.m377b(str, "lastModified");
            if (!C14966w.m724a((CharSequence) str)) {
                C6334a.m23211s().m23226d("prefs_personal_db_last_modified", str);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22660a(ArrayList<AbstractC6377c> arrayList) {
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    AbstractC6377c cVar = arrayList.get(i);
                    if (cVar != null) {
                        cVar.mo1446a();
                    }
                }
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22659a(ArrayList<AbstractC6377c> arrayList, C6429b bVar) {
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    AbstractC6377c cVar = arrayList.get(i);
                    if (cVar != null) {
                        cVar.mo1444a(bVar);
                    }
                }
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: b */
        public void mo22658b() {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: b */
        public void mo22657b(ArrayList<AbstractC6377c> arrayList) {
            C6438i.m22579c("[Personal offlineDb] onDownloadEnd");
            if (C6410f.m22737a(this.f16027b.m22762a(), new File(this.f16028c.f15864c))) {
                C6438i.m22579c("[Personal offlineDb] downloadPersonalOfflineDb check md5 successfully");
                String str = this.f16029d + ".tmp";
                if (C6440k.m22566a(this.f16028c.f15864c, str)) {
                    C6438i.m22579c("[Personal offlineDb] downloadPersonalOfflineDb unzip successfully");
                    C6410f.m22738a(this.f16029d);
                    C6410f.m22738a(this.f16028c.f15864c);
                    File file = new File(str);
                    if (file.exists()) {
                        file.renameTo(new File(this.f16029d));
                    }
                    C6422j.this.m22689a(this.f16027b);
                    return;
                }
                C6438i.m22579c("[Personal offlineDb] downloadPersonalOfflineDb unzip failed");
                throw new C6435c("downloadPersonalOfflineDb unzip failed");
            }
            C6438i.m22579c("[Personal offlineDb] downloadPersonalOfflineDb check md5 failed");
            C6410f.m22738a(this.f16028c.f15864c);
            throw new C6433a("CheckSum Error");
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: c */
        public void mo22656c(ArrayList<AbstractC6377c> arrayList) {
            C6438i.m22579c("[Personal offlineDb] onDownloadStart");
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    AbstractC6377c cVar = arrayList.get(i);
                    if (cVar != null) {
                        cVar.mo1442c();
                    }
                }
            }
        }
    }

    /* renamed from: h.h.e.a.o.j$c */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/j$c.class */
    public static final class C6425c implements RealmMigration {

        /* renamed from: a */
        public static final C6425c f16030a = new C6425c();

        @Override // io.realm.RealmMigration
        public final void migrate(DynamicRealm dynamicRealm, long j, long j2) {
        }
    }

    /* renamed from: h.h.e.a.o.j$d */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/j$d.class */
    public static final class C6426d extends AbstractC6378d {

        /* renamed from: b */
        public final /* synthetic */ long f16032b;

        /* renamed from: c */
        public final /* synthetic */ boolean f16033c;

        /* renamed from: d */
        public final /* synthetic */ int f16034d;

        /* renamed from: e */
        public final /* synthetic */ String f16035e;

        /* renamed from: f */
        public final /* synthetic */ String f16036f;

        public C6426d(long j, boolean z, int i, String str, String str2) {
            this.f16032b = j;
            this.f16033c = z;
            this.f16034d = i;
            this.f16035e = str;
            this.f16036f = str2;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            int i2;
            C6438i.m22578d("[Personal offlineDb] refresh status response, statusCode = " + i + ", object = " + jSONObject);
            if (i == 200 && jSONObject != null) {
                C6334a.m23211s().m23235b("prefs_personal_db_sync_time", this.f16032b);
                if (this.f16033c) {
                    C6438i.m22578d("[Personal offlineDb] clear offline db data since region changed");
                    C6422j.this.m22666j();
                }
                C6406d a = C6406d.f15948i.m22747a(jSONObject);
                if (a != null && ((i2 = this.f16034d) == 0 || i2 != a.m22748g())) {
                    C6438i.m22578d("[Personal offlineDb] updateNextDbInfo");
                    C6422j.this.m22687a(a, this.f16035e, this.f16032b);
                }
            } else if (i == 204) {
                C6334a.m23211s().m23235b("prefs_personal_db_sync_time", this.f16032b);
                C6438i.m22579c("[Personal OfflineDb] refresh status failed, statusCode = " + i);
            }
            C6357a.m23033a(this.f16036f, i, (int) SessionCommand.COMMAND_CODE_PLAYER_SET_SPEED);
            C6422j.this.m22691a(i, jSONObject);
        }
    }

    /* renamed from: h.h.e.a.o.j$e */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/j$e.class */
    public static final class C6427e extends AbstractC6378d {

        /* renamed from: b */
        public final /* synthetic */ AbstractC6377c f16038b;

        public C6427e(AbstractC6377c cVar) {
            this.f16038b = cVar;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            if (i == 200) {
                C6406d i2 = C6422j.this.m22667i();
                if (i2 != null) {
                    C6438i.m22579c("[Personal offlineDb] refreshStatusAndDownloadDb prepare downloadPersonalOfflineDb database after refresh status");
                    C6422j.this.m22688a(i2, this.f16038b);
                    return;
                }
            } else if (i == 204) {
                AbstractC6377c cVar = this.f16038b;
                if (cVar != null) {
                    cVar.mo1443b();
                    return;
                }
                return;
            }
            AbstractC6377c cVar2 = this.f16038b;
            if (cVar2 != null) {
                cVar2.mo1444a(new C6429b(-207, String.valueOf(i)));
            }
        }
    }

    static {
        new C6423a(null);
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: a */
    public <T extends RealmObject> T mo22678a(String str, Class<T> cls) {
        T t;
        RealmQuery equalTo;
        C15149k.m377b(str, "hashedNum");
        C15149k.m377b(cls, "dbClass");
        Realm g = m22669g();
        if (g != null) {
            try {
                RealmQuery where = g.where(cls);
                t = (T) ((RealmObject) g.copyFromRealm((Realm) ((where == null || (equalTo = where.equalTo("number", str)) == null) ? null : (RealmObject) equalTo.findFirst())));
            } catch (Exception e) {
                t = null;
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                    C15086c.m447a(g, th);
                }
            }
            Throwable th2 = null;
        } else {
            t = null;
        }
        return t;
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: a */
    public void mo22692a() {
        C6334a s = C6334a.m23211s();
        s.m23254a("personal_db_" + C6364a.m22969e());
    }

    /* renamed from: a */
    public final void m22691a(int i, JSONObject jSONObject) {
        Iterator<AbstractC6378d> it = m22743d().iterator();
        while (it.hasNext()) {
            AbstractC6378d next = it.next();
            if (next != null) {
                try {
                    next.mo1272a(i, jSONObject);
                } catch (Throwable th) {
                }
            }
        }
        m22743d().clear();
    }

    /* renamed from: a */
    public final void m22689a(C6406d dVar) {
        C6334a s = C6334a.m23211s();
        C15149k.m383a((Object) s, "WCApiManager.getInstance()");
        s.m23216n().edit().putString("prefs_personal_db_update_time", dVar.m22751e()).putString("prefs_personal_db_type", dVar.m22756c()).putInt("prefs_personal_db_version", dVar.m22748g()).putInt("prefs_personal_db_total_num", dVar.m22753d()).putInt("prefs_personal_db_cid", dVar.m22759b()).apply();
    }

    /* renamed from: a */
    public final void m22688a(C6406d dVar, AbstractC6377c cVar) {
        synchronized (this) {
            if (dVar != null) {
                if (C6364a.m22991a() != null) {
                    String str = m22744c() + "personal_OfflineDb.realm";
                    C6375a aVar = new C6375a();
                    aVar.f15863b = dVar.m22749f();
                    aVar.f15865d = "personal_db_" + C6364a.m22969e();
                    aVar.f15864c = str + ".lzma";
                    aVar.f15866e = C6334a.m23211s().m23234b("prefs_personal_db_last_modified", "");
                    aVar.m22912a(cVar);
                    aVar.f15862a = C6364a.m22991a();
                    aVar.f15867f = new C6424b(dVar, aVar, str);
                    C6334a.m23211s().m23255a(aVar);
                    return;
                }
            }
            if (C6364a.m22991a() == null) {
                C6438i.m22579c("[Personal offlineDb] downloadPersonalOfflineDb failed, statusCode = -5");
            }
            int i = dVar == null ? -700 : -5;
            if (cVar != null) {
                cVar.mo1444a(new C6429b(i, ""));
            }
        }
    }

    /* renamed from: a */
    public final void m22687a(C6406d dVar, String str, long j) {
        C6334a s = C6334a.m23211s();
        C15149k.m383a((Object) s, "WCApiManager.getInstance()");
        s.m23216n().edit().putString("prefs_next_personal_db_type", dVar.m22756c()).putInt("prefs_next_personal_db_version", dVar.m22748g()).putInt("prefs_next_personal_db_total_num", dVar.m22753d()).putInt("prefs_next_personal_db_cid", dVar.m22759b()).putString("prefs_personal_db_region", str).putLong("prefs_personal_db_sync_time", j).putString("prefs_personal_db_last_modified", "").apply();
        C6334a.m23211s().m23233b("prefs_personal_db_api_data", dVar.toString(), true);
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: a */
    public <T> void mo22681a(T t) {
        if (t instanceof C6406d) {
            C6406d dVar = (C6406d) t;
            String b = C6334a.m23211s().m23234b("prefs_personal_db_update_time", "");
            C15149k.m383a((Object) b, "WCApiManager.getInstance…FLINE_DB_UPDATE_TIME, \"\")");
            dVar.m22752d(b);
            dVar.m22758b(C6334a.m23211s().m23253a("prefs_personal_db_total_num", 0));
            dVar.m22761a(C6334a.m23211s().m23253a("prefs_personal_db_cid", -1));
            dVar.m22755c(C6334a.m23211s().m23253a("prefs_personal_db_version", 0));
            String b2 = C6334a.m23211s().m23234b("prefs_personal_db_type", "basic");
            C15149k.m383a((Object) b2, "WCApiManager.getInstance…, PERSONAL_DB_TYPE_BASIC)");
            dVar.m22757b(b2);
        }
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: a */
    public void mo22680a(String str) {
        C15149k.m377b(str, "path");
        m22745b(str);
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: a */
    public void mo22679a(String str, int i, AbstractC6377c cVar) {
        C15149k.m377b(str, "region");
        m22673b(str, i, cVar);
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: a */
    public void mo22677a(String str, boolean z, int i, AbstractC6378d dVar) {
        C15149k.m377b(str, "region");
        if (!C14966w.m724a((CharSequence) str)) {
            AbstractC6408e.f15957c.m22742a(i);
            if (C6364a.m22991a() == null) {
                C6438i.m22579c("[Personal offlineDb] refresh status failed, statusCode = -5");
                if (dVar != null) {
                    dVar.mo1272a(-5, null);
                    return;
                }
                return;
            }
            m22743d().add(dVar);
            if (m22743d().size() <= 1) {
                long currentTimeMillis = System.currentTimeMillis();
                boolean c = m22672c(str);
                int h = c ? 0 : m22668h();
                boolean z2 = currentTimeMillis - C6334a.m23211s().m23252a("prefs_personal_db_sync_time", 0L) > AdUtils.ONE_DAY;
                C6438i.m22579c("[Personal offlineDb] prepare refresh status, version = " + h + ", isExpired = " + z2);
                if (h == 0 || z2 || z) {
                    C6341b bVar = new C6341b();
                    StringBuilder sb = new StringBuilder();
                    sb.append(m22665k());
                    C15136c0 c0Var = C15136c0.f33133a;
                    Object[] objArr = {str, Integer.valueOf(i)};
                    String format = String.format("/offline/personal/android/v1.0/%s?tp=%s", Arrays.copyOf(objArr, objArr.length));
                    C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
                    sb.append(format);
                    String sb2 = sb.toString();
                    bVar.f15755a = sb2;
                    bVar.f15756b = "GET";
                    bVar.f15765k = false;
                    bVar.f15770p = true;
                    bVar.f15758d = C6364a.m22991a();
                    bVar.f15760f = new C6426d(currentTimeMillis, c, h, str, sb2);
                    C6334a.m23211s().m23238b(bVar);
                    return;
                }
                C6438i.m22578d("[Personal OfflineDb] is not expired or version != 0 : region = " + str + ", currentVersion = " + h);
                m22691a(200, (JSONObject) null);
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: a */
    public boolean mo22690a(AbstractC6377c cVar) {
        C6334a s = C6334a.m23211s();
        return s.m23249a("personal_db_" + C6364a.m22969e(), cVar);
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: b */
    public void mo22676b() {
        C6334a.m23211s().m23235b("prefs_personal_db_sync_time", 0L);
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: b */
    public <T> void mo22674b(T t) {
        if (t instanceof C6406d) {
            C6406d dVar = (C6406d) t;
            dVar.m22758b(C6334a.m23211s().m23253a("prefs_next_personal_db_total_num", 0));
            dVar.m22761a(C6334a.m23211s().m23253a("prefs_next_personal_db_cid", -1));
            dVar.m22755c(C6334a.m23211s().m23253a("prefs_next_personal_db_version", 0));
            String b = C6334a.m23211s().m23234b("prefs_next_personal_db_type", "basic");
            C15149k.m383a((Object) b, "WCApiManager.getInstance…, PERSONAL_DB_TYPE_BASIC)");
            dVar.m22757b(b);
        }
    }

    /* renamed from: b */
    public final void m22673b(String str, int i, AbstractC6377c cVar) {
        Integer num;
        if (!(str == null || C14966w.m724a((CharSequence) str))) {
            AbstractC6408e.f15957c.m22742a(i);
            if (m22672c(str)) {
                C6438i.m22578d("[Personal offlineDb] refreshStatusAndDownloadDb clear offline db data since region changed");
                m22666j();
            }
            int h = m22668h();
            int a = C6334a.m23211s().m23253a("prefs_next_personal_db_version", 0);
            if (h == 0 || h != a) {
                C6438i.m22579c("[Personal offlineDb] refreshStatusAndDownloadDb prepare refreshStatusAndDownloadDb database with version : " + a);
                if (mo22690a(cVar)) {
                    if (cVar != null) {
                        cVar.mo1442c();
                    }
                    C6438i.m22579c("[Personal offlineDb] refreshStatusAndDownloadDb downloading...");
                    return;
                }
                C6406d i2 = m22667i();
                if (i2 == null || (num = this.f16025e.get(i2.m22756c())) == null || num.intValue() != i) {
                    C6438i.m22579c("[Personal offlineDb] refreshStatusAndDownloadDb - start refresh status");
                    mo22677a(str, true, i, (AbstractC6378d) new C6427e(cVar));
                    return;
                }
                m22688a(i2, cVar);
                return;
            }
            C6438i.m22579c("[Personal offlineDb] refreshStatusAndDownloadDb no need to download...");
            if (cVar != null) {
                cVar.mo1443b();
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: c */
    public final boolean m22672c(String str) {
        return !C15149k.m384a((Object) str, (Object) C6334a.m23211s().m23234b("prefs_personal_db_region", ""));
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: e */
    public boolean mo22671e() {
        boolean z = false;
        if (C6334a.m23211s().m23253a("prefs_personal_db_version", 0) != C6334a.m23211s().m23253a("prefs_next_personal_db_version", 0)) {
            z = true;
        }
        return z;
    }

    @Override // p081h.p160h.p179e.p180a.p188o.AbstractC6408e
    /* renamed from: f */
    public boolean mo22670f() {
        boolean z = false;
        if (C6334a.m23211s().m23253a("prefs_personal_db_version", 0) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: g */
    public final Realm m22669g() {
        try {
            if (this.f16024d == null) {
                synchronized (this) {
                    if (this.f16024d == null) {
                        File file = new File(m22664l());
                        C6334a s = C6334a.m23211s();
                        C15149k.m383a((Object) s, "WCApiManager.getInstance()");
                        Realm.init(s.m23221i());
                        this.f16024d = new RealmConfiguration.Builder().directory(file.getParentFile()).name(file.getName()).schemaVersion(1L).modules(new PersonalOfflineDbModule(), new Object[0]).migration(C6425c.f16030a).build();
                    }
                    C14989s sVar = C14989s.f33022a;
                }
            }
            return Realm.getInstance(this.f16024d);
        } catch (RealmError e) {
            C6438i.m22579c("[Personal offlineDb] getRealmDatabase with error : " + e.getMessage());
            return null;
        } catch (Exception e2) {
            C6438i.m22579c("[Personal offlineDb] getRealmDatabase with exception : " + e2.getMessage());
            return null;
        }
    }

    /* renamed from: h */
    public final int m22668h() {
        return C6334a.m23211s().m23253a("prefs_personal_db_version", 0);
    }

    /* renamed from: i */
    public final C6406d m22667i() {
        C6406d dVar = null;
        String a = C6334a.m23211s().m23246a("prefs_personal_db_api_data", (String) null, true);
        C6438i.m22578d("[Personal offlineDb] api_data = " + a);
        boolean z = true;
        if (a != null) {
            z = C14966w.m724a((CharSequence) a);
        }
        if (z) {
            return null;
        }
        try {
            dVar = C6406d.f15948i.m22747a(new JSONObject(a));
        } catch (JSONException e) {
        }
        return dVar;
    }

    /* renamed from: j */
    public final void m22666j() {
        C6334a s = C6334a.m23211s();
        C15149k.m383a((Object) s, "WCApiManager.getInstance()");
        s.m23216n().edit().putString("prefs_personal_db_update_time", "").putString("prefs_personal_db_type", "basic").putString("prefs_next_personal_db_type", "basic").putString("prefs_personal_db_api_data", "").putInt("prefs_personal_db_version", 0).putInt("prefs_next_personal_db_version", 0).putInt("prefs_personal_db_total_num", 0).putInt("prefs_next_personal_db_total_num", 0).putString("prefs_personal_db_region", "").putLong("prefs_personal_db_sync_time", 0L).putString("prefs_personal_db_last_modified", "").putInt("prefs_personal_db_cid", -1).putInt("prefs_next_personal_db_cid", -1).apply();
    }

    /* renamed from: k */
    public final String m22665k() {
        return C6344e.m23186g() ? "https://apiscdn.whoscall.com" : "https://apiscdn-staging.whoscall.com";
    }

    /* renamed from: l */
    public String m22664l() {
        return m22744c() + "personal_OfflineDb.realm";
    }
}
