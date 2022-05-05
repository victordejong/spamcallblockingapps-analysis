package com.google.android.gms.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.internal.zzad;
import com.google.android.gms.analytics.internal.zzan;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.analytics.internal.zzd;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.common.internal.b;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/Tracker.class */
public class Tracker extends zzd {

    /* renamed from: a  reason: collision with root package name */
    zzan f3785a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3786b;
    private final Map<String, String> c = new HashMap();
    private final Map<String, String> d = new HashMap();
    private final zzad e;
    private final a f;
    private ExceptionReporter g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/Tracker$a.class */
    public final class a extends zzd implements GoogleAnalytics.a {

        /* renamed from: a  reason: collision with root package name */
        boolean f3789a;

        /* renamed from: b  reason: collision with root package name */
        long f3790b = -1;
        private int d;
        private boolean e;
        private long f;

        protected a(zzf zzfVar) {
            super(zzfVar);
        }

        @Override // com.google.android.gms.analytics.GoogleAnalytics.a
        public final void a() {
            this.d--;
            this.d = Math.max(0, this.d);
            if (this.d == 0) {
                this.f = zzlQ().b();
            }
        }

        @Override // com.google.android.gms.analytics.GoogleAnalytics.a
        public final void a(Activity activity) {
            if (this.d == 0) {
                if (zzlQ().b() >= this.f + Math.max(1000L, this.f3790b)) {
                    this.e = true;
                }
            }
            this.d++;
            if (this.f3789a) {
                Intent intent = activity.getIntent();
                if (intent != null) {
                    Tracker.this.setCampaignParamsOnNextHit(intent.getData());
                }
                HashMap hashMap = new HashMap();
                hashMap.put("&t", "screenview");
                Tracker.this.set("&cd", Tracker.this.f3785a != null ? Tracker.this.f3785a.zzr(activity) : activity.getClass().getCanonicalName());
                if (TextUtils.isEmpty((CharSequence) hashMap.get("&dr"))) {
                    String a2 = Tracker.a(activity);
                    if (!TextUtils.isEmpty(a2)) {
                        hashMap.put("&dr", a2);
                    }
                }
                Tracker.this.send(hashMap);
            }
        }

        public final boolean b() {
            boolean z;
            synchronized (this) {
                z = this.e;
                this.e = false;
            }
            return z;
        }

        final void c() {
            if (this.f3790b >= 0 || this.f3789a) {
                GoogleAnalytics zzkq = zzkq();
                zzkq.f3780a.add(Tracker.this.f);
                Context context = ((zza) zzkq).f3889b.getContext();
                if (context instanceof Application) {
                    zzkq.enableAutoActivityReports((Application) context);
                    return;
                }
                return;
            }
            GoogleAnalytics zzkq2 = zzkq();
            zzkq2.f3780a.remove(Tracker.this.f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.analytics.internal.zzd
        public final void zzkO() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tracker(zzf zzfVar, String str) {
        super(zzfVar);
        if (str != null) {
            this.c.put("&tid", str);
        }
        this.c.put("useSecure", "1");
        this.c.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
        this.e = new zzad("tracking", zzlQ());
        this.f = new a(zzfVar);
    }

    static String a(Activity activity) {
        String str;
        b.a(activity);
        Intent intent = activity.getIntent();
        if (intent == null) {
            str = null;
        } else {
            String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
            str = null;
            if (!TextUtils.isEmpty(stringExtra)) {
                str = stringExtra;
            }
        }
        return str;
    }

    private static String a(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        entry.getValue();
        return !(key.startsWith("&") && key.length() >= 2) ? null : entry.getKey().substring(1);
    }

    private static void a(Map<String, String> map, Map<String, String> map2) {
        b.a(map2);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String a2 = a(entry);
                if (a2 != null) {
                    map2.put(a2, entry.getValue());
                }
            }
        }
    }

    private static void b(Map<String, String> map, Map<String, String> map2) {
        b.a(map2);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String a2 = a(entry);
                if (a2 != null && !map2.containsKey(a2)) {
                    map2.put(a2, entry.getValue());
                }
            }
        }
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.f3786b = z;
    }

    public void enableAutoActivityTracking(boolean z) {
        a aVar = this.f;
        aVar.f3789a = z;
        aVar.c();
    }

    public void enableExceptionReporting(boolean z) {
        synchronized (this) {
            if ((this.g != null) != z) {
                if (z) {
                    this.g = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), getContext());
                    Thread.setDefaultUncaughtExceptionHandler(this.g);
                    zzbG("Uncaught exceptions will be reported to Google Analytics");
                } else {
                    Thread.setDefaultUncaughtExceptionHandler(this.g.f3778a);
                    zzbG("Uncaught exceptions will not be reported to Google Analytics");
                }
            }
        }
    }

    public String get(String str) {
        String str2 = null;
        zzma();
        if (!TextUtils.isEmpty(str)) {
            if (this.c.containsKey(str)) {
                str2 = this.c.get(str);
            } else if (str.equals("&ul")) {
                str2 = zzao.zza(Locale.getDefault());
            } else if (str.equals("&cid")) {
                str2 = zzlW().zzmP();
            } else if (str.equals("&sr")) {
                str2 = zzlZ().zznF();
            } else if (str.equals("&aid")) {
                str2 = zzlY().zzmx().c;
            } else if (str.equals("&an")) {
                str2 = zzlY().zzmx().f4096a;
            } else if (str.equals("&av")) {
                str2 = zzlY().zzmx().f4097b;
            } else if (str.equals("&aiid")) {
                str2 = zzlY().zzmx().d;
            }
        }
        return str2;
    }

    public void send(Map<String, String> map) {
        final long a2 = zzlQ().a();
        if (zzkq().getAppOptOut()) {
            zzbH("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        final boolean isDryRunEnabled = zzkq().isDryRunEnabled();
        final HashMap hashMap = new HashMap();
        a(this.c, hashMap);
        a(map, hashMap);
        final boolean zzi = zzao.zzi(this.c.get("useSecure"), true);
        b(this.d, hashMap);
        this.d.clear();
        final String str = hashMap.get("t");
        if (TextUtils.isEmpty(str)) {
            zzlR().zzh(hashMap, "Missing hit type parameter");
            return;
        }
        final String str2 = hashMap.get("tid");
        if (TextUtils.isEmpty(str2)) {
            zzlR().zzh(hashMap, "Missing tracking id parameter");
            return;
        }
        final boolean z = this.f3786b;
        synchronized (this) {
            if ("screenview".equalsIgnoreCase(str) || "pageview".equalsIgnoreCase(str) || "appview".equalsIgnoreCase(str) || TextUtils.isEmpty(str)) {
                int parseInt = Integer.parseInt(this.c.get("&a")) + 1;
                int i = parseInt;
                if (parseInt >= Integer.MAX_VALUE) {
                    i = 1;
                }
                this.c.put("&a", Integer.toString(i));
            }
        }
        zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.Tracker.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v53, types: [long] */
            /* JADX WARN: Type inference failed for: r19v0 */
            /* JADX WARN: Type inference failed for: r19v1, types: [long] */
            /* JADX WARN: Type inference failed for: r19v3 */
            /* JADX WARN: Unknown variable types count: 2 */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 655
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.Tracker.AnonymousClass1.run():void");
            }
        });
    }

    public void set(String str, String str2) {
        b.a(str, (Object) "Key should be non-null");
        if (!TextUtils.isEmpty(str)) {
            this.c.put(str, str2);
        }
    }

    public void setAnonymizeIp(boolean z) {
        set("&aip", zzao.zzS(z));
    }

    public void setAppId(String str) {
        set("&aid", str);
    }

    public void setAppInstallerId(String str) {
        set("&aiid", str);
    }

    public void setAppName(String str) {
        set("&an", str);
    }

    public void setAppVersion(String str) {
        set("&av", str);
    }

    public void setCampaignParamsOnNextHit(Uri uri) {
        if (uri != null && !uri.isOpaque()) {
            String queryParameter = uri.getQueryParameter("referrer");
            if (!TextUtils.isEmpty(queryParameter)) {
                String valueOf = String.valueOf(queryParameter);
                Uri parse = Uri.parse(valueOf.length() != 0 ? "http://hostname/?".concat(valueOf) : new String("http://hostname/?"));
                String queryParameter2 = parse.getQueryParameter("utm_id");
                if (queryParameter2 != null) {
                    this.d.put("&ci", queryParameter2);
                }
                String queryParameter3 = parse.getQueryParameter("anid");
                if (queryParameter3 != null) {
                    this.d.put("&anid", queryParameter3);
                }
                String queryParameter4 = parse.getQueryParameter("utm_campaign");
                if (queryParameter4 != null) {
                    this.d.put("&cn", queryParameter4);
                }
                String queryParameter5 = parse.getQueryParameter("utm_content");
                if (queryParameter5 != null) {
                    this.d.put("&cc", queryParameter5);
                }
                String queryParameter6 = parse.getQueryParameter("utm_medium");
                if (queryParameter6 != null) {
                    this.d.put("&cm", queryParameter6);
                }
                String queryParameter7 = parse.getQueryParameter("utm_source");
                if (queryParameter7 != null) {
                    this.d.put("&cs", queryParameter7);
                }
                String queryParameter8 = parse.getQueryParameter("utm_term");
                if (queryParameter8 != null) {
                    this.d.put("&ck", queryParameter8);
                }
                String queryParameter9 = parse.getQueryParameter("dclid");
                if (queryParameter9 != null) {
                    this.d.put("&dclid", queryParameter9);
                }
                String queryParameter10 = parse.getQueryParameter("gclid");
                if (queryParameter10 != null) {
                    this.d.put("&gclid", queryParameter10);
                }
                String queryParameter11 = parse.getQueryParameter("aclid");
                if (queryParameter11 != null) {
                    this.d.put("&aclid", queryParameter11);
                }
            }
        }
    }

    public void setClientId(String str) {
        set("&cid", str);
    }

    public void setEncoding(String str) {
        set("&de", str);
    }

    public void setHostname(String str) {
        set("&dh", str);
    }

    public void setLanguage(String str) {
        set("&ul", str);
    }

    public void setLocation(String str) {
        set("&dl", str);
    }

    public void setPage(String str) {
        set("&dp", str);
    }

    public void setReferrer(String str) {
        set("&dr", str);
    }

    public void setSampleRate(double d) {
        set("&sf", Double.toString(d));
    }

    public void setScreenColors(String str) {
        set("&sd", str);
    }

    public void setScreenName(String str) {
        set("&cd", str);
    }

    public void setScreenResolution(int i, int i2) {
        if (i >= 0 || i2 >= 0) {
            set("&sr", new StringBuilder(23).append(i).append("x").append(i2).toString());
        } else {
            zzbJ("Invalid width or height. The values should be non-negative.");
        }
    }

    public void setSessionTimeout(long j) {
        a aVar = this.f;
        aVar.f3790b = 1000 * j;
        aVar.c();
    }

    public void setTitle(String str) {
        set("&dt", str);
    }

    public void setUseSecure(boolean z) {
        set("useSecure", zzao.zzS(z));
    }

    public void setViewportSize(String str) {
        set("&vp", str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
        this.f.initialize();
        String zzkU = zzkx().zzkU();
        if (zzkU != null) {
            set("&an", zzkU);
        }
        String zzkV = zzkx().zzkV();
        if (zzkV != null) {
            set("&av", zzkV);
        }
    }
}
