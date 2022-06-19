package com.bytedance.sdk.adnet.p142c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.core.Request;
import com.bytedance.sdk.adnet.p140a.C4153a;
import com.bytedance.sdk.adnet.p143d.C4228d;
import com.bytedance.sdk.adnet.p143d.C4234f;
import com.mopub.common.Constants;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.bytedance.sdk.adnet.c.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/c/f.class */
public class C4191f implements AbstractC4188c {

    /* renamed from: c */
    private static C4191f f15344c;

    /* renamed from: e */
    private Context f15348e;

    /* renamed from: f */
    private C4190e f15349f;

    /* renamed from: b */
    private long f15346b = 0;

    /* renamed from: d */
    private boolean f15347d = false;

    /* renamed from: g */
    private int f15350g = 0;

    /* renamed from: h */
    private long f15351h = 19700101000L;

    /* renamed from: i */
    private int f15352i = 0;

    /* renamed from: j */
    private HashMap<String, Integer> f15353j = new HashMap<>();

    /* renamed from: k */
    private HashMap<String, Integer> f15354k = new HashMap<>();

    /* renamed from: l */
    private int f15355l = 0;

    /* renamed from: m */
    private HashMap<String, Integer> f15356m = new HashMap<>();

    /* renamed from: n */
    private HashMap<String, Integer> f15357n = new HashMap<>();

    /* renamed from: o */
    private boolean f15358o = true;

    /* renamed from: p */
    private Map<String, Integer> f15359p = new HashMap();

    /* renamed from: a */
    Handler f15345a = new Handler(Looper.getMainLooper()) { // from class: com.bytedance.sdk.adnet.c.f.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 10000) {
                return;
            }
            C4191f.this.m36217a(message.arg1 != 0);
        }
    };

    private C4191f() {
    }

    /* renamed from: a */
    public static C4191f m36225a() {
        C4191f c4191f;
        synchronized (C4191f.class) {
            try {
                if (f15344c == null) {
                    f15344c = new C4191f();
                }
                c4191f = f15344c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4191f;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d1  */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m36219a(com.bytedance.sdk.adnet.core.C4218m r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.p142c.C4191f.m36219a(com.bytedance.sdk.adnet.core.m, java.lang.String):void");
    }

    /* renamed from: a */
    public void m36217a(boolean z) {
        C4189d m36212c = m36212c();
        if (m36212c == null) {
            return;
        }
        C4228d.m36086b("TNCManager", "doUpdateRemote, ".concat(String.valueOf(z)));
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (!z && this.f15346b + (m36212c.f15335k * 1000) > elapsedRealtime) {
            C4228d.m36086b("TNCManager", "doUpdateRemote, time limit");
            return;
        }
        this.f15346b = elapsedRealtime;
        C4153a.m36297a(this.f15348e).m36287b(C4234f.m36080a(this.f15348e));
    }

    /* renamed from: a */
    private void m36216a(boolean z, long j) {
        if (this.f15345a.hasMessages(10000)) {
            return;
        }
        Message obtainMessage = this.f15345a.obtainMessage();
        obtainMessage.what = 10000;
        obtainMessage.arg1 = z ? 1 : 0;
        if (j > 0) {
            this.f15345a.sendMessageDelayed(obtainMessage, j);
        } else {
            this.f15345a.sendMessage(obtainMessage);
        }
    }

    /* renamed from: a */
    private boolean m36224a(int i) {
        return i >= 200 && i < 400;
    }

    /* renamed from: b */
    private void m36213b(String str) {
        Map<String, String> m36210d;
        if (!TextUtils.isEmpty(str) && (m36210d = m36210d()) != null && m36210d.containsValue(str)) {
            if (this.f15359p.get(str) == null) {
                this.f15359p.put(str, 1);
            } else {
                this.f15359p.put(str, Integer.valueOf(this.f15359p.get(str).intValue() + 1));
            }
        }
    }

    /* renamed from: b */
    private boolean m36214b(int i) {
        if (i < 100 || i >= 1000) {
            return true;
        }
        C4189d m36212c = m36212c();
        return m36212c != null && !TextUtils.isEmpty(m36212c.f15337m) && m36212c.f15337m.contains(String.valueOf(i));
    }

    /* renamed from: c */
    private void m36211c(String str) {
        if (!TextUtils.isEmpty(str) && this.f15359p.containsKey(str)) {
            this.f15359p.put(str, 0);
        }
    }

    /* renamed from: d */
    private boolean m36209d(String str) {
        Map<String, String> m36210d = m36210d();
        if (m36210d == null) {
            return false;
        }
        String str2 = m36210d.get(str);
        if (TextUtils.isEmpty(str2) || this.f15359p.get(str2) == null || this.f15359p.get(str2).intValue() < 3) {
            return false;
        }
        C4228d.m36086b("TNCManager", "handleHostMapping, TNC host faild num over limit: ".concat(String.valueOf(str)));
        return true;
    }

    /* renamed from: f */
    private void m36207f() {
        SharedPreferences sharedPreferences = this.f15348e.getSharedPreferences("ttnet_tnc_config", 0);
        this.f15350g = sharedPreferences.getInt("tnc_probe_cmd", 0);
        this.f15351h = sharedPreferences.getLong("tnc_probe_version", 19700101000L);
    }

    /* renamed from: g */
    private void m36206g() {
        C4228d.m36086b("TNCManager", "resetTNCControlState");
        this.f15352i = 0;
        this.f15353j.clear();
        this.f15354k.clear();
        this.f15355l = 0;
        this.f15356m.clear();
        this.f15357n.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0090  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m36218a(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.p142c.C4191f.m36218a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public void m36223a(Context context, boolean z) {
        synchronized (this) {
            if (!this.f15347d) {
                this.f15348e = context;
                this.f15358o = z;
                this.f15349f = new C4190e(context, z);
                if (z) {
                    m36207f();
                }
                C4228d.m36086b("TNCManager", "initTnc, isMainProc: " + z + " probeCmd: " + this.f15350g + " probeVersion: " + this.f15351h);
                this.f15347d = true;
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4188c
    /* renamed from: a */
    public void mo36221a(Request request, C4218m c4218m) {
        synchronized (this) {
            if (request == null || c4218m == null) {
                return;
            }
            if (!this.f15358o) {
                return;
            }
            if (!C4234f.m36080a(this.f15348e)) {
                return;
            }
            URL url = null;
            try {
                url = new URL(request.getUrl());
            } catch (Exception e) {
            }
            if (url == null) {
                return;
            }
            String protocol = url.getProtocol();
            String host = url.getHost();
            String path = url.getPath();
            String ipAddrStr = request.getIpAddrStr();
            int i = (int) c4218m.f15475h;
            if (!"http".equals(protocol) && !Constants.HTTPS.equals(protocol)) {
                return;
            }
            if (TextUtils.isEmpty(ipAddrStr)) {
                return;
            }
            C4228d.m36086b("TNCManager", "onResponse, url: " + protocol + "://" + host + "#" + ipAddrStr + "#" + i);
            C4189d m36212c = m36212c();
            if (m36212c != null && m36212c.f15326b) {
                m36219a(c4218m, host);
            }
            if (m36212c == null) {
                return;
            }
            C4228d.m36086b("TNCManager", "onResponse, url matched: " + protocol + "://" + host + "#" + ipAddrStr + "#" + i + StringUtils.SPACE + this.f15352i + "#" + this.f15353j.size() + "#" + this.f15354k.size() + StringUtils.SPACE + this.f15355l + "#" + this.f15356m.size() + "#" + this.f15357n.size());
            if (i > 0) {
                if (m36224a(i)) {
                    if (this.f15352i > 0 || this.f15355l > 0) {
                        m36206g();
                    }
                    m36211c(host);
                } else if (!m36214b(i)) {
                    this.f15355l++;
                    this.f15356m.put(path, 0);
                    this.f15357n.put(ipAddrStr, 0);
                    if (this.f15355l >= m36212c.f15332h && this.f15356m.size() >= m36212c.f15333i && this.f15357n.size() >= m36212c.f15334j) {
                        C4228d.m36086b("TNCManager", "onResponse, url doUpdate: " + protocol + "://" + host + "#" + ipAddrStr + "#" + i);
                        m36216a(false, 0L);
                        m36206g();
                    }
                    m36213b(host);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4188c
    /* renamed from: a */
    public void mo36220a(Request request, Exception exc) {
        synchronized (this) {
            if (request == null || exc == null) {
                return;
            }
            if (!this.f15358o) {
                return;
            }
            if (!C4234f.m36080a(this.f15348e)) {
                return;
            }
            URL url = null;
            try {
                url = new URL(request.getUrl());
            } catch (Exception e) {
            }
            if (url == null) {
                return;
            }
            String protocol = url.getProtocol();
            String host = url.getHost();
            String path = url.getPath();
            String ipAddrStr = request.getIpAddrStr();
            if (!"http".equals(protocol) && !Constants.HTTPS.equals(protocol)) {
                return;
            }
            C4189d m36212c = m36212c();
            if (m36212c == null) {
                return;
            }
            C4228d.m36086b("TNCManager", "onError, url matched: " + protocol + "://" + host + "#" + ipAddrStr + "# " + this.f15352i + "#" + this.f15353j.size() + "#" + this.f15354k.size() + StringUtils.SPACE + this.f15355l + "#" + this.f15356m.size() + "#" + this.f15357n.size());
            this.f15352i = this.f15352i + 1;
            this.f15353j.put(path, 0);
            this.f15354k.put(ipAddrStr, 0);
            if (this.f15352i >= m36212c.f15329e && this.f15353j.size() >= m36212c.f15330f && this.f15354k.size() >= m36212c.f15331g) {
                C4228d.m36086b("TNCManager", "onError, url doUpate: " + protocol + "://" + host + "#" + ipAddrStr);
                m36216a(false, 0L);
                m36206g();
            }
            m36213b(host);
        }
    }

    /* renamed from: b */
    public void m36215b() {
        this.f15359p.clear();
    }

    /* renamed from: c */
    public C4189d m36212c() {
        C4190e c4190e = this.f15349f;
        if (c4190e != null) {
            return c4190e.m36226c();
        }
        return null;
    }

    /* renamed from: d */
    public Map<String, String> m36210d() {
        C4189d m36212c = m36212c();
        if (m36212c != null) {
            return m36212c.f15328d;
        }
        return null;
    }

    /* renamed from: e */
    public C4190e m36208e() {
        return this.f15349f;
    }
}
