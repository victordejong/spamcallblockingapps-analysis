package p081h.p160h.p179e.p180a.p188o;

import android.text.TextUtils;
import androidx.multidex.MultiDexExtractor;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.C6341b;
import p081h.p160h.p179e.p180a.C6343d;
import p081h.p160h.p179e.p180a.C6344e;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p183i.C6359b;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6376b;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p186m.C6375a;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p081h.p160h.p179e.p180a.p190p.p191f.C6433a;
import p081h.p160h.p179e.p180a.p190p.p191f.C6434b;
import p081h.p160h.p179e.p180a.p190p.p191f.C6435c;
/* renamed from: h.h.e.a.o.c */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/c.class */
public class C6402c {

    /* renamed from: a */
    public static final AtomicInteger f15930a = new AtomicInteger(0);

    /* renamed from: b */
    public static List<AbstractC6378d> f15931b = Collections.synchronizedList(new ArrayList());

    /* renamed from: c */
    public static String f15932c = "";

    /* renamed from: h.h.e.a.o.c$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/c$a.class */
    public static final class C6403a extends AbstractC6378d {

        /* renamed from: a */
        public final /* synthetic */ boolean f15933a;

        /* renamed from: b */
        public final /* synthetic */ long f15934b;

        /* renamed from: c */
        public final /* synthetic */ boolean f15935c;

        /* renamed from: d */
        public final /* synthetic */ boolean f15936d;

        /* renamed from: e */
        public final /* synthetic */ int f15937e;

        /* renamed from: f */
        public final /* synthetic */ int f15938f;

        /* renamed from: g */
        public final /* synthetic */ String f15939g;

        /* renamed from: h */
        public final /* synthetic */ String f15940h;

        public C6403a(boolean z, long j, boolean z2, boolean z3, int i, int i2, String str, String str2) {
            this.f15933a = z;
            this.f15934b = j;
            this.f15935c = z2;
            this.f15936d = z3;
            this.f15937e = i;
            this.f15938f = i2;
            this.f15939g = str;
            this.f15940h = str2;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            if (i != 200 || jSONObject == null) {
                C6438i.m22579c("[OfflineDb] refresh status failed, statusCode = " + i + ", isForce = " + this.f15933a);
            } else {
                C6438i.m22579c("[OfflineDb] refresh status success, statusCode = " + i + ", object = " + jSONObject.toString() + ", isForce = " + this.f15933a);
                C6334a.m23211s().m23235b("prefs_offlinedb_synctime", this.f15934b);
                if (this.f15935c || this.f15936d) {
                    C6438i.m22578d("[OfflineDb] clear offlinedb data since 'region changed' or 'db type changed'");
                    C6402c.m22774f();
                }
                C6420h a = C6420h.m22693a(jSONObject);
                C6402c.m22781c(a);
                if (this.f15937e == 0 || this.f15938f != a.f16010a) {
                    if (!TextUtils.isEmpty(a.f16021l) && !C6410f.m22735b(C6402c.m22772g())) {
                        C6438i.m22578d("[OfflineDb] remove diffurl since backup file not exist");
                        a.f16021l = "";
                    }
                    C6402c.m22785b(a, this.f15939g, this.f15934b);
                }
            }
            C6357a.m23033a(this.f15940h, i, 10001);
            C6402c.m22787b(i, jSONObject);
        }
    }

    /* renamed from: h.h.e.a.o.c$b */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/c$b.class */
    public static final class C6404b extends AbstractC6378d {

        /* renamed from: a */
        public final /* synthetic */ int f15941a;

        /* renamed from: b */
        public final /* synthetic */ String f15942b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC6377c f15943c;

        public C6404b(int i, String str, AbstractC6377c cVar) {
            this.f15941a = i;
            this.f15942b = str;
            this.f15943c = cVar;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            C6420h a;
            if (i != 200 || (a = C6420h.m22694a(C6334a.m23211s().m23246a("prefs_offlinedb_api_data", "", true))) == null) {
                AbstractC6377c cVar = this.f15943c;
                if (cVar != null) {
                    cVar.mo1444a(new C6429b(-207, String.valueOf(i)));
                    return;
                }
                return;
            }
            C6438i.m22579c("[OfflineDb] prepare download database after refresh status");
            C6402c.m22788b(this.f15941a, this.f15942b, a, this.f15943c);
        }
    }

    /* renamed from: h.h.e.a.o.c$c */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/c$c.class */
    public static final class C6405c extends AbstractC6376b {

        /* renamed from: a */
        public final /* synthetic */ int f15944a;

        /* renamed from: b */
        public final /* synthetic */ C6375a f15945b;

        /* renamed from: c */
        public final /* synthetic */ C6420h f15946c;

        /* renamed from: d */
        public final /* synthetic */ String f15947d;

        public C6405c(int i, C6375a aVar, C6420h hVar, String str) {
            this.f15944a = i;
            this.f15945b = aVar;
            this.f15946c = hVar;
            this.f15947d = str;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22663a() {
            C6402c.m22789b(this.f15944a, (int) System.currentTimeMillis(), 9, "onPostExecute");
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22662a(int i, ArrayList<AbstractC6377c> arrayList) {
            int i2 = this.f15944a;
            int currentTimeMillis = (int) System.currentTimeMillis();
            C6402c.m22789b(i2, currentTimeMillis, 7, "onProgressUpdate, progress: " + i + "; callback size: " + arrayList.size());
            if (arrayList != null) {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    if (arrayList.get(i3) != null) {
                        arrayList.get(i3).mo1445a(i);
                    }
                }
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22661a(String str) {
            int i = this.f15944a;
            int currentTimeMillis = (int) System.currentTimeMillis();
            C6402c.m22789b(i, currentTimeMillis, 12, "lastModified: " + str);
            if (!TextUtils.isEmpty(str)) {
                C6334a.m23211s().m23226d("prefs_last_modified", str);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22660a(ArrayList<AbstractC6377c> arrayList) {
            C6402c.m22789b(this.f15944a, (int) System.currentTimeMillis(), 11, "onCancel");
            if (arrayList != null) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (arrayList.get(i) != null) {
                        arrayList.get(i).mo1446a();
                    }
                }
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: a */
        public void mo22659a(ArrayList<AbstractC6377c> arrayList, C6429b bVar) {
            int i = this.f15944a;
            int currentTimeMillis = (int) System.currentTimeMillis();
            C6402c.m22789b(i, currentTimeMillis, 10, "onError, errorCode: " + bVar.m22647a() + "; errorMsg: " + bVar.m22646b());
            if (arrayList != null) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (arrayList.get(i2) != null) {
                        arrayList.get(i2).mo1444a(bVar);
                    }
                }
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: b */
        public void mo22658b() {
            C6402c.m22789b(this.f15944a, (int) System.currentTimeMillis(), 5, "onPreExecute");
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: b */
        public void mo22657b(ArrayList<AbstractC6377c> arrayList) {
            int i = this.f15944a;
            int currentTimeMillis = (int) System.currentTimeMillis();
            C6402c.m22789b(i, currentTimeMillis, 8, "onDownloadEnd; callback size: " + arrayList.size());
            if (!C6410f.m22734c(this.f15945b.f15864c)) {
                C6438i.m22579c("[OfflineDb] downloadOfflineDb unzip failed");
                throw new C6435c("downloadOfflineDb unzip failed");
            } else if (!TextUtils.isEmpty(this.f15946c.f16021l)) {
                C6438i.m22579c("[OfflineDb] handle diff case");
                String str = this.f15947d;
                if (C6410f.m22736a(str, this.f15947d + ".tmp", this.f15946c.f16022m)) {
                    C6410f.m22738a(this.f15947d + MultiDexExtractor.EXTRACTED_SUFFIX);
                    C6402c.m22778d(this.f15946c);
                    C6438i.m22579c("[OfflineDb] merge diff successed");
                    return;
                }
                C6438i.m22579c("[OfflineDb] merge diff failed, will do full download next time");
                this.f15946c.f16021l = "";
                C6334a.m23211s().m23233b("prefs_offlinedb_api_data", this.f15946c.toString(), true);
                C6410f.m22738a(C6402c.m22772g());
                C6410f.m22738a(this.f15947d + MultiDexExtractor.EXTRACTED_SUFFIX);
                C6410f.m22738a(this.f15947d + ".tmp");
                throw new C6434b("Diff Error");
            } else {
                C6438i.m22579c("[OfflineDb] handle full download case");
                String str2 = this.f15946c.f16022m;
                if (C6410f.m22737a(str2, new File(this.f15947d + ".tmp"))) {
                    C6410f.m22738a(this.f15947d);
                    C6410f.m22738a(this.f15947d + MultiDexExtractor.EXTRACTED_SUFFIX);
                    File file = new File(this.f15947d + ".tmp");
                    if (file.exists()) {
                        C6410f.m22740a(new File(C6402c.f15932c), file);
                        file.renameTo(new File(this.f15947d));
                    }
                    C6402c.m22778d(this.f15946c);
                    C6438i.m22579c("[OfflineDb] full download successed");
                    return;
                }
                C6438i.m22579c("[OfflineDb] full download failed");
                C6410f.m22738a(this.f15947d + MultiDexExtractor.EXTRACTED_SUFFIX);
                C6410f.m22738a(this.f15947d + ".tmp");
                throw new C6433a("CheckSum Error");
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6376b
        /* renamed from: c */
        public void mo22656c(ArrayList<AbstractC6377c> arrayList) {
            int i = this.f15944a;
            int currentTimeMillis = (int) System.currentTimeMillis();
            C6402c.m22789b(i, currentTimeMillis, 6, "onDownloadStart, callback size: " + arrayList.size());
            if (arrayList != null) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (arrayList.get(i2) != null) {
                        arrayList.get(i2).mo1442c();
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static int m22802a(int i, int i2) {
        int i3 = (i2 * 5) / 100;
        int i4 = (i2 * 40) / 100;
        for (int i5 = 0; i5 < 5 && (i < i3 || i > i4); i5++) {
            i = i < i3 ? i + i3 : i / 2;
        }
        return i;
    }

    /* renamed from: a */
    public static int m22794a(String str, int i) {
        if (!m22763m(str)) {
            return 0;
        }
        return i == 0 ? C6334a.m23211s().m23253a("prefs_offlinedb_basic_num", 0) : C6334a.m23211s().m23253a("prefs_offlinedb_premium_num", 0);
    }

    /* renamed from: a */
    public static void m22795a(String str) {
        C6334a.m23211s().m23254a(str);
    }

    /* renamed from: a */
    public static void m22793a(String str, int i, AbstractC6377c cVar) {
        synchronized (C6402c.class) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    AbstractC6408e.m22746a(i);
                    int incrementAndGet = f15930a.incrementAndGet();
                    int a = C6334a.m23211s().m23253a("prefs_offlinedb_version", 0);
                    int a2 = C6334a.m23211s().m23253a("prefs_next_offlinedb_version", 0);
                    int currentTimeMillis = (int) System.currentTimeMillis();
                    m22789b(incrementAndGet, currentTimeMillis, 0, "[startDownloadOfflineDb] dbType: " + i + "; region: " + str + "; currentVersion: " + a + "; nextVersion: " + a2);
                    if (m22803a(a) || a != a2) {
                        C6438i.m22579c("[OfflineDb] prepare download database with version : " + a2);
                        if (C6334a.m23211s().m23249a(str, cVar)) {
                            if (cVar != null) {
                                cVar.mo1442c();
                            }
                            m22789b(incrementAndGet, (int) System.currentTimeMillis(), 1, "downloadOfflineDb : downloading...");
                        } else {
                            C6420h a3 = C6420h.m22694a(C6334a.m23211s().m23246a("prefs_offlinedb_api_data", "", true));
                            if (a3 != null && a3.f16011b == i) {
                                m22788b(incrementAndGet, str, a3, cVar);
                            }
                            m22789b(incrementAndGet, (int) System.currentTimeMillis(), 3, "start auto refresh");
                            m22791a(str, true, i, (AbstractC6378d) new C6404b(incrementAndGet, str, cVar));
                        }
                    } else {
                        m22789b(incrementAndGet, (int) System.currentTimeMillis(), 2, "no need to download...");
                        if (cVar != null) {
                            cVar.mo1443b();
                        }
                    }
                } else {
                    throw new NullPointerException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m22791a(String str, boolean z, int i, AbstractC6378d dVar) {
        synchronized (C6402c.class) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    AbstractC6408e.m22746a(i);
                    if (C6364a.m22991a() == null) {
                        C6438i.m22579c("[OfflineDb] refresh status failed, statusCode = -5, isForce = " + z);
                        if (dVar != null) {
                            try {
                                dVar.mo1272a(-5, null);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        return;
                    }
                    f15931b.add(dVar);
                    if (f15931b.size() <= 1) {
                        long currentTimeMillis = System.currentTimeMillis();
                        boolean z2 = !m22763m(str);
                        boolean b = m22783b(str, i);
                        int c = m22780c(str);
                        int e2 = m22775e(str);
                        if (!m22803a(c) && !z && !m22798a(currentTimeMillis)) {
                            m22787b(200, (JSONObject) null);
                            return;
                        }
                        C6341b bVar = new C6341b();
                        String str2 = m22768i() + String.format("/offline/cgdb/android/v8.3/%s?cur_ver=%s&tp=%s", str, Integer.valueOf(c), Integer.valueOf(i));
                        bVar.f15755a = str2;
                        bVar.f15756b = "GET";
                        bVar.f15765k = false;
                        bVar.f15770p = true;
                        bVar.f15768n = true;
                        bVar.f15758d = C6364a.m22991a();
                        bVar.f15760f = new C6403a(z, currentTimeMillis, z2, b, c, e2, str, str2);
                        C6334a.m23211s().m23238b(bVar);
                        return;
                    }
                    return;
                }
                throw new NullPointerException();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static boolean m22803a(int i) {
        return i == 0;
    }

    /* renamed from: a */
    public static boolean m22798a(long j) {
        return j - C6334a.m23211s().m23252a("prefs_offlinedb_synctime", 0L) > m22770h();
    }

    /* renamed from: a */
    public static boolean m22792a(String str, AbstractC6377c cVar) {
        return C6334a.m23211s().m23249a(str, cVar);
    }

    /* renamed from: b */
    public static int m22784b(String str) {
        if (m22763m(str)) {
            return C6334a.m23211s().m23253a("prefs_offlinedb_type", 0);
        }
        return 0;
    }

    /* renamed from: b */
    public static void m22789b(int i, int i2, int i3, String str) {
        C6359b a = C6359b.m23013a();
        a.f15812d = true;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        arrayList.add(Integer.valueOf(i3));
        C6357a.m23028a("offline_db_issue_tracking", (List<String>) null, arrayList, a);
        C6438i.m22579c("[traceOfflineDbIssue][" + i + "] " + str);
    }

    /* renamed from: b */
    public static void m22788b(int i, String str, C6420h hVar, AbstractC6377c cVar) {
        synchronized (C6402c.class) {
            try {
                m22789b(i, (int) System.currentTimeMillis(), 4, "execute download now");
                if (!(hVar == null || C6364a.m22991a() == null)) {
                    String str2 = f15932c + "offlinedb.realm";
                    C6375a aVar = new C6375a();
                    aVar.f15863b = hVar.m22695a();
                    aVar.f15865d = str;
                    aVar.f15864c = str2 + MultiDexExtractor.EXTRACTED_SUFFIX;
                    aVar.f15866e = C6334a.m23211s().m23234b("prefs_last_modified", "");
                    aVar.m22912a(cVar);
                    aVar.f15862a = C6364a.m22991a();
                    aVar.f15867f = new C6405c(i, aVar, hVar, str2);
                    C6334a.m23211s().m23255a(aVar);
                    return;
                }
                if (C6364a.m22991a() == null) {
                    C6438i.m22579c("[OfflineDb] download failed, statusCode = -5");
                }
                if (cVar != null) {
                    cVar.mo1444a(new C6429b(hVar == null ? -700 : -5, ""));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static void m22787b(int i, JSONObject jSONObject) {
        if (f15931b.size() > 0) {
            for (AbstractC6378d dVar : f15931b) {
                if (dVar != null) {
                    try {
                        dVar.mo1272a(i, jSONObject);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            f15931b.clear();
        }
    }

    /* renamed from: b */
    public static void m22785b(C6420h hVar, String str, long j) {
        C6334a.m23211s().m23216n().edit().putInt("prefs_next_offlinedb_type", hVar.f16011b).putInt("prefs_next_offlinedb_version", hVar.f16010a).putInt("prefs_next_offlinedb_basic_num", hVar.f16018i).putInt("prefs_next_offlinedb_premium_num", hVar.f16019j).putString("prefs_offlinedb_region", str).putLong("prefs_offlinedb_synctime", j).putString("prefs_last_modified", "").apply();
        C6334a.m23211s().m23233b("prefs_offlinedb_api_data", hVar.toString(), true);
    }

    /* renamed from: b */
    public static boolean m22783b(String str, int i) {
        return m22784b(str) != i;
    }

    /* renamed from: c */
    public static int m22780c(String str) {
        if (m22763m(str)) {
            return C6334a.m23211s().m23253a("prefs_offlinedb_version", 0);
        }
        return 0;
    }

    /* renamed from: c */
    public static void m22781c(C6420h hVar) {
        C6334a.m23211s().m23216n().edit().putInt("prefs_offlinedb_updaterate", hVar.f16017h).putInt("prefs_offlinedb_ntopnum", m22802a(hVar.f16015f, hVar.f16012c)).putInt("prefs_offlinedb_nspamnum", m22802a(hVar.f16016g, hVar.f16013d)).apply();
    }

    /* renamed from: d */
    public static int m22777d(String str) {
        if (m22763m(str)) {
            return C6334a.m23211s().m23253a("prefs_next_offlinedb_type", 0);
        }
        return 0;
    }

    /* renamed from: d */
    public static void m22779d() {
        m22774f();
        C6334a.m23211s().m23235b("prefs_offlinedb_cachetime", AdUtils.ONE_DAY);
        C6410f.m22738a(f15932c + "offlinedb.realm");
        C6410f.m22738a(m22772g());
    }

    /* renamed from: d */
    public static void m22778d(C6420h hVar) {
        C6334a.m23211s().m23216n().edit().putInt("prefs_offlinedb_type", hVar.f16011b).putInt("prefs_offlinedb_version", hVar.f16010a).putInt("prefs_offlinedb_topnum", hVar.f16012c).putInt("prefs_offlinedb_spamnum", hVar.f16013d).putInt("prefs_offlinedb_toptopspam", hVar.f16014e).putInt("prefs_offlinedb_basic_num", hVar.f16018i).putInt("prefs_offlinedb_premium_num", hVar.f16019j).apply();
    }

    /* renamed from: e */
    public static int m22775e(String str) {
        if (m22763m(str)) {
            return C6334a.m23211s().m23253a("prefs_next_offlinedb_version", 0);
        }
        return 0;
    }

    /* renamed from: e */
    public static void m22776e() {
        C6334a.m23211s().m23235b("prefs_offlinedb_synctime", 0L);
    }

    /* renamed from: f */
    public static String m22773f(String str) {
        if (!m22763m(str)) {
            return null;
        }
        return f15932c + "offlinedb.realm";
    }

    /* renamed from: f */
    public static void m22774f() {
        C6334a.m23211s().m23216n().edit().putString("prefs_offlinedb_api_data", "").putInt("prefs_offlinedb_type", 0).putInt("prefs_next_offlinedb_type", 0).putInt("prefs_offlinedb_version", 0).putInt("prefs_next_offlinedb_version", 0).putInt("prefs_offlinedb_topnum", 0).putInt("prefs_offlinedb_spamnum", 0).putInt("prefs_offlinedb_toptopspam", 0).putInt("prefs_offlinedb_basic_num", 0).putInt("prefs_next_offlinedb_basic_num", 0).putInt("prefs_offlinedb_premium_num", 0).putInt("prefs_next_offlinedb_premium_num", 0).putInt("prefs_offlinedb_updaterate", 0).putInt("prefs_offlinedb_ntopnum", 0).putInt("prefs_offlinedb_nspamnum", 0).putString("prefs_offlinedb_region", "").putLong("prefs_offlinedb_synctime", 0L).putString("prefs_last_modified", "").putInt("prefs_last_notify_version", 0).apply();
    }

    /* renamed from: g */
    public static int m22771g(String str) {
        if (!m22764l(str) || !m22763m(str)) {
            return 0;
        }
        return C6334a.m23211s().m23253a("prefs_offlinedb_spamnum", 0);
    }

    /* renamed from: g */
    public static String m22772g() {
        return f15932c + "offline.backup.zip";
    }

    /* renamed from: h */
    public static int m22769h(String str) {
        if (!m22764l(str) || !m22763m(str)) {
            return 0;
        }
        return C6334a.m23211s().m23253a("prefs_offlinedb_topnum", 0);
    }

    /* renamed from: h */
    public static long m22770h() {
        return C6334a.m23211s().m23252a("prefs_offlinedb_cachetime", AdUtils.ONE_DAY);
    }

    /* renamed from: i */
    public static int m22767i(String str) {
        if (!m22764l(str) || !m22763m(str)) {
            return 0;
        }
        return C6334a.m23211s().m23253a("prefs_offlinedb_toptopspam", 0);
    }

    /* renamed from: i */
    public static String m22768i() {
        return C6344e.m23186g() ? "https://apiscdn.whoscall.com" : "https://apiscdn-staging.whoscall.com";
    }

    /* renamed from: j */
    public static boolean m22766j(String str) {
        boolean z = false;
        if (m22763m(str)) {
            z = false;
            if (C6334a.m23211s().m23253a("prefs_offlinedb_version", 0) != C6334a.m23211s().m23253a("prefs_next_offlinedb_version", 0)) {
                z = false;
                if (C6334a.m23211s().m23253a("prefs_offlinedb_version", 0) != 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: k */
    public static void m22765k(String str) {
        if (!TextUtils.isEmpty(str)) {
            f15932c = str;
            return;
        }
        throw new C6343d("Init whoscallSDK failed");
    }

    /* renamed from: l */
    public static boolean m22764l(String str) {
        boolean z = false;
        if (m22763m(str)) {
            z = false;
            if (C6334a.m23211s().m23253a("prefs_offlinedb_version", 0) != 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: m */
    public static boolean m22763m(String str) {
        return !TextUtils.isEmpty(str) && str.equals(C6334a.m23211s().m23234b("prefs_offlinedb_region", ""));
    }
}
