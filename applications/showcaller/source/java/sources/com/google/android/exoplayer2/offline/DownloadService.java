package com.google.android.exoplayer2.offline;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.exoplayer2.offline.C5174d;
import com.google.android.exoplayer2.offline.DownloadService;
import com.google.android.exoplayer2.scheduler.AbstractC5199c;
import com.google.android.exoplayer2.scheduler.Requirements;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5534t;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadService.class */
public abstract class DownloadService extends Service {

    /* renamed from: d */
    private static final HashMap<Class<? extends DownloadService>, C5168b> f16221d = new HashMap<>();

    /* renamed from: e */
    private final C5169c f16222e;

    /* renamed from: f */
    private final String f16223f;

    /* renamed from: g */
    private final int f16224g;

    /* renamed from: h */
    private final int f16225h;

    /* renamed from: i */
    private C5174d f16226i;

    /* renamed from: j */
    private int f16227j;

    /* renamed from: k */
    private boolean f16228k;

    /* renamed from: l */
    private boolean f16229l;

    /* renamed from: m */
    private boolean f16230m;

    /* renamed from: n */
    private boolean f16231n;

    /* renamed from: com.google.android.exoplayer2.offline.DownloadService$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadService$b.class */
    public static final class C5168b implements C5174d.AbstractC5175a {

        /* renamed from: a */
        private final Context f16232a;

        /* renamed from: b */
        private final C5174d f16233b;

        /* renamed from: c */
        private final boolean f16234c;

        /* renamed from: d */
        private final AbstractC5199c f16235d;

        /* renamed from: e */
        private final Class<? extends DownloadService> f16236e;

        /* renamed from: f */
        private DownloadService f16237f;

        private C5168b(Context context, C5174d c5174d, boolean z, AbstractC5199c abstractC5199c, Class<? extends DownloadService> cls) {
            this.f16232a = context;
            this.f16233b = c5174d;
            this.f16234c = z;
            this.f16235d = abstractC5199c;
            this.f16236e = cls;
            c5174d.m20249b(this);
            m20255j();
        }

        /* renamed from: f */
        public /* synthetic */ void m20258g(DownloadService downloadService) {
            downloadService.m20264i(this.f16233b.m20248c());
        }

        /* renamed from: h */
        private void m20257h() {
            if (this.f16234c) {
                C5515h0.m18812q0(this.f16232a, DownloadService.m20268e(this.f16232a, this.f16236e, "com.google.android.exoplayer.downloadService.action.RESTART"));
                return;
            }
            try {
                this.f16232a.startService(DownloadService.m20268e(this.f16232a, this.f16236e, "com.google.android.exoplayer.downloadService.action.INIT"));
            } catch (IllegalArgumentException e) {
                C5526o.m18742f("DownloadService", "Failed to restart DownloadService (process is idle).");
            }
        }

        /* renamed from: i */
        private boolean m20256i() {
            DownloadService downloadService = this.f16237f;
            return downloadService == null || downloadService.m20266g();
        }

        /* renamed from: j */
        private void m20255j() {
            if (this.f16235d == null) {
                return;
            }
            if (!this.f16233b.m20243h()) {
                this.f16235d.cancel();
                return;
            }
            String packageName = this.f16232a.getPackageName();
            if (this.f16235d.m20161a(this.f16233b.m20246e(), packageName, "com.google.android.exoplayer.downloadService.action.RESTART")) {
                return;
            }
            C5526o.m18745c("DownloadService", "Scheduling downloads failed.");
        }

        @Override // com.google.android.exoplayer2.offline.C5174d.AbstractC5175a
        /* renamed from: a */
        public void mo20232a(C5174d c5174d, boolean z) {
            if (!z && !c5174d.m20247d() && m20256i()) {
                List<C5172b> m20248c = c5174d.m20248c();
                int i = 0;
                while (true) {
                    if (i >= m20248c.size()) {
                        break;
                    } else if (m20248c.get(i).f16243a == 0) {
                        m20257h();
                        break;
                    } else {
                        i++;
                    }
                }
            }
            m20255j();
        }

        @Override // com.google.android.exoplayer2.offline.C5174d.AbstractC5175a
        /* renamed from: b */
        public /* synthetic */ void mo20231b(C5174d c5174d, Requirements requirements, int i) {
            C5173c.m20251a(this, c5174d, requirements, i);
        }

        /* renamed from: d */
        public void m20261d(final DownloadService downloadService) {
            C5508e.m18910f(this.f16237f == null);
            this.f16237f = downloadService;
            if (this.f16233b.m20244g()) {
                new Handler().postAtFrontOfQueue(new Runnable() { // from class: com.google.android.exoplayer2.offline.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        DownloadService.C5168b.this.m20258g(downloadService);
                    }
                });
            }
        }

        /* renamed from: e */
        public void m20260e(DownloadService downloadService) {
            C5508e.m18910f(this.f16237f == downloadService);
            this.f16237f = null;
            if (this.f16235d == null || this.f16233b.m20243h()) {
                return;
            }
            this.f16235d.cancel();
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadService$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadService$c.class */
    public final class C5169c {
    }

    /* renamed from: e */
    public static Intent m20268e(Context context, Class<? extends DownloadService> cls, String str) {
        return new Intent(context, cls).setAction(str);
    }

    /* renamed from: g */
    public boolean m20266g() {
        return this.f16230m;
    }

    /* renamed from: h */
    private static boolean m20265h(int i) {
        return i == 2 || i == 5 || i == 7;
    }

    /* renamed from: i */
    public void m20264i(List<C5172b> list) {
        if (this.f16222e != null) {
            for (int i = 0; i < list.size(); i++) {
                if (m20265h(list.get(i).f16243a)) {
                    throw null;
                }
            }
        }
    }

    /* renamed from: j */
    private void m20263j() {
        if (this.f16222e == null) {
            if (C5515h0.f17876a >= 28 || !this.f16229l) {
                this.f16230m |= stopSelfResult(this.f16227j);
                return;
            }
            stopSelf();
            this.f16230m = true;
            return;
        }
        throw null;
    }

    /* renamed from: d */
    protected abstract C5174d m20269d();

    /* renamed from: f */
    protected abstract AbstractC5199c m20267f();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Service
    public void onCreate() {
        String str = this.f16223f;
        if (str != null) {
            C5534t.m18711a(this, str, this.f16224g, this.f16225h, 2);
        }
        Class<?> cls = getClass();
        HashMap<Class<? extends DownloadService>, C5168b> hashMap = f16221d;
        C5168b c5168b = (C5168b) hashMap.get(cls);
        if (c5168b == null) {
            boolean z = this.f16222e != null;
            AbstractC5199c m20267f = z ? m20267f() : null;
            C5174d m20269d = m20269d();
            this.f16226i = m20269d;
            m20269d.m20237n();
            c5168b = new C5168b(getApplicationContext(), this.f16226i, z, m20267f, cls);
            hashMap.put(cls, c5168b);
        } else {
            this.f16226i = c5168b.f16233b;
        }
        c5168b.m20261d(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f16231n = true;
        ((C5168b) C5508e.m18911e(f16221d.get(getClass()))).m20260e(this);
        if (this.f16222e == null) {
            return;
        }
        throw null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String str;
        String str2;
        this.f16227j = i2;
        this.f16229l = false;
        if (intent != null) {
            str2 = intent.getAction();
            str = intent.getStringExtra("content_id");
            this.f16228k |= intent.getBooleanExtra("foreground", false) || "com.google.android.exoplayer.downloadService.action.RESTART".equals(str2);
        } else {
            str2 = null;
            str = null;
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = "com.google.android.exoplayer.downloadService.action.INIT";
        }
        C5174d c5174d = (C5174d) C5508e.m18911e(this.f16226i);
        boolean z = true;
        switch (str3.hashCode()) {
            case -1931239035:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD")) {
                    z = false;
                    break;
                }
                break;
            case -932047176:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS")) {
                    z = true;
                    break;
                }
                break;
            case -871181424:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.RESTART")) {
                    z = true;
                    break;
                }
                break;
            case -650547439:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS")) {
                    z = true;
                    break;
                }
                break;
            case -119057172:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS")) {
                    z = true;
                    break;
                }
                break;
            case 191112771:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS")) {
                    z = true;
                    break;
                }
                break;
            case 671523141:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.SET_STOP_REASON")) {
                    z = true;
                    break;
                }
                break;
            case 1015676687:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.INIT")) {
                    z = true;
                    break;
                }
                break;
            case 1547520644:
                if (str3.equals("com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                DownloadRequest downloadRequest = (DownloadRequest) intent.getParcelableExtra("download_request");
                if (downloadRequest != null) {
                    c5174d.m20250a(downloadRequest, intent.getIntExtra("stop_reason", 0));
                    break;
                } else {
                    C5526o.m18745c("DownloadService", "Ignored ADD_DOWNLOAD: Missing download_request extra");
                    break;
                }
            case true:
                c5174d.m20237n();
                break;
            case true:
            case true:
                break;
            case true:
                c5174d.m20239l();
                break;
            case true:
                Requirements requirements = (Requirements) intent.getParcelableExtra("requirements");
                if (requirements != null) {
                    c5174d.m20235p(requirements);
                    break;
                } else {
                    C5526o.m18745c("DownloadService", "Ignored SET_REQUIREMENTS: Missing requirements extra");
                    break;
                }
            case true:
                c5174d.m20240k();
                break;
            case true:
                if (intent.hasExtra("stop_reason")) {
                    c5174d.m20234q(str, intent.getIntExtra("stop_reason", 0));
                    break;
                } else {
                    C5526o.m18745c("DownloadService", "Ignored SET_STOP_REASON: Missing stop_reason extra");
                    break;
                }
            case true:
                if (str != null) {
                    c5174d.m20238m(str);
                    break;
                } else {
                    C5526o.m18745c("DownloadService", "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                    break;
                }
            default:
                C5526o.m18745c("DownloadService", "Ignored unrecognized action: " + str3);
                break;
        }
        if (C5515h0.f17876a < 26 || !this.f16228k || this.f16222e == null) {
            this.f16230m = false;
            if (!c5174d.m20245f()) {
                return 1;
            }
            m20263j();
            return 1;
        }
        throw null;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.f16229l = true;
    }
}
