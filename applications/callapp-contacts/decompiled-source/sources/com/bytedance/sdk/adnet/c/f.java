package com.bytedance.sdk.adnet.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.a.a;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.adnet.d.d;
import com.mopub.common.Constants;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/c/f.class */
public class f implements c {

    /* renamed from: c  reason: collision with root package name */
    private static f f8258c;
    private Context e;
    private e f;

    /* renamed from: b  reason: collision with root package name */
    private long f8260b = 0;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8261d = false;
    private int g = 0;
    private long h = 19700101000L;
    private int i = 0;
    private HashMap<String, Integer> j = new HashMap<>();
    private HashMap<String, Integer> k = new HashMap<>();
    private int l = 0;
    private HashMap<String, Integer> m = new HashMap<>();
    private HashMap<String, Integer> n = new HashMap<>();
    private boolean o = true;
    private Map<String, Integer> p = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    Handler f8259a = new Handler(Looper.getMainLooper()) { // from class: com.bytedance.sdk.adnet.c.f.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 10000) {
                f.this.a(message.arg1 != 0);
            }
        }
    };

    private f() {
    }

    public static f a() {
        f fVar;
        synchronized (f.class) {
            try {
                if (f8258c == null) {
                    f8258c = new f();
                }
                fVar = f8258c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.bytedance.sdk.adnet.core.m r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.c.f.a(com.bytedance.sdk.adnet.core.m, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        d c2 = c();
        if (c2 != null) {
            d.b("TNCManager", "doUpdateRemote, ".concat(String.valueOf(z)));
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (z || this.f8260b + (c2.k * 1000) <= elapsedRealtime) {
                this.f8260b = elapsedRealtime;
                a.a(this.e).b(com.bytedance.sdk.adnet.d.f.a(this.e));
                return;
            }
            d.b("TNCManager", "doUpdateRemote, time limit");
        }
    }

    private void a(boolean z, long j) {
        if (!this.f8259a.hasMessages(10000)) {
            Message obtainMessage = this.f8259a.obtainMessage();
            obtainMessage.what = 10000;
            obtainMessage.arg1 = z ? 1 : 0;
            if (j > 0) {
                this.f8259a.sendMessageDelayed(obtainMessage, j);
            } else {
                this.f8259a.sendMessage(obtainMessage);
            }
        }
    }

    private boolean a(int i) {
        return i >= 200 && i < 400;
    }

    private void b(String str) {
        Map<String, String> d2;
        if (TextUtils.isEmpty(str) || (d2 = d()) == null || !d2.containsValue(str)) {
            return;
        }
        if (this.p.get(str) == null) {
            this.p.put(str, 1);
        } else {
            this.p.put(str, Integer.valueOf(this.p.get(str).intValue() + 1));
        }
    }

    private boolean b(int i) {
        if (i < 100 || i >= 1000) {
            return true;
        }
        d c2 = c();
        return c2 != null && !TextUtils.isEmpty(c2.m) && c2.m.contains(String.valueOf(i));
    }

    private void c(String str) {
        if (!TextUtils.isEmpty(str) && this.p.containsKey(str)) {
            this.p.put(str, 0);
        }
    }

    private boolean d(String str) {
        Map<String, String> d2 = d();
        if (d2 == null) {
            return false;
        }
        String str2 = d2.get(str);
        if (TextUtils.isEmpty(str2) || this.p.get(str2) == null || this.p.get(str2).intValue() < 3) {
            return false;
        }
        d.b("TNCManager", "handleHostMapping, TNC host faild num over limit: ".concat(String.valueOf(str)));
        return true;
    }

    private void f() {
        SharedPreferences sharedPreferences = this.e.getSharedPreferences("ttnet_tnc_config", 0);
        this.g = sharedPreferences.getInt("tnc_probe_cmd", 0);
        this.h = sharedPreferences.getLong("tnc_probe_version", 19700101000L);
    }

    private void g() {
        d.b("TNCManager", "resetTNCControlState");
        this.i = 0;
        this.j.clear();
        this.k.clear();
        this.l = 0;
        this.m.clear();
        this.n.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.c.f.a(java.lang.String):java.lang.String");
    }

    public void a(Context context, boolean z) {
        synchronized (this) {
            if (!this.f8261d) {
                this.e = context;
                this.o = z;
                this.f = new e(context, z);
                if (z) {
                    f();
                }
                d.b("TNCManager", "initTnc, isMainProc: " + z + " probeCmd: " + this.g + " probeVersion: " + this.h);
                this.f8261d = true;
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.c.c
    public void a(Request request, m mVar) {
        synchronized (this) {
            if (request != null && mVar != null) {
                if (this.o) {
                    if (com.bytedance.sdk.adnet.d.f.a(this.e)) {
                        URL url = null;
                        try {
                            url = new URL(request.getUrl());
                        } catch (Exception e) {
                        }
                        if (url != null) {
                            String protocol = url.getProtocol();
                            String host = url.getHost();
                            String path = url.getPath();
                            String ipAddrStr = request.getIpAddrStr();
                            int i = (int) mVar.h;
                            if (!"http".equals(protocol) && !Constants.HTTPS.equals(protocol)) {
                                return;
                            }
                            if (!TextUtils.isEmpty(ipAddrStr)) {
                                d.b("TNCManager", "onResponse, url: " + protocol + "://" + host + "#" + ipAddrStr + "#" + i);
                                d c2 = c();
                                if (c2 != null && c2.f8251b) {
                                    a(mVar, host);
                                }
                                if (c2 != null) {
                                    d.b("TNCManager", "onResponse, url matched: " + protocol + "://" + host + "#" + ipAddrStr + "#" + i + StringUtils.SPACE + this.i + "#" + this.j.size() + "#" + this.k.size() + StringUtils.SPACE + this.l + "#" + this.m.size() + "#" + this.n.size());
                                    if (i > 0) {
                                        if (a(i)) {
                                            if (this.i > 0 || this.l > 0) {
                                                g();
                                            }
                                            c(host);
                                        } else if (!b(i)) {
                                            this.l++;
                                            this.m.put(path, 0);
                                            this.n.put(ipAddrStr, 0);
                                            if (this.l >= c2.h && this.m.size() >= c2.i && this.n.size() >= c2.j) {
                                                d.b("TNCManager", "onResponse, url doUpdate: " + protocol + "://" + host + "#" + ipAddrStr + "#" + i);
                                                a(false, 0L);
                                                g();
                                            }
                                            b(host);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.c.c
    public void a(Request request, Exception exc) {
        synchronized (this) {
            if (request != null && exc != null) {
                if (this.o) {
                    if (com.bytedance.sdk.adnet.d.f.a(this.e)) {
                        URL url = null;
                        try {
                            url = new URL(request.getUrl());
                        } catch (Exception e) {
                        }
                        if (url != null) {
                            String protocol = url.getProtocol();
                            String host = url.getHost();
                            String path = url.getPath();
                            String ipAddrStr = request.getIpAddrStr();
                            if ("http".equals(protocol) || Constants.HTTPS.equals(protocol)) {
                                d c2 = c();
                                if (c2 != null) {
                                    d.b("TNCManager", "onError, url matched: " + protocol + "://" + host + "#" + ipAddrStr + "# " + this.i + "#" + this.j.size() + "#" + this.k.size() + StringUtils.SPACE + this.l + "#" + this.m.size() + "#" + this.n.size());
                                    this.i = this.i + 1;
                                    this.j.put(path, 0);
                                    this.k.put(ipAddrStr, 0);
                                    if (this.i >= c2.e && this.j.size() >= c2.f && this.k.size() >= c2.g) {
                                        d.b("TNCManager", "onError, url doUpate: " + protocol + "://" + host + "#" + ipAddrStr);
                                        a(false, 0L);
                                        g();
                                    }
                                    b(host);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void b() {
        this.p.clear();
    }

    public d c() {
        e eVar = this.f;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public Map<String, String> d() {
        d c2 = c();
        if (c2 != null) {
            return c2.f8253d;
        }
        return null;
    }

    public e e() {
        return this.f;
    }
}
