package p131c.p396i.p397a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.android.volley.TimeoutError;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.gson.JsonParseException;
import com.library.p518ad.AdUpdateJobService;
import com.library.p518ad.AdUpdateService;
import com.library.p518ad.data.bean.PlaceConfig;
import com.library.p518ad.data.net.NoNetError;
import com.library.p518ad.data.net.request.AdInfoReq;
import com.library.p518ad.data.net.response.AdConfigInfo;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p352w.C6070g;
import p131c.p161d.p354f.C6111e;
import p131c.p396i.p397a.p399f.p401b.AbstractC6527a;
import p131c.p396i.p397a.p399f.p401b.C6534e;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
import p131c.p396i.p397a.p405h.C6553f;
import p131c.p396i.p397a.p417j.C6614a;
import p131c.p396i.p397a.p417j.C6617d;
import p131c.p396i.p397a.p417j.C6618e;
import p131c.p396i.p418b.p419d.C6623a;
/* renamed from: c.i.a.d */
/* loaded from: classes2-dex2jar.jar:c/i/a/d.class */
public class C6497d {

    /* renamed from: n */
    public static volatile C6497d f20225n;

    /* renamed from: a */
    public AdConfigInfo f20226a;

    /* renamed from: b */
    public int f20227b = 0;

    /* renamed from: c */
    public long f20228c = 300000;

    /* renamed from: d */
    public long f20229d = 60000;

    /* renamed from: e */
    public long f20230e = 3600000;

    /* renamed from: f */
    public long f20231f = 0;

    /* renamed from: g */
    public long f20232g = 0;

    /* renamed from: h */
    public ReadWriteLock f20233h = new ReentrantReadWriteLock(true);

    /* renamed from: i */
    public ArrayList<AbstractC6503e> f20234i = new ArrayList<>();

    /* renamed from: j */
    public AtomicBoolean f20235j = new AtomicBoolean(false);

    /* renamed from: k */
    public boolean f20236k = false;

    /* renamed from: l */
    public AbstractC6527a<AdConfigInfo> f20237l = new C6499b();

    /* renamed from: m */
    public BroadcastReceiver f20238m = new C6502d();

    /* renamed from: c.i.a.d$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/d$a.class */
    public class RunnableC6498a implements Runnable {
        public RunnableC6498a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C6497d.this.m20664d();
        }
    }

    /* renamed from: c.i.a.d$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/d$b.class */
    public class C6499b extends AbstractC6527a<AdConfigInfo> {

        /* renamed from: c.i.a.d$b$a */
        /* loaded from: classes2-dex2jar.jar:c/i/a/d$b$a.class */
        public class RunnableC6500a implements Runnable {
            public RunnableC6500a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C6497d.this.m20666c();
            }
        }

        public C6499b() {
        }

        /* renamed from: a */
        public void onResponse(AdConfigInfo adConfigInfo) {
            ArrayList<PlaceConfig> arrayList;
            if (adConfigInfo != null) {
                if (!adConfigInfo.getResult() || (arrayList = adConfigInfo.placeList) == null || arrayList.size() <= 0) {
                    adConfigInfo.getErrorCode();
                    adConfigInfo.getErrorMsg();
                    C6497d.this.m20682a(C6552e.f20334d.intValue());
                } else {
                    C6618e.m20334a().m20326b("key_is_new_user", false);
                    C6549b.m20532a(new C6550c(null, 102, ""));
                    C6497d.this.m20650k();
                }
                C6497d.this.m20680a(adConfigInfo.update);
            }
            C6497d.this.f20235j.set(false);
        }

        /* renamed from: b */
        public void mo20569a(AdConfigInfo adConfigInfo) {
            ArrayList<PlaceConfig> arrayList;
            super.mo20569a((C6499b) adConfigInfo);
            if (!adConfigInfo.getResult() || (arrayList = adConfigInfo.placeList) == null || arrayList.size() <= 0) {
                C6549b.m20532a(new C6550c(null, 103, C6552e.f20334d.toString()));
            } else {
                C6497d.this.m20667b(adConfigInfo);
            }
        }

        @Override // p131c.p396i.p397a.p399f.p401b.AbstractC6527a, p131c.p396i.p397a.p399f.p401b.AbstractC6530c
        public void onError(Exception exc) {
            Integer num;
            super.onError(exc);
            C6497d.this.f20235j.set(false);
            Log.getStackTraceString(exc);
            if (exc instanceof NoNetError) {
                num = C6552e.f20331a;
                C6497d.this.m20648l();
            } else {
                num = exc instanceof TimeoutError ? C6552e.f20332b : C6552e.f20335e;
                if (C6497d.m20655h(C6497d.this) <= 1) {
                    long j = C6497d.this.f20227b * C6497d.this.f20228c;
                    C6614a.m20366a(new RunnableC6500a(), j);
                    String str = "广告配置请求重试，第" + C6497d.this.f20227b + "次，延时 :" + j;
                } else {
                    C6497d.this.f20227b = 0;
                    long j2 = C6497d.this.f20226a != null ? C6497d.this.f20226a.update : 6 * C6497d.this.f20230e;
                    String str2 = "广告配置请求重试次数结束，并添加下次定时:" + j2;
                    C6497d.this.m20680a(j2);
                }
            }
            C6497d.this.m20682a(num.intValue());
            C6549b.m20532a(new C6550c(null, 103, num.toString()));
        }
    }

    /* renamed from: c.i.a.d$c */
    /* loaded from: classes2-dex2jar.jar:c/i/a/d$c.class */
    public class C6501c implements OnCompleteListener<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ C6070g f20242a;

        public C6501c(C6070g gVar) {
            this.f20242a = gVar;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        /* renamed from: a */
        public void mo8619a(Task<Boolean> task) {
            if (task.mo8601e()) {
                String b = this.f20242a.m22138b("ADSDK_adStrategyInfo");
                if (!TextUtils.isEmpty(b)) {
                    try {
                        C6497d.this.f20237l.mo20569a((AdConfigInfo) new C6111e().m21979a(b, (Class<Object>) AdConfigInfo.class));
                    } catch (JsonParseException e) {
                        e.printStackTrace();
                        C6534e.m20564a(C6489a.m20718b()).m20563a(new AdInfoReq(), AdConfigInfo.class, C6497d.this.f20237l, toString());
                    }
                } else {
                    C6534e.m20564a(C6489a.m20718b()).m20563a(new AdInfoReq(), AdConfigInfo.class, C6497d.this.f20237l, toString());
                }
                C6497d.this.m20652j();
            }
        }
    }

    /* renamed from: c.i.a.d$d */
    /* loaded from: classes2-dex2jar.jar:c/i/a/d$d.class */
    public class C6502d extends BroadcastReceiver {
        public C6502d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (C6614a.m20369a()) {
                C6497d.this.m20646n();
                C6497d.this.m20666c();
            }
        }
    }

    /* renamed from: c.i.a.d$e */
    /* loaded from: classes2-dex2jar.jar:c/i/a/d$e.class */
    public interface AbstractC6503e {

        /* renamed from: c.i.a.d$e$a */
        /* loaded from: classes2-dex2jar.jar:c/i/a/d$e$a.class */
        public static abstract class AbstractC6504a implements AbstractC6503e {
            @Override // p131c.p396i.p397a.C6497d.AbstractC6503e
            /* renamed from: a */
            public void mo20034a() {
            }

            @Override // p131c.p396i.p397a.C6497d.AbstractC6503e
            /* renamed from: a */
            public void mo20642a(int i) {
            }

            @Override // p131c.p396i.p397a.C6497d.AbstractC6503e
            /* renamed from: a */
            public void mo5335a(int i, boolean z) {
            }

            @Override // p131c.p396i.p397a.C6497d.AbstractC6503e
            /* renamed from: b */
            public void mo20641b() {
            }

            @Override // p131c.p396i.p397a.C6497d.AbstractC6503e
            /* renamed from: c */
            public void mo20640c() {
            }

            @Override // p131c.p396i.p397a.C6497d.AbstractC6503e
            /* renamed from: d */
            public void mo20639d() {
            }
        }

        /* renamed from: a */
        void mo20034a();

        /* renamed from: a */
        void mo20642a(int i);

        /* renamed from: a */
        void mo5335a(int i, boolean z);

        /* renamed from: b */
        void mo20641b();

        /* renamed from: c */
        void mo20640c();

        /* renamed from: d */
        void mo20639d();
    }

    /* renamed from: h */
    public static /* synthetic */ int m20655h(C6497d dVar) {
        int i = dVar.f20227b + 1;
        dVar.f20227b = i;
        return i;
    }

    /* renamed from: o */
    public static C6497d m20645o() {
        if (f20225n == null) {
            synchronized (C6497d.class) {
                try {
                    if (f20225n == null) {
                        f20225n = new C6497d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f20225n;
    }

    /* renamed from: a */
    public PlaceConfig m20673a(String str) {
        if (this.f20226a == null) {
            m20664d();
        }
        this.f20233h.readLock().lock();
        PlaceConfig placeConfig = null;
        if (str != null) {
            AdConfigInfo adConfigInfo = this.f20226a;
            placeConfig = null;
            if (adConfigInfo != null) {
                ArrayList<PlaceConfig> arrayList = adConfigInfo.placeList;
                placeConfig = null;
                if (arrayList != null) {
                    Iterator<PlaceConfig> it = arrayList.iterator();
                    while (true) {
                        placeConfig = null;
                        if (!it.hasNext()) {
                            break;
                        }
                        PlaceConfig next = it.next();
                        if (str.equals(next.placeId)) {
                            placeConfig = next.clone();
                            break;
                        }
                    }
                }
            }
        }
        this.f20233h.readLock().unlock();
        return placeConfig;
    }

    /* renamed from: a */
    public final void m20682a(int i) {
        Iterator it = ((ArrayList) this.f20234i.clone()).iterator();
        while (it.hasNext()) {
            AbstractC6503e eVar = (AbstractC6503e) it.next();
            eVar.mo20642a(i);
            eVar.mo5335a(3, false);
        }
    }

    /* renamed from: a */
    public final void m20681a(int i, boolean z) {
        Iterator it = ((ArrayList) this.f20234i.clone()).iterator();
        while (it.hasNext()) {
            ((AbstractC6503e) it.next()).mo5335a(i, z);
        }
    }

    /* renamed from: a */
    public final void m20680a(long j) {
        boolean z;
        long b = m20671b(j);
        if (Build.VERSION.SDK_INT >= 23) {
            z = AdUpdateJobService.m5338a(C6489a.m20718b(), b, 1);
        } else {
            String str = "系统版本 " + Build.VERSION.SDK_INT + " 低于6.0,使用Alarm";
            z = false;
        }
        if (!z) {
            AdUpdateService.m5333a(C6489a.m20718b(), b, 1);
        }
    }

    /* renamed from: a */
    public final boolean m20683a() {
        boolean z;
        if (this.f20232g == 0) {
            this.f20232g = C6618e.m20334a().m20328b("key_ad_update_version");
        }
        int b = C6617d.m20351b();
        if (this.f20232g < b) {
            String str = "当前版本：" + b;
            String str2 = "存储版本：" + this.f20232g;
            z = false;
        } else {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m20679a(AbstractC6503e eVar) {
        ArrayList<AbstractC6503e> arrayList = this.f20234i;
        return arrayList != null && !arrayList.contains(eVar) && this.f20234i.add(eVar);
    }

    /* renamed from: a */
    public final boolean m20674a(AdConfigInfo adConfigInfo) {
        String str;
        if (this.f20231f == 0) {
            this.f20231f = C6618e.m20334a().m20328b("key_ad_update_time");
        }
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = false;
        long j = this.f20231f;
        if (currentTimeMillis < j) {
            str = "时间异常";
        } else if (currentTimeMillis - j > adConfigInfo.update) {
            str = "超出有效期";
        } else if (!m20683a()) {
            str = "版本更新";
        } else {
            z = true;
            str = "";
        }
        if (!z) {
            String str2 = "失效:（" + str + ")";
        }
        return z;
    }

    /* renamed from: b */
    public final long m20671b(long j) {
        long j2 = this.f20229d;
        return j < j2 ? j2 : j;
    }

    /* renamed from: b */
    public final AdConfigInfo m20672b() {
        m20654i();
        String c = C6618e.m20334a().m20325c("key_ad_config");
        if (TextUtils.isEmpty(c)) {
            return null;
        }
        try {
            return (AdConfigInfo) new C6111e().m21979a(c, (Class<Object>) AdConfigInfo.class);
        } catch (JsonParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public final void m20667b(AdConfigInfo adConfigInfo) {
        this.f20233h.writeLock().lock();
        this.f20226a = adConfigInfo;
        m20647m();
        this.f20233h.writeLock().unlock();
        m20660f();
    }

    /* renamed from: b */
    public boolean m20670b(AbstractC6503e eVar) {
        ArrayList<AbstractC6503e> arrayList = this.f20234i;
        return arrayList != null && arrayList.remove(eVar);
    }

    /* renamed from: c */
    public final void m20666c() {
        if (!C6614a.m20369a()) {
            m20648l();
            m20682a(C6552e.f20331a.intValue());
        } else if (!this.f20235j.getAndSet(true) && !this.f20236k) {
            C6549b.m20532a(new C6550c(null, 101, null));
            if (!C5128c.m24477a(C6489a.m20718b()).isEmpty()) {
                try {
                    Class.forName("c.d.e.w.g");
                    C6070g g = C6070g.m22132g();
                    if (g != null) {
                        g.m22153a(C6489a.f20208e);
                        g.m22136c().mo8615a(new C6501c(g));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: d */
    public AdConfigInfo m20664d() {
        AdConfigInfo adConfigInfo;
        if (this.f20226a == null) {
            AdConfigInfo b = m20672b();
            adConfigInfo = b;
            if (b != null) {
                adConfigInfo = b;
                if (m20683a()) {
                    this.f20226a = b;
                    adConfigInfo = b;
                }
            }
        } else {
            adConfigInfo = null;
        }
        AdConfigInfo adConfigInfo2 = this.f20226a;
        if (adConfigInfo2 == null) {
            AdConfigInfo e = m20662e();
            this.f20226a = e;
            if (e != null) {
                m20660f();
                m20647m();
            } else {
                this.f20226a = adConfigInfo;
            }
            m20666c();
        } else if (!m20674a(adConfigInfo2)) {
            m20660f();
            m20666c();
        } else {
            m20660f();
            m20681a(2, true);
            m20680a(this.f20226a.update);
        }
        if (C6614a.f20428a) {
            new C6111e().m21984a(this.f20226a);
        }
        return this.f20226a;
    }

    /* renamed from: e */
    public final AdConfigInfo m20662e() {
        m20656h();
        try {
            return (AdConfigInfo) new C6111e().m21988a((Reader) new InputStreamReader(C6489a.m20718b().getAssets().open("ad_config.json")), (Class<Object>) AdConfigInfo.class);
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: f */
    public final void m20660f() {
        Boolean bool = this.f20226a.log;
        C6549b.f20312a = bool != null ? bool.booleanValue() : true;
        String str = " 日志switch:" + C6549b.f20312a + " logSize:" + this.f20226a.logSize;
        String str2 = " logTime:" + this.f20226a.logTime;
        C6553f.m20508c().m20513a(this.f20226a.logSize);
        C6553f.m20508c().m20509b(this.f20226a.logTime);
    }

    /* renamed from: g */
    public void m20658g() {
        C6623a.m20306a();
        new Thread(new RunnableC6498a()).start();
    }

    /* renamed from: h */
    public final void m20656h() {
        Iterator it = ((ArrayList) this.f20234i.clone()).iterator();
        while (it.hasNext()) {
            ((AbstractC6503e) it.next()).mo20640c();
        }
    }

    /* renamed from: i */
    public final void m20654i() {
        Iterator it = ((ArrayList) this.f20234i.clone()).iterator();
        while (it.hasNext()) {
            ((AbstractC6503e) it.next()).mo20641b();
        }
    }

    /* renamed from: j */
    public final void m20652j() {
        Iterator it = ((ArrayList) this.f20234i.clone()).iterator();
        while (it.hasNext()) {
            ((AbstractC6503e) it.next()).mo20639d();
        }
    }

    /* renamed from: k */
    public final void m20650k() {
        Iterator it = ((ArrayList) this.f20234i.clone()).iterator();
        while (it.hasNext()) {
            AbstractC6503e eVar = (AbstractC6503e) it.next();
            eVar.mo20034a();
            eVar.mo5335a(3, true);
        }
    }

    /* renamed from: l */
    public final void m20648l() {
        C6489a.m20718b().registerReceiver(this.f20238m, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    /* renamed from: m */
    public final void m20647m() {
        this.f20231f = System.currentTimeMillis();
        this.f20232g = C6617d.m20351b();
        C6618e.m20334a().m20330a("key_ad_config", new C6111e().m21984a(this.f20226a));
        C6618e.m20334a().m20331a("key_ad_update_time", this.f20231f);
        C6618e.m20334a().m20331a("key_ad_update_version", this.f20232g);
        new Date().toString();
    }

    /* renamed from: n */
    public final void m20646n() {
        C6489a.m20718b().unregisterReceiver(this.f20238m);
    }
}
