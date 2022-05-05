package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.measurement.internal.zzad;
import com.google.android.gms.measurement.internal.zzfh;
import com.google.android.gms.measurement.internal.zzh;
import com.google.android.gms.measurement.internal.zzl;
import com.mopub.common.Constants;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlinx.coroutines.DebugKt;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
import p081h.p203i.p204a.p224e.p259j.p276q.C8547a1;
import p081h.p203i.p204a.p224e.p259j.p276q.C8579d1;
import p081h.p203i.p204a.p224e.p259j.p276q.C8734t0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8752v0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8770x0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8783y0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8792z0;
/* renamed from: h.i.a.e.m.b.t3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/t3.class */
public class C9061t3 implements AbstractC9041q1 {

    /* renamed from: w */
    public static volatile C9061t3 f20648w;

    /* renamed from: a */
    public C9022n0 f20649a;

    /* renamed from: b */
    public C9051s f20650b;

    /* renamed from: c */
    public C9026n4 f20651c;

    /* renamed from: d */
    public C9082x f20652d;

    /* renamed from: e */
    public C9031o3 f20653e;

    /* renamed from: f */
    public C8990h4 f20654f;

    /* renamed from: g */
    public final C9096z3 f20655g;

    /* renamed from: h */
    public final C9052s0 f20656h;

    /* renamed from: i */
    public boolean f20657i;

    /* renamed from: j */
    public boolean f20658j;

    /* renamed from: k */
    public long f20659k;

    /* renamed from: l */
    public List<Runnable> f20660l;

    /* renamed from: m */
    public int f20661m;

    /* renamed from: n */
    public int f20662n;

    /* renamed from: o */
    public boolean f20663o;

    /* renamed from: p */
    public boolean f20664p;

    /* renamed from: q */
    public boolean f20665q;

    /* renamed from: r */
    public FileLock f20666r;

    /* renamed from: s */
    public FileChannel f20667s;

    /* renamed from: t */
    public List<Long> f20668t;

    /* renamed from: u */
    public List<Long> f20669u;

    /* renamed from: v */
    public long f20670v;

    /* renamed from: h.i.a.e.m.b.t3$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/t3$a.class */
    public final class C9062a implements AbstractC9038p4 {

        /* renamed from: a */
        public C8547a1 f20671a;

        /* renamed from: b */
        public List<Long> f20672b;

        /* renamed from: c */
        public List<C8770x0> f20673c;

        /* renamed from: d */
        public long f20674d;

        public C9062a(C9061t3 t3Var) {
        }

        public /* synthetic */ C9062a(C9061t3 t3Var, RunnableC9068u3 u3Var) {
            this(t3Var);
        }

        /* renamed from: a */
        public static long m16149a(C8770x0 x0Var) {
            return ((x0Var.f20106e.longValue() / 1000) / 60) / 60;
        }

        @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9038p4
        /* renamed from: a */
        public final void mo16150a(C8547a1 a1Var) {
            C7021t.m21290a(a1Var);
            this.f20671a = a1Var;
        }

        @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9038p4
        /* renamed from: a */
        public final boolean mo16151a(long j, C8770x0 x0Var) {
            C7021t.m21290a(x0Var);
            if (this.f20673c == null) {
                this.f20673c = new ArrayList();
            }
            if (this.f20672b == null) {
                this.f20672b = new ArrayList();
            }
            if (this.f20673c.size() > 0 && m16149a(this.f20673c.get(0)) != m16149a(x0Var)) {
                return false;
            }
            long b = this.f20674d + x0Var.m17077b();
            if (b >= Math.max(0, C8966e.f20329s.m16678a().intValue())) {
                return false;
            }
            this.f20674d = b;
            this.f20673c.add(x0Var);
            this.f20672b.add(Long.valueOf(j));
            return this.f20673c.size() < Math.max(1, C8966e.f20330t.m16678a().intValue());
        }
    }

    public C9061t3(C9091y3 y3Var) {
        this(y3Var, null);
    }

    public C9061t3(C9091y3 y3Var, C9052s0 s0Var) {
        this.f20657i = false;
        C7021t.m21290a(y3Var);
        this.f20656h = C9052s0.m16298a(y3Var.f20773a, (C8997j) null);
        this.f20670v = -1L;
        C9096z3 z3Var = new C9096z3(this);
        z3Var.m16315s();
        this.f20655g = z3Var;
        C9051s sVar = new C9051s(this);
        sVar.m16315s();
        this.f20650b = sVar;
        C9022n0 n0Var = new C9022n0(this);
        n0Var.m16315s();
        this.f20649a = n0Var;
        this.f20656h.mo16214a().m16364a(new RunnableC9068u3(this, y3Var));
    }

    /* renamed from: a */
    public static C9061t3 m16211a(Context context) {
        C7021t.m21290a(context);
        C7021t.m21290a(context.getApplicationContext());
        if (f20648w == null) {
            synchronized (C9061t3.class) {
                try {
                    if (f20648w == null) {
                        f20648w = new C9061t3(new C9091y3(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f20648w;
    }

    /* renamed from: a */
    public static C8783y0[] m16190a(C8783y0[] y0VarArr, int i) {
        C8783y0[] y0VarArr2 = new C8783y0[y0VarArr.length - 1];
        if (i > 0) {
            System.arraycopy(y0VarArr, 0, y0VarArr2, 0, i);
        }
        if (i < y0VarArr2.length) {
            System.arraycopy(y0VarArr, i + 1, y0VarArr2, i, y0VarArr2.length - i);
        }
        return y0VarArr2;
    }

    /* renamed from: a */
    public static C8783y0[] m16189a(C8783y0[] y0VarArr, int i, String str) {
        for (C8783y0 y0Var : y0VarArr) {
            if ("_err".equals(y0Var.f20135c)) {
                return y0VarArr;
            }
        }
        C8783y0[] y0VarArr2 = new C8783y0[y0VarArr.length + 2];
        System.arraycopy(y0VarArr, 0, y0VarArr2, 0, y0VarArr.length);
        C8783y0 y0Var2 = new C8783y0();
        y0Var2.f20135c = "_err";
        y0Var2.f20137e = Long.valueOf(i);
        C8783y0 y0Var3 = new C8783y0();
        y0Var3.f20135c = "_ev";
        y0Var3.f20136d = str;
        y0VarArr2[y0VarArr2.length - 2] = y0Var2;
        y0VarArr2[y0VarArr2.length - 1] = y0Var3;
        return y0VarArr2;
    }

    /* renamed from: a */
    public static C8783y0[] m16188a(C8783y0[] y0VarArr, @NonNull String str) {
        int i = 0;
        while (true) {
            if (i >= y0VarArr.length) {
                i = -1;
                break;
            } else if (str.equals(y0VarArr[i].f20135c)) {
                break;
            } else {
                i++;
            }
        }
        return i < 0 ? y0VarArr : m16190a(y0VarArr, i);
    }

    /* renamed from: b */
    public static void m16179b(AbstractC9049r3 r3Var) {
        if (r3Var == null) {
            throw new IllegalStateException("Upload Component not created");
        } else if (!r3Var.m16317p()) {
            String valueOf = String.valueOf(r3Var.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* renamed from: A */
    public final C9052s0 m16215A() {
        return this.f20656h;
    }

    @WorkerThread
    /* renamed from: a */
    public final int m16192a(FileChannel fileChannel) {
        int read;
        m16172f();
        int i = 0;
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f20656h.mo16178c().m16375s().m16338a("Bad channel to read from");
            return 0;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            read = fileChannel.read(allocate);
        } catch (IOException e) {
            this.f20656h.mo16178c().m16375s().m16337a("Failed to read from channel", e);
        }
        if (read == 4) {
            allocate.flip();
            i = allocate.getInt();
            return i;
        } else if (read == -1) {
            return 0;
        } else {
            this.f20656h.mo16178c().m16372v().m16337a("Unexpected data length. Bytes read", Integer.valueOf(read));
            return 0;
        }
    }

    /* renamed from: a */
    public final zzh m16210a(Context context, String str, String str2, boolean z, boolean z2, boolean z3, long j, String str3) {
        String str4;
        String str5;
        int i;
        String str6;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            this.f20656h.mo16178c().m16375s().m16338a("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            str4 = packageManager.getInstallerPackageName(str);
        } catch (IllegalArgumentException e) {
            this.f20656h.mo16178c().m16375s().m16337a("Error retrieving installer package name. appId", C9027o.m16380a(str));
            str4 = "Unknown";
        }
        if (str4 == null) {
            str5 = "manual_install";
        } else {
            str5 = str4;
            if ("com.android.vending".equals(str4)) {
                str5 = "";
            }
        }
        String str7 = "Unknown";
        try {
            PackageInfo b = C7097c.m21085b(context).m21087b(str, 0);
            if (b != null) {
                CharSequence b2 = C7097c.m21085b(context).m21088b(str);
                str7 = "Unknown";
                if (!TextUtils.isEmpty(b2)) {
                    str7 = b2.toString();
                }
                str6 = b.versionName;
                i = b.versionCode;
            } else {
                i = Integer.MIN_VALUE;
                str6 = "Unknown";
            }
            this.f20656h.mo16187b();
            if (!this.f20656h.m16272u().m16495j(str)) {
                j = 0;
            }
            return new zzh(str, str2, str6, i, str5, this.f20656h.m16272u().m16490n(), this.f20656h.m16274s().m16740a(context, str), (String) null, z, false, "", 0L, j, 0, z2, z3, false, str3);
        } catch (PackageManager.NameNotFoundException e2) {
            this.f20656h.mo16178c().m16375s().m16336a("Error retrieving newly installed package info. appId, appName", C9027o.m16380a(str), str7);
            return null;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final zzh m16197a(String str) {
        C8978f4 b = m16166l().m16411b(str);
        if (b == null || TextUtils.isEmpty(b.m16642e())) {
            this.f20656h.mo16178c().m16368z().m16337a("No app data available; dropping", str);
            return null;
        }
        Boolean b2 = m16180b(b);
        if (b2 == null || b2.booleanValue()) {
            return new zzh(str, b.m16649c(), b.m16642e(), b.m16624l(), b.m16622m(), b.m16620n(), b.m16618o(), (String) null, b.m16645d(), false, b.m16653b(), b.m16660B(), 0L, 0, b.m16659C(), b.m16658D(), false, b.m16633h());
        }
        this.f20656h.mo16178c().m16375s().m16337a("App version does not match; dropping. appId", C9027o.m16380a(str));
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9041q1
    /* renamed from: a */
    public final C9028o0 mo16214a() {
        return this.f20656h.mo16214a();
    }

    /* JADX WARN: Finally extract failed */
    @WorkerThread
    /* renamed from: a */
    public final void m16213a(int i, Throwable th, byte[] bArr, String str) {
        C9026n4 l;
        long longValue;
        m16172f();
        m16161q();
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.f20664p = false;
                m16156v();
            }
        }
        List<Long> list = this.f20668t;
        this.f20668t = null;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.f20656h.m16273t().f20200e.m16695a(this.f20656h.mo16174e().currentTimeMillis());
                this.f20656h.m16273t().f20201f.m16695a(0L);
                m16157u();
                this.f20656h.mo16178c().m16389A().m16336a("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
                m16166l().m16396t();
                try {
                    for (Long l2 : list) {
                        try {
                            l = m16166l();
                            longValue = l2.longValue();
                            l.mo16328d();
                            l.m16316q();
                        } catch (SQLiteException e) {
                            if (this.f20669u == null || !this.f20669u.contains(l2)) {
                                throw e;
                            }
                        }
                        try {
                            if (l.m16394v().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                                throw new SQLiteException("Deleted fewer rows from queue than expected");
                                break;
                            }
                        } catch (SQLiteException e2) {
                            l.mo16178c().m16375s().m16337a("Failed to delete a bundle in a queue table", e2);
                            throw e2;
                            break;
                        }
                    }
                    m16166l().m16393w();
                    m16166l().m16395u();
                    this.f20669u = null;
                    if (!m16164n().m16307t() || !m16158t()) {
                        this.f20670v = -1L;
                        m16157u();
                    } else {
                        m16159s();
                    }
                    this.f20659k = 0L;
                } catch (Throwable th2) {
                    m16166l().m16395u();
                    throw th2;
                }
            } catch (SQLiteException e3) {
                this.f20656h.mo16178c().m16375s().m16337a("Database error while trying to delete uploaded bundles", e3);
                this.f20659k = this.f20656h.mo16174e().elapsedRealtime();
                this.f20656h.mo16178c().m16389A().m16337a("Disable upload, time", Long.valueOf(this.f20659k));
            }
        } else {
            this.f20656h.mo16178c().m16389A().m16336a("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.f20656h.m16273t().f20201f.m16695a(this.f20656h.mo16174e().currentTimeMillis());
            boolean z = true;
            if (i != 503) {
                z = i == 429;
            }
            if (z) {
                this.f20656h.m16273t().f20202g.m16695a(this.f20656h.mo16174e().currentTimeMillis());
            }
            if (this.f20656h.m16272u().m16498g(str)) {
                m16166l().m16412a(list);
            }
            m16157u();
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16209a(zzad zzadVar, zzh zzhVar) {
        List<zzl> list;
        List<zzl> list2;
        List<zzl> list3;
        C7021t.m21290a(zzhVar);
        C7021t.m21283b(zzhVar.f7158a);
        m16172f();
        m16161q();
        String str = zzhVar.f7158a;
        long j = zzadVar.f7150d;
        if (m16168j().m16106a(zzadVar, zzhVar)) {
            if (!zzhVar.f7165h) {
                m16175d(zzhVar);
                return;
            }
            m16166l().m16396t();
            try {
                C9026n4 l = m16166l();
                C7021t.m21283b(str);
                l.mo16328d();
                l.m16316q();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i < 0) {
                    l.mo16178c().m16372v().m16336a("Invalid time querying timed out conditional properties", C9027o.m16380a(str), Long.valueOf(j));
                    list = Collections.emptyList();
                } else {
                    list = l.m16408b("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
                }
                for (zzl zzlVar : list) {
                    if (zzlVar != null) {
                        this.f20656h.mo16178c().m16368z().m16335a("User property timed out", zzlVar.f7176a, this.f20656h.m16275r().m16470c(zzlVar.f7178c.f7152b), zzlVar.f7178c.m31657c());
                        if (zzlVar.f7182g != null) {
                            m16186b(new zzad(zzlVar.f7182g, j), zzhVar);
                        }
                        m16166l().m16400f(str, zzlVar.f7178c.f7152b);
                    }
                }
                C9026n4 l2 = m16166l();
                C7021t.m21283b(str);
                l2.mo16328d();
                l2.m16316q();
                if (i < 0) {
                    l2.mo16178c().m16372v().m16336a("Invalid time querying expired conditional properties", C9027o.m16380a(str), Long.valueOf(j));
                    list2 = Collections.emptyList();
                } else {
                    list2 = l2.m16408b("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(list2.size());
                for (zzl zzlVar2 : list2) {
                    if (zzlVar2 != null) {
                        this.f20656h.mo16178c().m16368z().m16335a("User property expired", zzlVar2.f7176a, this.f20656h.m16275r().m16470c(zzlVar2.f7178c.f7152b), zzlVar2.f7178c.m31657c());
                        m16166l().m16406c(str, zzlVar2.f7178c.f7152b);
                        if (zzlVar2.f7186k != null) {
                            arrayList.add(zzlVar2.f7186k);
                        }
                        m16166l().m16400f(str, zzlVar2.f7178c.f7152b);
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    m16186b(new zzad((zzad) obj, j), zzhVar);
                }
                C9026n4 l3 = m16166l();
                String str2 = zzadVar.f7147a;
                C7021t.m21283b(str);
                C7021t.m21283b(str2);
                l3.mo16328d();
                l3.m16316q();
                if (i < 0) {
                    l3.mo16178c().m16372v().m16335a("Invalid time querying triggered conditional properties", C9027o.m16380a(str), l3.m16352i().m16473a(str2), Long.valueOf(j));
                    list3 = Collections.emptyList();
                } else {
                    list3 = l3.m16408b("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
                }
                ArrayList arrayList2 = new ArrayList(list3.size());
                for (zzl zzlVar3 : list3) {
                    if (zzlVar3 != null) {
                        zzfh zzfhVar = zzlVar3.f7178c;
                        C8953b4 b4Var = new C8953b4(zzlVar3.f7176a, zzlVar3.f7177b, zzfhVar.f7152b, j, zzfhVar.m31657c());
                        if (m16166l().m16428a(b4Var)) {
                            this.f20656h.mo16178c().m16368z().m16335a("User property triggered", zzlVar3.f7176a, this.f20656h.m16275r().m16470c(b4Var.f20238c), b4Var.f20240e);
                        } else {
                            this.f20656h.mo16178c().m16375s().m16335a("Too many active user properties, ignoring", C9027o.m16380a(zzlVar3.f7176a), this.f20656h.m16275r().m16470c(b4Var.f20238c), b4Var.f20240e);
                        }
                        if (zzlVar3.f7184i != null) {
                            arrayList2.add(zzlVar3.f7184i);
                        }
                        zzlVar3.f7178c = new zzfh(b4Var);
                        zzlVar3.f7180e = true;
                        m16166l().m16431a(zzlVar3);
                    }
                }
                m16186b(zzadVar, zzhVar);
                int size2 = arrayList2.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    m16186b(new zzad((zzad) obj2, j), zzhVar);
                }
                m16166l().m16393w();
            } finally {
                m16166l().m16395u();
            }
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16207a(zzfh zzfhVar, zzh zzhVar) {
        C8953b4 d;
        m16172f();
        m16161q();
        if (TextUtils.isEmpty(zzhVar.f7159b) && TextUtils.isEmpty(zzhVar.f7175r)) {
            return;
        }
        if (!zzhVar.f7165h) {
            m16175d(zzhVar);
        } else if (!this.f20656h.m16272u().m16501d(zzhVar.f7158a, C8966e.f20320j0) || !"_ap".equals(zzfhVar.f7152b) || (d = m16166l().m16404d(zzhVar.f7158a, "_ap")) == null || !DebugKt.DEBUG_PROPERTY_VALUE_AUTO.equals(zzfhVar.f7156f) || DebugKt.DEBUG_PROPERTY_VALUE_AUTO.equals(d.f20237b)) {
            int b = this.f20656h.m16274s().m16715b(zzfhVar.f7152b);
            if (b != 0) {
                this.f20656h.m16274s();
                String a = C8959c4.m16727a(zzfhVar.f7152b, 24, true);
                String str = zzfhVar.f7152b;
                this.f20656h.m16274s().m16728a(zzhVar.f7158a, b, "_ev", a, str != null ? str.length() : 0);
                return;
            }
            int b2 = this.f20656h.m16274s().m16714b(zzfhVar.f7152b, zzfhVar.m31657c());
            if (b2 != 0) {
                this.f20656h.m16274s();
                String a2 = C8959c4.m16727a(zzfhVar.f7152b, 24, true);
                Object c = zzfhVar.m31657c();
                this.f20656h.m16274s().m16728a(zzhVar.f7158a, b2, "_ev", a2, (c == null || (!(c instanceof String) && !(c instanceof CharSequence))) ? 0 : String.valueOf(c).length());
                return;
            }
            Object c2 = this.f20656h.m16274s().m16710c(zzfhVar.f7152b, zzfhVar.m31657c());
            if (c2 != null) {
                C8953b4 b4Var = new C8953b4(zzhVar.f7158a, zzfhVar.f7156f, zzfhVar.f7152b, zzfhVar.f7153c, c2);
                this.f20656h.mo16178c().m16368z().m16336a("Setting user property", this.f20656h.m16275r().m16470c(b4Var.f20238c), c2);
                m16166l().m16396t();
                try {
                    m16175d(zzhVar);
                    boolean a3 = m16166l().m16428a(b4Var);
                    m16166l().m16393w();
                    if (a3) {
                        this.f20656h.mo16178c().m16368z().m16336a("User property set", this.f20656h.m16275r().m16470c(b4Var.f20238c), b4Var.f20240e);
                    } else {
                        this.f20656h.mo16178c().m16375s().m16336a("Too many unique user properties are set. Ignoring user property", this.f20656h.m16275r().m16470c(b4Var.f20238c), b4Var.f20240e);
                        this.f20656h.m16274s().m16728a(zzhVar.f7158a, 9, (String) null, (String) null, 0);
                    }
                } finally {
                    m16166l().m16395u();
                }
            }
        } else {
            this.f20656h.mo16178c().m16368z().m16338a("Not setting lower priority ad personalization property");
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16206a(zzh zzhVar) {
        if (this.f20668t != null) {
            this.f20669u = new ArrayList();
            this.f20669u.addAll(this.f20668t);
        }
        C9026n4 l = m16166l();
        String str = zzhVar.f7158a;
        C7021t.m21283b(str);
        l.mo16328d();
        l.m16316q();
        try {
            SQLiteDatabase v = l.m16394v();
            String[] strArr = new String[1];
            strArr[0] = str;
            int delete = v.delete("apps", "app_id=?", strArr) + 0 + v.delete(Constants.VIDEO_TRACKING_EVENTS_KEY, "app_id=?", strArr) + v.delete("user_attributes", "app_id=?", strArr) + v.delete("conditional_properties", "app_id=?", strArr) + v.delete("raw_events", "app_id=?", strArr) + v.delete("raw_events_metadata", "app_id=?", strArr) + v.delete("queue", "app_id=?", strArr) + v.delete("audience_filter_values", "app_id=?", strArr) + v.delete("main_event_params", "app_id=?", strArr);
            if (delete > 0) {
                l.mo16178c().m16389A().m16336a("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            l.mo16178c().m16375s().m16336a("Error resetting analytics data. appId, error", C9027o.m16380a(str), e);
        }
        zzh a = m16210a(this.f20656h.getContext(), zzhVar.f7158a, zzhVar.f7159b, zzhVar.f7165h, zzhVar.f7172o, zzhVar.f7173p, zzhVar.f7170m, zzhVar.f7175r);
        if (!this.f20656h.m16272u().m16496i(zzhVar.f7158a) || zzhVar.f7165h) {
            m16177c(a);
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16205a(zzl zzlVar) {
        zzh a = m16197a(zzlVar.f7176a);
        if (a != null) {
            m16204a(zzlVar, a);
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16204a(zzl zzlVar, zzh zzhVar) {
        C7021t.m21290a(zzlVar);
        C7021t.m21283b(zzlVar.f7176a);
        C7021t.m21290a(zzlVar.f7177b);
        C7021t.m21290a(zzlVar.f7178c);
        C7021t.m21283b(zzlVar.f7178c.f7152b);
        m16172f();
        m16161q();
        if (TextUtils.isEmpty(zzhVar.f7159b) && TextUtils.isEmpty(zzhVar.f7175r)) {
            return;
        }
        if (!zzhVar.f7165h) {
            m16175d(zzhVar);
            return;
        }
        zzl zzlVar2 = new zzl(zzlVar);
        boolean z = false;
        zzlVar2.f7180e = false;
        m16166l().m16396t();
        try {
            zzl e = m16166l().m16402e(zzlVar2.f7176a, zzlVar2.f7178c.f7152b);
            if (e != null && !e.f7177b.equals(zzlVar2.f7177b)) {
                this.f20656h.mo16178c().m16372v().m16335a("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.f20656h.m16275r().m16470c(zzlVar2.f7178c.f7152b), zzlVar2.f7177b, e.f7177b);
            }
            if (e != null && e.f7180e) {
                zzlVar2.f7177b = e.f7177b;
                zzlVar2.f7179d = e.f7179d;
                zzlVar2.f7183h = e.f7183h;
                zzlVar2.f7181f = e.f7181f;
                zzlVar2.f7184i = e.f7184i;
                zzlVar2.f7180e = e.f7180e;
                zzlVar2.f7178c = new zzfh(zzlVar2.f7178c.f7152b, e.f7178c.f7153c, zzlVar2.f7178c.m31657c(), e.f7178c.f7156f);
            } else if (TextUtils.isEmpty(zzlVar2.f7181f)) {
                zzlVar2.f7178c = new zzfh(zzlVar2.f7178c.f7152b, zzlVar2.f7179d, zzlVar2.f7178c.m31657c(), zzlVar2.f7178c.f7156f);
                zzlVar2.f7180e = true;
                z = true;
            }
            if (zzlVar2.f7180e) {
                zzfh zzfhVar = zzlVar2.f7178c;
                C8953b4 b4Var = new C8953b4(zzlVar2.f7176a, zzlVar2.f7177b, zzfhVar.f7152b, zzfhVar.f7153c, zzfhVar.m31657c());
                if (m16166l().m16428a(b4Var)) {
                    this.f20656h.mo16178c().m16368z().m16335a("User property updated immediately", zzlVar2.f7176a, this.f20656h.m16275r().m16470c(b4Var.f20238c), b4Var.f20240e);
                } else {
                    this.f20656h.mo16178c().m16375s().m16335a("(2)Too many active user properties, ignoring", C9027o.m16380a(zzlVar2.f7176a), this.f20656h.m16275r().m16470c(b4Var.f20238c), b4Var.f20240e);
                }
                if (z && zzlVar2.f7184i != null) {
                    m16186b(new zzad(zzlVar2.f7184i, zzlVar2.f7179d), zzhVar);
                }
            }
            if (m16166l().m16431a(zzlVar2)) {
                this.f20656h.mo16178c().m16368z().m16335a("Conditional property added", zzlVar2.f7176a, this.f20656h.m16275r().m16470c(zzlVar2.f7178c.f7152b), zzlVar2.f7178c.m31657c());
            } else {
                this.f20656h.mo16178c().m16375s().m16335a("Too many conditional properties, ignoring", C9027o.m16380a(zzlVar2.f7176a), this.f20656h.m16275r().m16470c(zzlVar2.f7178c.f7152b), zzlVar2.f7178c.m31657c());
            }
            m16166l().m16393w();
        } finally {
            m16166l().m16395u();
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16203a(C8978f4 f4Var) {
        ArrayMap arrayMap;
        m16172f();
        if (!TextUtils.isEmpty(f4Var.m16649c()) || (C9008k4.m16478x() && !TextUtils.isEmpty(f4Var.m16633h()))) {
            C9008k4 u = this.f20656h.m16272u();
            Uri.Builder builder = new Uri.Builder();
            String c = f4Var.m16649c();
            String str = c;
            if (TextUtils.isEmpty(c)) {
                str = c;
                if (C9008k4.m16478x()) {
                    str = f4Var.m16633h();
                }
            }
            Uri.Builder encodedAuthority = builder.scheme(C8966e.f20325o.m16678a()).encodedAuthority(C8966e.f20326p.m16678a());
            String valueOf = String.valueOf(str);
            encodedAuthority.path(valueOf.length() != 0 ? "config/app/".concat(valueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", f4Var.m16657a()).appendQueryParameter("platform", IJSExecutor.JS_FUNCTION_GROUP).appendQueryParameter("gmp_version", String.valueOf(u.m16490n()));
            String uri = builder.build().toString();
            try {
                URL url = new URL(uri);
                this.f20656h.mo16178c().m16389A().m16337a("Fetching remote configuration", f4Var.m16639f());
                C8734t0 b = m16165m().m16460b(f4Var.m16639f());
                String c2 = m16165m().m16458c(f4Var.m16639f());
                if (b == null || TextUtils.isEmpty(c2)) {
                    arrayMap = null;
                } else {
                    arrayMap = new ArrayMap();
                    arrayMap.put("If-Modified-Since", c2);
                }
                this.f20663o = true;
                C9051s n = m16164n();
                String f = f4Var.m16639f();
                C9080w3 w3Var = new C9080w3(this);
                n.mo16328d();
                n.m16316q();
                C7021t.m21290a(url);
                C7021t.m21290a(w3Var);
                n.mo16214a().m16360b(new RunnableC9076w(n, f, url, null, arrayMap, w3Var));
            } catch (MalformedURLException e) {
                this.f20656h.mo16178c().m16375s().m16336a("Failed to parse config URL. Not fetching. appId", C9027o.m16380a(f4Var.m16639f()), uri);
            }
        } else {
            m16196a(f4Var.m16639f(), 204, null, null, null);
        }
    }

    /* renamed from: a */
    public final void m16202a(AbstractC9049r3 r3Var) {
        this.f20661m++;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16199a(C9091y3 y3Var) {
        this.f20656h.mo16214a().mo16328d();
        C9026n4 n4Var = new C9026n4(this);
        n4Var.m16315s();
        this.f20651c = n4Var;
        this.f20656h.m16272u().m16509a(this.f20649a);
        C8990h4 h4Var = new C8990h4(this);
        h4Var.m16315s();
        this.f20654f = h4Var;
        C9031o3 o3Var = new C9031o3(this);
        o3Var.m16315s();
        this.f20653e = o3Var;
        this.f20652d = new C9082x(this);
        if (this.f20661m != this.f20662n) {
            this.f20656h.mo16178c().m16375s().m16336a("Not all upload components initialized", Integer.valueOf(this.f20661m), Integer.valueOf(this.f20662n));
        }
        this.f20657i = true;
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16198a(Runnable runnable) {
        m16172f();
        if (this.f20660l == null) {
            this.f20660l = new ArrayList();
        }
        this.f20660l.add(runnable);
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16196a(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        m16172f();
        m16161q();
        C7021t.m21283b(str);
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.f20663o = false;
                m16156v();
            }
        }
        this.f20656h.mo16178c().m16389A().m16337a("onConfigFetched. Response size", Integer.valueOf(bArr2.length));
        m16166l().m16396t();
        C8978f4 b = m16166l().m16411b(str);
        boolean z = (i == 200 || i == 204 || i == 304) && th == null;
        if (b == null) {
            this.f20656h.mo16178c().m16372v().m16337a("App does not exist in onConfigFetched. appId", C9027o.m16380a(str));
        } else if (z || i == 404) {
            List<String> list = map != null ? map.get("Last-Modified") : null;
            String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
            if (i == 404 || i == 304) {
                if (m16165m().m16460b(str) == null && !m16165m().m16461a(str, null, null)) {
                    m16166l().m16395u();
                    return;
                }
            } else if (!m16165m().m16461a(str, bArr2, str2)) {
                m16166l().m16395u();
                return;
            }
            b.m16619n(this.f20656h.mo16174e().currentTimeMillis());
            m16166l().m16427a(b);
            if (i == 404) {
                this.f20656h.mo16178c().m16370x().m16337a("Config not found. Using empty config. appId", str);
            } else {
                this.f20656h.mo16178c().m16389A().m16336a("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
            }
            if (!m16164n().m16307t() || !m16158t()) {
                m16157u();
            } else {
                m16159s();
            }
        } else {
            b.m16617o(this.f20656h.mo16174e().currentTimeMillis());
            m16166l().m16427a(b);
            this.f20656h.mo16178c().m16389A().m16336a("Fetching config failed. code, error", Integer.valueOf(i), th);
            m16165m().m16456d(str);
            this.f20656h.m16273t().f20201f.m16695a(this.f20656h.mo16174e().currentTimeMillis());
            boolean z2 = true;
            if (i != 503) {
                z2 = i == 429;
            }
            if (z2) {
                this.f20656h.m16273t().f20202g.m16695a(this.f20656h.mo16174e().currentTimeMillis());
            }
            m16157u();
        }
        m16166l().m16393w();
        m16166l().m16395u();
    }

    /* renamed from: a */
    public final void m16191a(boolean z) {
        m16157u();
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m16212a(int i, FileChannel fileChannel) {
        m16172f();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f20656h.mo16178c().m16375s().m16338a("Bad channel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i);
        allocate.flip();
        try {
            fileChannel.truncate(0L);
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() == 4) {
                return true;
            }
            this.f20656h.mo16178c().m16375s().m16337a("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            return true;
        } catch (IOException e) {
            this.f20656h.mo16178c().m16375s().m16337a("Failed to write to channel", e);
            return false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(25:2|638|3|4|637|5|6|647|7|8|629|(8:10|(8:12|640|13|14|15|16|17|18)(1:22)|23|(1:25)|26|27|28|(8:30|(1:32)|148|149|(3:154|156|(37:158|159|(4:162|(7:164|(5:169|171|(1:175)|176|653)|170|171|(2:173|175)|176|653)(27:177|(3:179|180|(2:182|(8:184|(6:188|189|199|(1:206)(1:205)|207|(9:209|293|294|(9:298|299|(4:302|(3:304|305|666)(3:306|307|(3:309|310|665)(1:667))|311|300)|664|312|(2:314|(6:320|(1:322)(3:323|(4:328|(3:331|(2:668|333)(1:334)|329)|669|335)(0)|336)|337|(1:339)|340|341)(1:318))|319|340|341)|342|(3:344|345|(4:347|(2:352|(2:354|355)(1:356))|357|358))|359|360|652))|198|199|(1:201)|206|207|(0))(8:190|(7:192|193|199|(0)|206|207|(0))|198|199|(0)|206|207|(0)))(8:194|(7:196|197|199|(0)|206|207|(0))|198|199|(0)|206|207|(0)))|210|(1:212)|213|214|215|(5:218|219|(3:221|222|656)(3:223|224|(3:226|227|655)(1:657))|228|216)|654|229|(1:233)|234|(1:236)|237|238|(3:240|241|(2:242|(1:659)(2:244|(8:658|246|(1:248)|249|250|(1:252)|253|254)(1:255))))(1:256)|257|258|(3:260|261|(3:263|264|(6:266|267|(5:270|271|(3:273|274|662)(3:275|276|(3:278|279|661)(1:663))|280|268)|660|281|(2:287|(2:289|290)(2:291|292))(2:285|286))))|293|294|(10:296|298|299|(1:300)|664|312|(0)|319|340|341)|342|(0)|359|360|652)|361|160)|651|362|(1:364)|365|(12:367|(10:372|374|375|376|(2:377|(2:379|(3:671|381|382)(1:383))(2:670|384))|385|(1:387)|388|389|(1:391))|373|374|375|376|(3:377|(0)(0)|383)|385|(0)|388|389|(0))|392|393|(10:635|395|396|(5:399|400|(8:402|403|(1:405)|406|407|(6:409|(1:411)|412|413|(1:417)|418)|419|677)(7:420|(3:424|425|(2:426|(3:428|429|(3:682|431|(2:445|446)(0))(1:447))(1:683)))(0)|448|449|(1:451)(1:452)|453|(3:455|456|678)(9:457|458|(3:460|461|(1:463))|464|465|(1:467)(1:468)|469|470|(3:472|473|(1:679)(6:475|(4:479|480|481|(1:680))|483|484|485|681))(2:486|(10:488|489|490|491|492|(1:494)|495|496|497|674)(4:498|(4:500|(1:502)(1:503)|504|505)(3:509|(2:511|507)|508)|512|(12:514|515|516|517|518|(1:520)|521|522|523|524|525|675)(3:526|527|(3:529|530|673)(1:676))))))|531|397)|672|532|(1:534)|535|536|(4:537|538|539|(1:541)(1:684)))(1:542)|543|544|(7:547|(1:549)|550|551|(2:553|686)(1:687)|554|545)|685|555|(1:557)(2:558|(9:560|561|(1:563)(1:564)|565|566|(1:568)|569|(1:571)(1:572)|573))|574|575|576|(6:578|(3:583|588|589)|584|(1:586)(1:587)|588|589)|590|591|592|(5:595|(1:597)|598|599|593)|688|600|(1:602)|603|604|605|642|606|609|610|611|612)(3:614|615|616))|155|156|(0)(0))(8:33|34|35|632|36|37|38|39))(8:42|(3:44|45|46)(1:47)|48|(1:50)|51|52|53|(8:55|(1:57)|148|149|(4:151|154|156|(0)(0))|155|156|(0)(0))(5:58|59|60|61|62))|63|648|64|65|66|(4:68|69|70|(1:72))(28:73|74|75|76|77|78|79|80|81|644|82|83|84|(3:86|87|88)|89|90|91|92|93|94|(2:96|97)(2:98|99)|100|101|102|103|646|104|(2:106|(1:108))(1:(10:109|110|627|111|112|113|(3:649|115|(1:117))|120|121|(3:650|123|(1:125)))))|148|149|(0)|155|156|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0488, code lost:
        r29 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x048a, code lost:
        r17 = r17 == 1 ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0490, code lost:
        r31 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x111b, code lost:
        if (r18 != r0) goto L_0x111e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:147:0x04d3 A[Catch: all -> 0x153b, TRY_ENTER, TryCatch #13 {all -> 0x153b, blocks: (B:3:0x000f, B:5:0x0017, B:32:0x0103, B:57:0x01da, B:72:0x0269, B:108:0x03ab, B:117:0x040f, B:125:0x0441, B:134:0x047e, B:147:0x04d3, B:149:0x04db, B:151:0x04e1, B:158:0x04ff, B:160:0x0539, B:162:0x0548, B:164:0x0574, B:166:0x05b2, B:173:0x05d5, B:175:0x05e2, B:177:0x0602, B:179:0x061d, B:186:0x064e, B:190:0x065e, B:194:0x066e, B:210:0x06aa, B:212:0x06b2, B:214:0x06bd, B:219:0x06db, B:221:0x06e9, B:224:0x06fc, B:226:0x070a, B:233:0x072e, B:236:0x0794, B:238:0x07f2, B:242:0x0827, B:244:0x0832, B:246:0x0846, B:248:0x0857, B:250:0x0866, B:252:0x086b, B:254:0x0881, B:258:0x0898, B:264:0x08b0, B:266:0x08e6, B:271:0x0922, B:276:0x093b, B:285:0x0963, B:289:0x0988, B:291:0x09a1, B:294:0x09c8, B:298:0x09e3, B:300:0x09f3, B:302:0x09fb, B:307:0x0a17, B:314:0x0a43, B:316:0x0a4e, B:318:0x0a59, B:323:0x0a8f, B:325:0x0a9c, B:329:0x0aaa, B:331:0x0ab3, B:334:0x0ac6, B:339:0x0ae4, B:341:0x0b0d, B:345:0x0b1f, B:347:0x0b2d, B:349:0x0b35, B:352:0x0b41, B:354:0x0b56, B:356:0x0b78, B:357:0x0b83, B:359:0x0ba2, B:362:0x0bbe, B:364:0x0bcd, B:367:0x0be4, B:369:0x0bf7, B:372:0x0c01, B:373:0x0c33, B:374:0x0c57, B:375:0x0c5a, B:377:0x0c8c, B:379:0x0c97, B:381:0x0caa, B:387:0x0cc8, B:391:0x0cf9, B:393:0x0d19, B:402:0x0d9f, B:405:0x0dc7, B:407:0x0de7, B:409:0x0ded, B:411:0x0dfa, B:413:0x0e16, B:415:0x0e1c, B:417:0x0e27, B:424:0x0e99, B:429:0x0eb6, B:431:0x0ec4, B:433:0x0ecc, B:436:0x0edb, B:438:0x0ee1, B:441:0x0ef0, B:443:0x0ef6, B:451:0x0f17, B:455:0x0f38, B:460:0x0f7c, B:463:0x0f9b, B:473:0x101d, B:475:0x1025, B:477:0x102d, B:481:0x1039, B:484:0x1043, B:488:0x106e, B:490:0x107e, B:492:0x109a, B:494:0x10a2, B:496:0x10b0, B:502:0x10f5, B:82:0x02b5), top: B:638:0x000f, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x04e1 A[Catch: all -> 0x153b, TryCatch #13 {all -> 0x153b, blocks: (B:3:0x000f, B:5:0x0017, B:32:0x0103, B:57:0x01da, B:72:0x0269, B:108:0x03ab, B:117:0x040f, B:125:0x0441, B:134:0x047e, B:147:0x04d3, B:149:0x04db, B:151:0x04e1, B:158:0x04ff, B:160:0x0539, B:162:0x0548, B:164:0x0574, B:166:0x05b2, B:173:0x05d5, B:175:0x05e2, B:177:0x0602, B:179:0x061d, B:186:0x064e, B:190:0x065e, B:194:0x066e, B:210:0x06aa, B:212:0x06b2, B:214:0x06bd, B:219:0x06db, B:221:0x06e9, B:224:0x06fc, B:226:0x070a, B:233:0x072e, B:236:0x0794, B:238:0x07f2, B:242:0x0827, B:244:0x0832, B:246:0x0846, B:248:0x0857, B:250:0x0866, B:252:0x086b, B:254:0x0881, B:258:0x0898, B:264:0x08b0, B:266:0x08e6, B:271:0x0922, B:276:0x093b, B:285:0x0963, B:289:0x0988, B:291:0x09a1, B:294:0x09c8, B:298:0x09e3, B:300:0x09f3, B:302:0x09fb, B:307:0x0a17, B:314:0x0a43, B:316:0x0a4e, B:318:0x0a59, B:323:0x0a8f, B:325:0x0a9c, B:329:0x0aaa, B:331:0x0ab3, B:334:0x0ac6, B:339:0x0ae4, B:341:0x0b0d, B:345:0x0b1f, B:347:0x0b2d, B:349:0x0b35, B:352:0x0b41, B:354:0x0b56, B:356:0x0b78, B:357:0x0b83, B:359:0x0ba2, B:362:0x0bbe, B:364:0x0bcd, B:367:0x0be4, B:369:0x0bf7, B:372:0x0c01, B:373:0x0c33, B:374:0x0c57, B:375:0x0c5a, B:377:0x0c8c, B:379:0x0c97, B:381:0x0caa, B:387:0x0cc8, B:391:0x0cf9, B:393:0x0d19, B:402:0x0d9f, B:405:0x0dc7, B:407:0x0de7, B:409:0x0ded, B:411:0x0dfa, B:413:0x0e16, B:415:0x0e1c, B:417:0x0e27, B:424:0x0e99, B:429:0x0eb6, B:431:0x0ec4, B:433:0x0ecc, B:436:0x0edb, B:438:0x0ee1, B:441:0x0ef0, B:443:0x0ef6, B:451:0x0f17, B:455:0x0f38, B:460:0x0f7c, B:463:0x0f9b, B:473:0x101d, B:475:0x1025, B:477:0x102d, B:481:0x1039, B:484:0x1043, B:488:0x106e, B:490:0x107e, B:492:0x109a, B:494:0x10a2, B:496:0x10b0, B:502:0x10f5, B:82:0x02b5), top: B:638:0x000f, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x04ff A[Catch: all -> 0x153b, TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x153b, blocks: (B:3:0x000f, B:5:0x0017, B:32:0x0103, B:57:0x01da, B:72:0x0269, B:108:0x03ab, B:117:0x040f, B:125:0x0441, B:134:0x047e, B:147:0x04d3, B:149:0x04db, B:151:0x04e1, B:158:0x04ff, B:160:0x0539, B:162:0x0548, B:164:0x0574, B:166:0x05b2, B:173:0x05d5, B:175:0x05e2, B:177:0x0602, B:179:0x061d, B:186:0x064e, B:190:0x065e, B:194:0x066e, B:210:0x06aa, B:212:0x06b2, B:214:0x06bd, B:219:0x06db, B:221:0x06e9, B:224:0x06fc, B:226:0x070a, B:233:0x072e, B:236:0x0794, B:238:0x07f2, B:242:0x0827, B:244:0x0832, B:246:0x0846, B:248:0x0857, B:250:0x0866, B:252:0x086b, B:254:0x0881, B:258:0x0898, B:264:0x08b0, B:266:0x08e6, B:271:0x0922, B:276:0x093b, B:285:0x0963, B:289:0x0988, B:291:0x09a1, B:294:0x09c8, B:298:0x09e3, B:300:0x09f3, B:302:0x09fb, B:307:0x0a17, B:314:0x0a43, B:316:0x0a4e, B:318:0x0a59, B:323:0x0a8f, B:325:0x0a9c, B:329:0x0aaa, B:331:0x0ab3, B:334:0x0ac6, B:339:0x0ae4, B:341:0x0b0d, B:345:0x0b1f, B:347:0x0b2d, B:349:0x0b35, B:352:0x0b41, B:354:0x0b56, B:356:0x0b78, B:357:0x0b83, B:359:0x0ba2, B:362:0x0bbe, B:364:0x0bcd, B:367:0x0be4, B:369:0x0bf7, B:372:0x0c01, B:373:0x0c33, B:374:0x0c57, B:375:0x0c5a, B:377:0x0c8c, B:379:0x0c97, B:381:0x0caa, B:387:0x0cc8, B:391:0x0cf9, B:393:0x0d19, B:402:0x0d9f, B:405:0x0dc7, B:407:0x0de7, B:409:0x0ded, B:411:0x0dfa, B:413:0x0e16, B:415:0x0e1c, B:417:0x0e27, B:424:0x0e99, B:429:0x0eb6, B:431:0x0ec4, B:433:0x0ecc, B:436:0x0edb, B:438:0x0ee1, B:441:0x0ef0, B:443:0x0ef6, B:451:0x0f17, B:455:0x0f38, B:460:0x0f7c, B:463:0x0f9b, B:473:0x101d, B:475:0x1025, B:477:0x102d, B:481:0x1039, B:484:0x1043, B:488:0x106e, B:490:0x107e, B:492:0x109a, B:494:0x10a2, B:496:0x10b0, B:502:0x10f5, B:82:0x02b5), top: B:638:0x000f, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0686  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x06a3  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x09fb A[Catch: all -> 0x153b, TryCatch #13 {all -> 0x153b, blocks: (B:3:0x000f, B:5:0x0017, B:32:0x0103, B:57:0x01da, B:72:0x0269, B:108:0x03ab, B:117:0x040f, B:125:0x0441, B:134:0x047e, B:147:0x04d3, B:149:0x04db, B:151:0x04e1, B:158:0x04ff, B:160:0x0539, B:162:0x0548, B:164:0x0574, B:166:0x05b2, B:173:0x05d5, B:175:0x05e2, B:177:0x0602, B:179:0x061d, B:186:0x064e, B:190:0x065e, B:194:0x066e, B:210:0x06aa, B:212:0x06b2, B:214:0x06bd, B:219:0x06db, B:221:0x06e9, B:224:0x06fc, B:226:0x070a, B:233:0x072e, B:236:0x0794, B:238:0x07f2, B:242:0x0827, B:244:0x0832, B:246:0x0846, B:248:0x0857, B:250:0x0866, B:252:0x086b, B:254:0x0881, B:258:0x0898, B:264:0x08b0, B:266:0x08e6, B:271:0x0922, B:276:0x093b, B:285:0x0963, B:289:0x0988, B:291:0x09a1, B:294:0x09c8, B:298:0x09e3, B:300:0x09f3, B:302:0x09fb, B:307:0x0a17, B:314:0x0a43, B:316:0x0a4e, B:318:0x0a59, B:323:0x0a8f, B:325:0x0a9c, B:329:0x0aaa, B:331:0x0ab3, B:334:0x0ac6, B:339:0x0ae4, B:341:0x0b0d, B:345:0x0b1f, B:347:0x0b2d, B:349:0x0b35, B:352:0x0b41, B:354:0x0b56, B:356:0x0b78, B:357:0x0b83, B:359:0x0ba2, B:362:0x0bbe, B:364:0x0bcd, B:367:0x0be4, B:369:0x0bf7, B:372:0x0c01, B:373:0x0c33, B:374:0x0c57, B:375:0x0c5a, B:377:0x0c8c, B:379:0x0c97, B:381:0x0caa, B:387:0x0cc8, B:391:0x0cf9, B:393:0x0d19, B:402:0x0d9f, B:405:0x0dc7, B:407:0x0de7, B:409:0x0ded, B:411:0x0dfa, B:413:0x0e16, B:415:0x0e1c, B:417:0x0e27, B:424:0x0e99, B:429:0x0eb6, B:431:0x0ec4, B:433:0x0ecc, B:436:0x0edb, B:438:0x0ee1, B:441:0x0ef0, B:443:0x0ef6, B:451:0x0f17, B:455:0x0f38, B:460:0x0f7c, B:463:0x0f9b, B:473:0x101d, B:475:0x1025, B:477:0x102d, B:481:0x1039, B:484:0x1043, B:488:0x106e, B:490:0x107e, B:492:0x109a, B:494:0x10a2, B:496:0x10b0, B:502:0x10f5, B:82:0x02b5), top: B:638:0x000f, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0a43 A[Catch: all -> 0x153b, TRY_ENTER, TryCatch #13 {all -> 0x153b, blocks: (B:3:0x000f, B:5:0x0017, B:32:0x0103, B:57:0x01da, B:72:0x0269, B:108:0x03ab, B:117:0x040f, B:125:0x0441, B:134:0x047e, B:147:0x04d3, B:149:0x04db, B:151:0x04e1, B:158:0x04ff, B:160:0x0539, B:162:0x0548, B:164:0x0574, B:166:0x05b2, B:173:0x05d5, B:175:0x05e2, B:177:0x0602, B:179:0x061d, B:186:0x064e, B:190:0x065e, B:194:0x066e, B:210:0x06aa, B:212:0x06b2, B:214:0x06bd, B:219:0x06db, B:221:0x06e9, B:224:0x06fc, B:226:0x070a, B:233:0x072e, B:236:0x0794, B:238:0x07f2, B:242:0x0827, B:244:0x0832, B:246:0x0846, B:248:0x0857, B:250:0x0866, B:252:0x086b, B:254:0x0881, B:258:0x0898, B:264:0x08b0, B:266:0x08e6, B:271:0x0922, B:276:0x093b, B:285:0x0963, B:289:0x0988, B:291:0x09a1, B:294:0x09c8, B:298:0x09e3, B:300:0x09f3, B:302:0x09fb, B:307:0x0a17, B:314:0x0a43, B:316:0x0a4e, B:318:0x0a59, B:323:0x0a8f, B:325:0x0a9c, B:329:0x0aaa, B:331:0x0ab3, B:334:0x0ac6, B:339:0x0ae4, B:341:0x0b0d, B:345:0x0b1f, B:347:0x0b2d, B:349:0x0b35, B:352:0x0b41, B:354:0x0b56, B:356:0x0b78, B:357:0x0b83, B:359:0x0ba2, B:362:0x0bbe, B:364:0x0bcd, B:367:0x0be4, B:369:0x0bf7, B:372:0x0c01, B:373:0x0c33, B:374:0x0c57, B:375:0x0c5a, B:377:0x0c8c, B:379:0x0c97, B:381:0x0caa, B:387:0x0cc8, B:391:0x0cf9, B:393:0x0d19, B:402:0x0d9f, B:405:0x0dc7, B:407:0x0de7, B:409:0x0ded, B:411:0x0dfa, B:413:0x0e16, B:415:0x0e1c, B:417:0x0e27, B:424:0x0e99, B:429:0x0eb6, B:431:0x0ec4, B:433:0x0ecc, B:436:0x0edb, B:438:0x0ee1, B:441:0x0ef0, B:443:0x0ef6, B:451:0x0f17, B:455:0x0f38, B:460:0x0f7c, B:463:0x0f9b, B:473:0x101d, B:475:0x1025, B:477:0x102d, B:481:0x1039, B:484:0x1043, B:488:0x106e, B:490:0x107e, B:492:0x109a, B:494:0x10a2, B:496:0x10b0, B:502:0x10f5, B:82:0x02b5), top: B:638:0x000f, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0b1c  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0c97 A[Catch: all -> 0x153b, TryCatch #13 {all -> 0x153b, blocks: (B:3:0x000f, B:5:0x0017, B:32:0x0103, B:57:0x01da, B:72:0x0269, B:108:0x03ab, B:117:0x040f, B:125:0x0441, B:134:0x047e, B:147:0x04d3, B:149:0x04db, B:151:0x04e1, B:158:0x04ff, B:160:0x0539, B:162:0x0548, B:164:0x0574, B:166:0x05b2, B:173:0x05d5, B:175:0x05e2, B:177:0x0602, B:179:0x061d, B:186:0x064e, B:190:0x065e, B:194:0x066e, B:210:0x06aa, B:212:0x06b2, B:214:0x06bd, B:219:0x06db, B:221:0x06e9, B:224:0x06fc, B:226:0x070a, B:233:0x072e, B:236:0x0794, B:238:0x07f2, B:242:0x0827, B:244:0x0832, B:246:0x0846, B:248:0x0857, B:250:0x0866, B:252:0x086b, B:254:0x0881, B:258:0x0898, B:264:0x08b0, B:266:0x08e6, B:271:0x0922, B:276:0x093b, B:285:0x0963, B:289:0x0988, B:291:0x09a1, B:294:0x09c8, B:298:0x09e3, B:300:0x09f3, B:302:0x09fb, B:307:0x0a17, B:314:0x0a43, B:316:0x0a4e, B:318:0x0a59, B:323:0x0a8f, B:325:0x0a9c, B:329:0x0aaa, B:331:0x0ab3, B:334:0x0ac6, B:339:0x0ae4, B:341:0x0b0d, B:345:0x0b1f, B:347:0x0b2d, B:349:0x0b35, B:352:0x0b41, B:354:0x0b56, B:356:0x0b78, B:357:0x0b83, B:359:0x0ba2, B:362:0x0bbe, B:364:0x0bcd, B:367:0x0be4, B:369:0x0bf7, B:372:0x0c01, B:373:0x0c33, B:374:0x0c57, B:375:0x0c5a, B:377:0x0c8c, B:379:0x0c97, B:381:0x0caa, B:387:0x0cc8, B:391:0x0cf9, B:393:0x0d19, B:402:0x0d9f, B:405:0x0dc7, B:407:0x0de7, B:409:0x0ded, B:411:0x0dfa, B:413:0x0e16, B:415:0x0e1c, B:417:0x0e27, B:424:0x0e99, B:429:0x0eb6, B:431:0x0ec4, B:433:0x0ecc, B:436:0x0edb, B:438:0x0ee1, B:441:0x0ef0, B:443:0x0ef6, B:451:0x0f17, B:455:0x0f38, B:460:0x0f7c, B:463:0x0f9b, B:473:0x101d, B:475:0x1025, B:477:0x102d, B:481:0x1039, B:484:0x1043, B:488:0x106e, B:490:0x107e, B:492:0x109a, B:494:0x10a2, B:496:0x10b0, B:502:0x10f5, B:82:0x02b5), top: B:638:0x000f, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0cc8 A[Catch: all -> 0x153b, TRY_ENTER, TryCatch #13 {all -> 0x153b, blocks: (B:3:0x000f, B:5:0x0017, B:32:0x0103, B:57:0x01da, B:72:0x0269, B:108:0x03ab, B:117:0x040f, B:125:0x0441, B:134:0x047e, B:147:0x04d3, B:149:0x04db, B:151:0x04e1, B:158:0x04ff, B:160:0x0539, B:162:0x0548, B:164:0x0574, B:166:0x05b2, B:173:0x05d5, B:175:0x05e2, B:177:0x0602, B:179:0x061d, B:186:0x064e, B:190:0x065e, B:194:0x066e, B:210:0x06aa, B:212:0x06b2, B:214:0x06bd, B:219:0x06db, B:221:0x06e9, B:224:0x06fc, B:226:0x070a, B:233:0x072e, B:236:0x0794, B:238:0x07f2, B:242:0x0827, B:244:0x0832, B:246:0x0846, B:248:0x0857, B:250:0x0866, B:252:0x086b, B:254:0x0881, B:258:0x0898, B:264:0x08b0, B:266:0x08e6, B:271:0x0922, B:276:0x093b, B:285:0x0963, B:289:0x0988, B:291:0x09a1, B:294:0x09c8, B:298:0x09e3, B:300:0x09f3, B:302:0x09fb, B:307:0x0a17, B:314:0x0a43, B:316:0x0a4e, B:318:0x0a59, B:323:0x0a8f, B:325:0x0a9c, B:329:0x0aaa, B:331:0x0ab3, B:334:0x0ac6, B:339:0x0ae4, B:341:0x0b0d, B:345:0x0b1f, B:347:0x0b2d, B:349:0x0b35, B:352:0x0b41, B:354:0x0b56, B:356:0x0b78, B:357:0x0b83, B:359:0x0ba2, B:362:0x0bbe, B:364:0x0bcd, B:367:0x0be4, B:369:0x0bf7, B:372:0x0c01, B:373:0x0c33, B:374:0x0c57, B:375:0x0c5a, B:377:0x0c8c, B:379:0x0c97, B:381:0x0caa, B:387:0x0cc8, B:391:0x0cf9, B:393:0x0d19, B:402:0x0d9f, B:405:0x0dc7, B:407:0x0de7, B:409:0x0ded, B:411:0x0dfa, B:413:0x0e16, B:415:0x0e1c, B:417:0x0e27, B:424:0x0e99, B:429:0x0eb6, B:431:0x0ec4, B:433:0x0ecc, B:436:0x0edb, B:438:0x0ee1, B:441:0x0ef0, B:443:0x0ef6, B:451:0x0f17, B:455:0x0f38, B:460:0x0f7c, B:463:0x0f9b, B:473:0x101d, B:475:0x1025, B:477:0x102d, B:481:0x1039, B:484:0x1043, B:488:0x106e, B:490:0x107e, B:492:0x109a, B:494:0x10a2, B:496:0x10b0, B:502:0x10f5, B:82:0x02b5), top: B:638:0x000f, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:391:0x0cf9 A[Catch: all -> 0x153b, TRY_ENTER, TryCatch #13 {all -> 0x153b, blocks: (B:3:0x000f, B:5:0x0017, B:32:0x0103, B:57:0x01da, B:72:0x0269, B:108:0x03ab, B:117:0x040f, B:125:0x0441, B:134:0x047e, B:147:0x04d3, B:149:0x04db, B:151:0x04e1, B:158:0x04ff, B:160:0x0539, B:162:0x0548, B:164:0x0574, B:166:0x05b2, B:173:0x05d5, B:175:0x05e2, B:177:0x0602, B:179:0x061d, B:186:0x064e, B:190:0x065e, B:194:0x066e, B:210:0x06aa, B:212:0x06b2, B:214:0x06bd, B:219:0x06db, B:221:0x06e9, B:224:0x06fc, B:226:0x070a, B:233:0x072e, B:236:0x0794, B:238:0x07f2, B:242:0x0827, B:244:0x0832, B:246:0x0846, B:248:0x0857, B:250:0x0866, B:252:0x086b, B:254:0x0881, B:258:0x0898, B:264:0x08b0, B:266:0x08e6, B:271:0x0922, B:276:0x093b, B:285:0x0963, B:289:0x0988, B:291:0x09a1, B:294:0x09c8, B:298:0x09e3, B:300:0x09f3, B:302:0x09fb, B:307:0x0a17, B:314:0x0a43, B:316:0x0a4e, B:318:0x0a59, B:323:0x0a8f, B:325:0x0a9c, B:329:0x0aaa, B:331:0x0ab3, B:334:0x0ac6, B:339:0x0ae4, B:341:0x0b0d, B:345:0x0b1f, B:347:0x0b2d, B:349:0x0b35, B:352:0x0b41, B:354:0x0b56, B:356:0x0b78, B:357:0x0b83, B:359:0x0ba2, B:362:0x0bbe, B:364:0x0bcd, B:367:0x0be4, B:369:0x0bf7, B:372:0x0c01, B:373:0x0c33, B:374:0x0c57, B:375:0x0c5a, B:377:0x0c8c, B:379:0x0c97, B:381:0x0caa, B:387:0x0cc8, B:391:0x0cf9, B:393:0x0d19, B:402:0x0d9f, B:405:0x0dc7, B:407:0x0de7, B:409:0x0ded, B:411:0x0dfa, B:413:0x0e16, B:415:0x0e1c, B:417:0x0e27, B:424:0x0e99, B:429:0x0eb6, B:431:0x0ec4, B:433:0x0ecc, B:436:0x0edb, B:438:0x0ee1, B:441:0x0ef0, B:443:0x0ef6, B:451:0x0f17, B:455:0x0f38, B:460:0x0f7c, B:463:0x0f9b, B:473:0x101d, B:475:0x1025, B:477:0x102d, B:481:0x1039, B:484:0x1043, B:488:0x106e, B:490:0x107e, B:492:0x109a, B:494:0x10a2, B:496:0x10b0, B:502:0x10f5, B:82:0x02b5), top: B:638:0x000f, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:614:0x1518 A[Catch: all -> 0x1537, TRY_ENTER, TRY_LEAVE, TryCatch #11 {all -> 0x1537, blocks: (B:557:0x12f4, B:558:0x1311, B:560:0x131a, B:563:0x1326, B:565:0x1332, B:571:0x1353, B:573:0x135f, B:576:0x13a9, B:578:0x13b2, B:580:0x13d0, B:583:0x13db, B:584:0x13e8, B:586:0x13f5, B:587:0x1403, B:589:0x141f, B:591:0x142b, B:593:0x1454, B:597:0x1464, B:599:0x146f, B:600:0x1487, B:602:0x14ae, B:604:0x14cb, B:606:0x14d7, B:608:0x14f0, B:610:0x1505, B:614:0x1518, B:620:0x152e, B:622:0x1536), top: B:637:0x0017, inners: #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:620:0x152e A[Catch: all -> 0x1537, TRY_ENTER, TryCatch #11 {all -> 0x1537, blocks: (B:557:0x12f4, B:558:0x1311, B:560:0x131a, B:563:0x1326, B:565:0x1332, B:571:0x1353, B:573:0x135f, B:576:0x13a9, B:578:0x13b2, B:580:0x13d0, B:583:0x13db, B:584:0x13e8, B:586:0x13f5, B:587:0x1403, B:589:0x141f, B:591:0x142b, B:593:0x1454, B:597:0x1464, B:599:0x146f, B:600:0x1487, B:602:0x14ae, B:604:0x14cb, B:606:0x14d7, B:608:0x14f0, B:610:0x1505, B:614:0x1518, B:620:0x152e, B:622:0x1536), top: B:637:0x0017, inners: #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:670:0x0cc0 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v396, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r17v37 */
    /* JADX WARN: Type inference failed for: r17v38 */
    /* JADX WARN: Type inference failed for: r17v39 */
    /* JADX WARN: Type inference failed for: r17v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r17v42 */
    /* JADX WARN: Type inference failed for: r17v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r17v55 */
    /* JADX WARN: Type inference failed for: r17v74 */
    /* JADX WARN: Type inference failed for: r17v79 */
    /* JADX WARN: Type inference failed for: r17v84 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v11, types: [long] */
    /* JADX WARN: Type inference failed for: r18v12 */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v17 */
    /* JADX WARN: Type inference failed for: r18v19 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r18v20 */
    /* JADX WARN: Type inference failed for: r18v21 */
    /* JADX WARN: Type inference failed for: r18v22 */
    /* JADX WARN: Unknown variable types count: 3 */
    @androidx.annotation.WorkerThread
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m16195a(java.lang.String r17, long r18) {
        /*
            Method dump skipped, instructions count: 5445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9061t3.m16195a(java.lang.String, long):boolean");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:19|(1:21)(1:22)|23|(2:25|(3:27|33|(2:35|36)(1:41)))|28|37|29|32|33|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0165, code lost:
        r26 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0167, code lost:
        r0.mo16178c().m16375s().m16336a("Error pruning currencies. appId", p081h.p203i.p204a.p224e.p285m.p287b.C9027o.m16380a(r13), r26);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v68, types: [double] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [double] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m16194a(java.lang.String r13, com.google.android.gms.measurement.internal.zzad r14) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9061t3.m16194a(java.lang.String, com.google.android.gms.measurement.internal.zzad):boolean");
    }

    @WorkerThread
    /* renamed from: a */
    public final byte[] m16208a(@NonNull zzad zzadVar, @Size(min = 1) String str) {
        m16161q();
        m16172f();
        this.f20656h.m16285h();
        throw null;
    }

    /* renamed from: a */
    public final C8752v0[] m16193a(String str, C8579d1[] d1VarArr, C8770x0[] x0VarArr) {
        C7021t.m21283b(str);
        return m16167k().m16574a(str, x0VarArr, d1VarArr);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9041q1
    /* renamed from: b */
    public final C8996i4 mo16187b() {
        return this.f20656h.mo16187b();
    }

    @WorkerThread
    /* renamed from: b */
    public final Boolean m16180b(C8978f4 f4Var) {
        try {
            if (f4Var.m16624l() != -2147483648L) {
                if (f4Var.m16624l() == C7097c.m21085b(this.f20656h.getContext()).m21087b(f4Var.m16639f(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = C7097c.m21085b(this.f20656h.getContext()).m21087b(f4Var.m16639f(), 0).versionName;
                if (f4Var.m16642e() != null && f4Var.m16642e().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x080b A[Catch: all -> 0x0889, TRY_LEAVE, TryCatch #1 {all -> 0x0889, blocks: (B:34:0x013d, B:36:0x0150, B:39:0x015e, B:41:0x0167, B:44:0x0176, B:49:0x01c7, B:51:0x01e5, B:56:0x01f8, B:61:0x021f, B:63:0x023d, B:68:0x0265, B:73:0x0297, B:75:0x02b5, B:78:0x02c3, B:80:0x02f2, B:82:0x0319, B:85:0x032a, B:86:0x0344, B:87:0x0347, B:89:0x0364, B:91:0x038a, B:95:0x039f, B:98:0x03e1, B:99:0x03ff, B:101:0x0419, B:105:0x0490, B:107:0x049c, B:111:0x04ce, B:113:0x04d9, B:115:0x04f3, B:117:0x0501, B:119:0x0508, B:120:0x0525, B:122:0x0539, B:124:0x0540, B:126:0x0557, B:129:0x057b, B:131:0x0583, B:133:0x059f, B:135:0x05a7, B:137:0x061a, B:139:0x0620, B:141:0x0627, B:144:0x063c, B:146:0x06de, B:148:0x070f, B:150:0x071b, B:151:0x0772, B:153:0x077e, B:155:0x0789, B:157:0x0794, B:159:0x079c, B:163:0x07b5, B:165:0x07e1, B:169:0x07ff, B:171:0x080b, B:173:0x0814, B:175:0x082e, B:177:0x0842), top: B:186:0x013d, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0842 A[Catch: all -> 0x0889, TryCatch #1 {all -> 0x0889, blocks: (B:34:0x013d, B:36:0x0150, B:39:0x015e, B:41:0x0167, B:44:0x0176, B:49:0x01c7, B:51:0x01e5, B:56:0x01f8, B:61:0x021f, B:63:0x023d, B:68:0x0265, B:73:0x0297, B:75:0x02b5, B:78:0x02c3, B:80:0x02f2, B:82:0x0319, B:85:0x032a, B:86:0x0344, B:87:0x0347, B:89:0x0364, B:91:0x038a, B:95:0x039f, B:98:0x03e1, B:99:0x03ff, B:101:0x0419, B:105:0x0490, B:107:0x049c, B:111:0x04ce, B:113:0x04d9, B:115:0x04f3, B:117:0x0501, B:119:0x0508, B:120:0x0525, B:122:0x0539, B:124:0x0540, B:126:0x0557, B:129:0x057b, B:131:0x0583, B:133:0x059f, B:135:0x05a7, B:137:0x061a, B:139:0x0620, B:141:0x0627, B:144:0x063c, B:146:0x06de, B:148:0x070f, B:150:0x071b, B:151:0x0772, B:153:0x077e, B:155:0x0789, B:157:0x0794, B:159:0x079c, B:163:0x07b5, B:165:0x07e1, B:169:0x07ff, B:171:0x080b, B:173:0x0814, B:175:0x082e, B:177:0x0842), top: B:186:0x013d, inners: #0 }] */
    @androidx.annotation.WorkerThread
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16186b(com.google.android.gms.measurement.internal.zzad r17, com.google.android.gms.measurement.internal.zzh r18) {
        /*
            Method dump skipped, instructions count: 2195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9061t3.m16186b(com.google.android.gms.measurement.internal.zzad, com.google.android.gms.measurement.internal.zzh):void");
    }

    @WorkerThread
    /* renamed from: b */
    public final void m16185b(zzad zzadVar, String str) {
        C8978f4 b = m16166l().m16411b(str);
        if (b == null || TextUtils.isEmpty(b.m16642e())) {
            this.f20656h.mo16178c().m16368z().m16337a("No app data available; dropping event", str);
            return;
        }
        Boolean b2 = m16180b(b);
        if (b2 == null) {
            if (!"_ui".equals(zzadVar.f7147a)) {
                this.f20656h.mo16178c().m16372v().m16337a("Could not find package. appId", C9027o.m16380a(str));
            }
        } else if (!b2.booleanValue()) {
            this.f20656h.mo16178c().m16375s().m16337a("App version does not match; dropping event. appId", C9027o.m16380a(str));
            return;
        }
        m16209a(zzadVar, new zzh(str, b.m16649c(), b.m16642e(), b.m16624l(), b.m16622m(), b.m16620n(), b.m16618o(), (String) null, b.m16645d(), false, b.m16653b(), b.m16660B(), 0L, 0, b.m16659C(), b.m16658D(), false, b.m16633h()));
    }

    @WorkerThread
    /* renamed from: b */
    public final void m16184b(zzfh zzfhVar, zzh zzhVar) {
        C8953b4 d;
        m16172f();
        m16161q();
        if (TextUtils.isEmpty(zzhVar.f7159b) && TextUtils.isEmpty(zzhVar.f7175r)) {
            return;
        }
        if (!zzhVar.f7165h) {
            m16175d(zzhVar);
        } else if (!this.f20656h.m16272u().m16501d(zzhVar.f7158a, C8966e.f20320j0) || !"_ap".equals(zzfhVar.f7152b) || (d = m16166l().m16404d(zzhVar.f7158a, "_ap")) == null || !DebugKt.DEBUG_PROPERTY_VALUE_AUTO.equals(zzfhVar.f7156f) || DebugKt.DEBUG_PROPERTY_VALUE_AUTO.equals(d.f20237b)) {
            this.f20656h.mo16178c().m16368z().m16337a("Removing user property", this.f20656h.m16275r().m16470c(zzfhVar.f7152b));
            m16166l().m16396t();
            try {
                m16175d(zzhVar);
                m16166l().m16406c(zzhVar.f7158a, zzfhVar.f7152b);
                m16166l().m16393w();
                this.f20656h.mo16178c().m16368z().m16337a("User property removed", this.f20656h.m16275r().m16470c(zzfhVar.f7152b));
            } finally {
                m16166l().m16395u();
            }
        } else {
            this.f20656h.mo16178c().m16368z().m16338a("Not removing higher priority ad personalization property");
        }
    }

    /* renamed from: b */
    public final void m16183b(zzh zzhVar) {
        m16172f();
        m16161q();
        C7021t.m21283b(zzhVar.f7158a);
        m16175d(zzhVar);
    }

    @WorkerThread
    /* renamed from: b */
    public final void m16182b(zzl zzlVar) {
        zzh a = m16197a(zzlVar.f7176a);
        if (a != null) {
            m16181b(zzlVar, a);
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final void m16181b(zzl zzlVar, zzh zzhVar) {
        C7021t.m21290a(zzlVar);
        C7021t.m21283b(zzlVar.f7176a);
        C7021t.m21290a(zzlVar.f7178c);
        C7021t.m21283b(zzlVar.f7178c.f7152b);
        m16172f();
        m16161q();
        if (TextUtils.isEmpty(zzhVar.f7159b) && TextUtils.isEmpty(zzhVar.f7175r)) {
            return;
        }
        if (!zzhVar.f7165h) {
            m16175d(zzhVar);
            return;
        }
        m16166l().m16396t();
        try {
            m16175d(zzhVar);
            zzl e = m16166l().m16402e(zzlVar.f7176a, zzlVar.f7178c.f7152b);
            if (e != null) {
                this.f20656h.mo16178c().m16368z().m16336a("Removing conditional user property", zzlVar.f7176a, this.f20656h.m16275r().m16470c(zzlVar.f7178c.f7152b));
                m16166l().m16400f(zzlVar.f7176a, zzlVar.f7178c.f7152b);
                if (e.f7180e) {
                    m16166l().m16406c(zzlVar.f7176a, zzlVar.f7178c.f7152b);
                }
                if (zzlVar.f7186k != null) {
                    Bundle bundle = null;
                    if (zzlVar.f7186k.f7148b != null) {
                        bundle = zzlVar.f7186k.f7148b.m31660c();
                    }
                    m16186b(this.f20656h.m16274s().m16724a(zzlVar.f7176a, zzlVar.f7186k.f7147a, bundle, e.f7177b, zzlVar.f7186k.f7150d, true, false), zzhVar);
                }
            } else {
                this.f20656h.mo16178c().m16372v().m16336a("Conditional user property doesn't exist", C9027o.m16380a(zzlVar.f7176a), this.f20656h.m16275r().m16470c(zzlVar.f7178c.f7152b));
            }
            m16166l().m16393w();
        } finally {
            m16166l().m16395u();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9041q1
    /* renamed from: c */
    public final C9027o mo16178c() {
        return this.f20656h.mo16178c();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:(3:150|83|84)|(2:152|85)|90|(5:94|(2:96|97)(1:98)|99|(1:101)(1:102)|103)|104|146|105|109|(5:111|(1:113)|114|115|(1:117))) */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x046a, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x046b, code lost:
        r7.f20656h.mo16178c().m16375s().m16336a("Application info is null, first open report might be inaccurate. appId", p081h.p203i.p204a.p224e.p285m.p287b.C9027o.m16380a(r8.f7158a), r9);
        r9 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0489 A[Catch: all -> 0x060e, TRY_ENTER, TryCatch #4 {all -> 0x060e, blocks: (B:27:0x00cf, B:30:0x00e4, B:32:0x00ef, B:34:0x0107, B:36:0x013a, B:38:0x014b, B:40:0x01d1, B:42:0x01ea, B:47:0x0204, B:50:0x0211, B:52:0x021d, B:53:0x025a, B:55:0x0261, B:57:0x026f, B:58:0x02ac, B:60:0x02b7, B:63:0x02cf, B:67:0x02e7, B:70:0x02fb, B:72:0x0326, B:74:0x0339, B:76:0x0391, B:78:0x0398, B:80:0x03a2, B:82:0x03ae, B:83:0x03c8, B:85:0x03db, B:88:0x03e9, B:92:0x0407, B:94:0x0410, B:96:0x041c, B:99:0x042e, B:103:0x043e, B:105:0x0455, B:107:0x046b, B:111:0x0489, B:113:0x0492, B:115:0x049c, B:117:0x04a6, B:119:0x04b0, B:122:0x04d8, B:123:0x04e1, B:124:0x04e4, B:127:0x050e, B:129:0x055d, B:131:0x0564, B:132:0x056d, B:133:0x0570, B:134:0x0591, B:135:0x0594, B:136:0x05ca, B:138:0x05d1, B:140:0x0600), top: B:154:0x00cf, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x04d8 A[Catch: all -> 0x060e, TRY_ENTER, TryCatch #4 {all -> 0x060e, blocks: (B:27:0x00cf, B:30:0x00e4, B:32:0x00ef, B:34:0x0107, B:36:0x013a, B:38:0x014b, B:40:0x01d1, B:42:0x01ea, B:47:0x0204, B:50:0x0211, B:52:0x021d, B:53:0x025a, B:55:0x0261, B:57:0x026f, B:58:0x02ac, B:60:0x02b7, B:63:0x02cf, B:67:0x02e7, B:70:0x02fb, B:72:0x0326, B:74:0x0339, B:76:0x0391, B:78:0x0398, B:80:0x03a2, B:82:0x03ae, B:83:0x03c8, B:85:0x03db, B:88:0x03e9, B:92:0x0407, B:94:0x0410, B:96:0x041c, B:99:0x042e, B:103:0x043e, B:105:0x0455, B:107:0x046b, B:111:0x0489, B:113:0x0492, B:115:0x049c, B:117:0x04a6, B:119:0x04b0, B:122:0x04d8, B:123:0x04e1, B:124:0x04e4, B:127:0x050e, B:129:0x055d, B:131:0x0564, B:132:0x056d, B:133:0x0570, B:134:0x0591, B:135:0x0594, B:136:0x05ca, B:138:0x05d1, B:140:0x0600), top: B:154:0x00cf, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x041c A[Catch: all -> 0x060e, TRY_LEAVE, TryCatch #4 {all -> 0x060e, blocks: (B:27:0x00cf, B:30:0x00e4, B:32:0x00ef, B:34:0x0107, B:36:0x013a, B:38:0x014b, B:40:0x01d1, B:42:0x01ea, B:47:0x0204, B:50:0x0211, B:52:0x021d, B:53:0x025a, B:55:0x0261, B:57:0x026f, B:58:0x02ac, B:60:0x02b7, B:63:0x02cf, B:67:0x02e7, B:70:0x02fb, B:72:0x0326, B:74:0x0339, B:76:0x0391, B:78:0x0398, B:80:0x03a2, B:82:0x03ae, B:83:0x03c8, B:85:0x03db, B:88:0x03e9, B:92:0x0407, B:94:0x0410, B:96:0x041c, B:99:0x042e, B:103:0x043e, B:105:0x0455, B:107:0x046b, B:111:0x0489, B:113:0x0492, B:115:0x049c, B:117:0x04a6, B:119:0x04b0, B:122:0x04d8, B:123:0x04e1, B:124:0x04e4, B:127:0x050e, B:129:0x055d, B:131:0x0564, B:132:0x056d, B:133:0x0570, B:134:0x0591, B:135:0x0594, B:136:0x05ca, B:138:0x05d1, B:140:0x0600), top: B:154:0x00cf, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x042b  */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @androidx.annotation.WorkerThread
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16177c(com.google.android.gms.measurement.internal.zzh r8) {
        /*
            Method dump skipped, instructions count: 1560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9061t3.m16177c(com.google.android.gms.measurement.internal.zzh):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0211  */
    @androidx.annotation.WorkerThread
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p081h.p203i.p204a.p224e.p285m.p287b.C8978f4 m16175d(com.google.android.gms.measurement.internal.zzh r6) {
        /*
            Method dump skipped, instructions count: 539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9061t3.m16175d(com.google.android.gms.measurement.internal.zzh):h.i.a.e.m.b.f4");
    }

    @WorkerThread
    /* renamed from: d */
    public final void m16176d() {
        this.f20656h.mo16214a().mo16328d();
        m16166l().m16390z();
        if (this.f20656h.m16273t().f20200e.m16696a() == 0) {
            this.f20656h.m16273t().f20200e.m16695a(this.f20656h.mo16174e().currentTimeMillis());
        }
        m16157u();
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9041q1
    /* renamed from: e */
    public final AbstractC7074f mo16174e() {
        return this.f20656h.mo16174e();
    }

    /* renamed from: e */
    public final String m16173e(zzh zzhVar) {
        try {
            return (String) this.f20656h.mo16214a().m16363a(new CallableC9086x3(this, zzhVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.f20656h.mo16178c().m16375s().m16336a("Failed to get app instance id. appId", C9027o.m16380a(zzhVar.f7158a), e);
            return null;
        }
    }

    @WorkerThread
    /* renamed from: f */
    public final void m16172f() {
        this.f20656h.mo16214a().mo16328d();
    }

    /* renamed from: g */
    public final C9015m m16171g() {
        return this.f20656h.m16275r();
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9041q1
    public final Context getContext() {
        return this.f20656h.getContext();
    }

    /* renamed from: h */
    public final C8959c4 m16170h() {
        return this.f20656h.m16274s();
    }

    /* renamed from: i */
    public final C9008k4 m16169i() {
        return this.f20656h.m16272u();
    }

    /* renamed from: j */
    public final C9096z3 m16168j() {
        m16179b(this.f20655g);
        return this.f20655g;
    }

    /* renamed from: k */
    public final C8990h4 m16167k() {
        m16179b(this.f20654f);
        return this.f20654f;
    }

    /* renamed from: l */
    public final C9026n4 m16166l() {
        m16179b(this.f20651c);
        return this.f20651c;
    }

    /* renamed from: m */
    public final C9022n0 m16165m() {
        m16179b(this.f20649a);
        return this.f20649a;
    }

    /* renamed from: n */
    public final C9051s m16164n() {
        m16179b(this.f20650b);
        return this.f20650b;
    }

    /* renamed from: o */
    public final C9082x m16163o() {
        C9082x xVar = this.f20652d;
        if (xVar != null) {
            return xVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    /* renamed from: p */
    public final C9031o3 m16162p() {
        m16179b(this.f20653e);
        return this.f20653e;
    }

    /* renamed from: q */
    public final void m16161q() {
        if (!this.f20657i) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m16160r() {
        /*
            r5 = this;
            r0 = r5
            h.i.a.e.m.b.s0 r0 = r0.f20656h
            h.i.a.e.d.s.f r0 = r0.mo16174e()
            long r0 = r0.currentTimeMillis()
            r6 = r0
            r0 = r5
            h.i.a.e.m.b.s0 r0 = r0.f20656h
            h.i.a.e.m.b.a0 r0 = r0.m16273t()
            r8 = r0
            r0 = r8
            r0.m16342n()
            r0 = r8
            r0.mo16328d()
            r0 = r8
            h.i.a.e.m.b.d0 r0 = r0.f20204i
            long r0 = r0.m16696a()
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004c
            r0 = 1
            r1 = r8
            h.i.a.e.m.b.c4 r1 = r1.m16351j()
            java.security.SecureRandom r1 = r1.m16700t()
            r2 = 86400000(0x5265c00, float:7.82218E-36)
            int r1 = r1.nextInt(r2)
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            r0 = r8
            h.i.a.e.m.b.d0 r0 = r0.f20204i
            r1 = r11
            r0.m16695a(r1)
        L_0x004c:
            r0 = r6
            r1 = r11
            long r0 = r0 + r1
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r1
            r1 = 60
            long r0 = r0 / r1
            r1 = 60
            long r0 = r0 / r1
            r1 = 24
            long r0 = r0 / r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9061t3.m16160r():long");
    }

    @WorkerThread
    /* renamed from: s */
    public final void m16159s() {
        C8978f4 b;
        String str;
        m16172f();
        m16161q();
        this.f20665q = true;
        try {
            this.f20656h.mo16187b();
            Boolean I = this.f20656h.m16280m().m16539I();
            if (I == null) {
                this.f20656h.mo16178c().m16372v().m16338a("Upload data called on the client side before use of service was decided");
            } else if (I.booleanValue()) {
                this.f20656h.mo16178c().m16375s().m16338a("Upload called in the client side when service should be used");
            } else if (this.f20659k > 0) {
                m16157u();
            } else {
                m16172f();
                if (this.f20668t != null) {
                    this.f20656h.mo16178c().m16389A().m16338a("Uploading requested multiple times");
                } else if (!m16164n().m16307t()) {
                    this.f20656h.mo16178c().m16389A().m16338a("Network not connected, ignoring upload request");
                    m16157u();
                } else {
                    long currentTimeMillis = this.f20656h.mo16174e().currentTimeMillis();
                    String str2 = null;
                    m16195a((String) null, currentTimeMillis - C9008k4.m16481u());
                    long a = this.f20656h.m16273t().f20200e.m16696a();
                    if (a != 0) {
                        this.f20656h.mo16178c().m16368z().m16337a("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(currentTimeMillis - a)));
                    }
                    String x = m16166l().m16392x();
                    if (!TextUtils.isEmpty(x)) {
                        if (this.f20670v == -1) {
                            this.f20670v = m16166l().m16443E();
                        }
                        List<Pair<C8547a1, Long>> a2 = m16166l().m16422a(x, this.f20656h.m16272u().m16505b(x, C8966e.f20327q), Math.max(0, this.f20656h.m16272u().m16505b(x, C8966e.f20328r)));
                        if (!a2.isEmpty()) {
                            Iterator<Pair<C8547a1, Long>> it = a2.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    str = null;
                                    break;
                                }
                                C8547a1 a1Var = (C8547a1) it.next().first;
                                if (!TextUtils.isEmpty(a1Var.f19595u)) {
                                    str = a1Var.f19595u;
                                    break;
                                }
                            }
                            List<Pair<C8547a1, Long>> list = a2;
                            if (str != null) {
                                int i = 0;
                                while (true) {
                                    list = a2;
                                    if (i >= a2.size()) {
                                        break;
                                    }
                                    C8547a1 a1Var2 = (C8547a1) a2.get(i).first;
                                    if (!(TextUtils.isEmpty(a1Var2.f19595u) || a1Var2.f19595u.equals(str))) {
                                        list = a2.subList(0, i);
                                        break;
                                    }
                                    i++;
                                }
                            }
                            C8792z0 z0Var = new C8792z0();
                            z0Var.f20154c = new C8547a1[list.size()];
                            ArrayList arrayList = new ArrayList(list.size());
                            boolean z = C9008k4.m16480v() && this.f20656h.m16272u().m16504c(x);
                            for (int i2 = 0; i2 < z0Var.f20154c.length; i2++) {
                                z0Var.f20154c[i2] = (C8547a1) list.get(i2).first;
                                arrayList.add((Long) list.get(i2).second);
                                z0Var.f20154c[i2].f19594t = Long.valueOf(this.f20656h.m16272u().m16490n());
                                z0Var.f20154c[i2].f19580f = Long.valueOf(currentTimeMillis);
                                C8547a1 a1Var3 = z0Var.f20154c[i2];
                                this.f20656h.mo16187b();
                                a1Var3.f19563B = false;
                                if (!z) {
                                    z0Var.f20154c[i2].f19572K = null;
                                }
                            }
                            if (this.f20656h.mo16178c().m16386a(2)) {
                                str2 = m16168j().m16087b(z0Var);
                            }
                            byte[] a3 = m16168j().m16100a(z0Var);
                            String a4 = C8966e.f20275A.m16678a();
                            try {
                                URL url = new URL(a4);
                                C7021t.m21286a(!arrayList.isEmpty());
                                if (this.f20668t != null) {
                                    this.f20656h.mo16178c().m16375s().m16338a("Set uploading progress before finishing the previous upload");
                                } else {
                                    this.f20668t = new ArrayList(arrayList);
                                }
                                this.f20656h.m16273t().f20201f.m16695a(currentTimeMillis);
                                String str3 = "?";
                                if (z0Var.f20154c.length > 0) {
                                    str3 = z0Var.f20154c[0].f19591q;
                                }
                                this.f20656h.mo16178c().m16389A().m16335a("Uploading data. app, uncompressed size, data", str3, Integer.valueOf(a3.length), str2);
                                this.f20664p = true;
                                C9051s n = m16164n();
                                C9074v3 v3Var = new C9074v3(this, x);
                                n.mo16328d();
                                n.m16316q();
                                C7021t.m21290a(url);
                                C7021t.m21290a(a3);
                                C7021t.m21290a(v3Var);
                                n.mo16214a().m16360b(new RunnableC9076w(n, x, url, a3, null, v3Var));
                            } catch (MalformedURLException e) {
                                this.f20656h.mo16178c().m16375s().m16336a("Failed to parse upload URL. Not uploading. appId", C9027o.m16380a(x), a4);
                            }
                        }
                    } else {
                        this.f20670v = -1L;
                        String a5 = m16166l().m16435a(currentTimeMillis - C9008k4.m16481u());
                        if (!TextUtils.isEmpty(a5) && (b = m16166l().m16411b(a5)) != null) {
                            m16203a(b);
                        }
                    }
                }
            }
        } finally {
            this.f20665q = false;
            m16156v();
        }
    }

    /* renamed from: t */
    public final boolean m16158t() {
        m16172f();
        m16161q();
        return m16166l().m16445C() || !TextUtils.isEmpty(m16166l().m16392x());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0232  */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 5 */
    @androidx.annotation.WorkerThread
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16157u() {
        /*
            Method dump skipped, instructions count: 797
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9061t3.m16157u():void");
    }

    @WorkerThread
    /* renamed from: v */
    public final void m16156v() {
        m16172f();
        if (this.f20663o || this.f20664p || this.f20665q) {
            this.f20656h.mo16178c().m16389A().m16335a("Not stopping services. fetch, network, upload", Boolean.valueOf(this.f20663o), Boolean.valueOf(this.f20664p), Boolean.valueOf(this.f20665q));
            return;
        }
        this.f20656h.mo16178c().m16389A().m16338a("Stopping uploading service(s)");
        List<Runnable> list = this.f20660l;
        if (list != null) {
            for (Runnable runnable : list) {
                runnable.run();
            }
            this.f20660l.clear();
        }
    }

    @WorkerThread
    /* renamed from: w */
    public final boolean m16155w() {
        m16172f();
        try {
            this.f20667s = new RandomAccessFile(new File(this.f20656h.getContext().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.f20666r = this.f20667s.tryLock();
            if (this.f20666r != null) {
                this.f20656h.mo16178c().m16389A().m16338a("Storage concurrent access okay");
                return true;
            }
            this.f20656h.mo16178c().m16375s().m16338a("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            this.f20656h.mo16178c().m16375s().m16337a("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            this.f20656h.mo16178c().m16375s().m16337a("Failed to access storage lock file", e2);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: x */
    public final void m16154x() {
        m16172f();
        m16161q();
        if (!this.f20658j) {
            this.f20656h.mo16178c().m16369y().m16338a("This instance being marked as an uploader");
            m16172f();
            m16161q();
            if (m16153y() && m16155w()) {
                int a = m16192a(this.f20667s);
                int E = this.f20656h.m16281l().m16565E();
                m16172f();
                if (a > E) {
                    this.f20656h.mo16178c().m16375s().m16336a("Panic: can't downgrade version. Previous, current version", Integer.valueOf(a), Integer.valueOf(E));
                } else if (a < E) {
                    if (m16212a(E, this.f20667s)) {
                        this.f20656h.mo16178c().m16389A().m16336a("Storage version upgraded. Previous, current version", Integer.valueOf(a), Integer.valueOf(E));
                    } else {
                        this.f20656h.mo16178c().m16375s().m16336a("Storage version upgrade failed. Previous, current version", Integer.valueOf(a), Integer.valueOf(E));
                    }
                }
            }
            this.f20658j = true;
            m16157u();
        }
    }

    @WorkerThread
    /* renamed from: y */
    public final boolean m16153y() {
        m16172f();
        m16161q();
        return this.f20658j;
    }

    /* renamed from: z */
    public final void m16152z() {
        this.f20662n++;
    }
}
