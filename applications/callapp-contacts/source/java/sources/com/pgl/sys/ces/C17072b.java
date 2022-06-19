package com.pgl.sys.ces;

import android.content.Context;
import com.pgl.p474a.p475a.C17049a;
import com.pgl.p474a.p476b.C17057e;
import com.pgl.p474a.p476b.C17058f;
import com.pgl.sys.ces.p480a.C17065a;
import com.pgl.sys.ces.p480a.C17066b;
import com.pgl.sys.ces.p480a.C17068c;
import com.pgl.sys.ces.p480a.C17069d;
import com.pgl.sys.ces.p480a.C17070e;
import com.pgl.sys.ces.p480a.C17071f;
import com.pgl.sys.ces.p481b.C17076a;
import com.pgl.sys.ces.p481b.C17077b;
import com.pgl.sys.ces.p482c.C17079a;
import com.pgl.sys.ces.p483d.AbstractC17082a;
import com.pgl.sys.ces.p483d.AbstractC17083b;
import com.pgl.sys.p477a.C17059a;
import com.pgl.sys.p477a.p478a.AbstractC17060a;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.pgl.sys.ces.b */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/b.class */
public class C17072b extends Thread implements AbstractC17083b {

    /* renamed from: c */
    public static boolean f60596c = false;

    /* renamed from: d */
    public static boolean f60597d = false;

    /* renamed from: e */
    private static volatile C17072b f60598e;

    /* renamed from: f */
    private static boolean f60599f = false;

    /* renamed from: m */
    private static boolean f60600m = false;

    /* renamed from: n */
    private static Map<String, Object> f60601n;

    /* renamed from: b */
    public Context f60603b;

    /* renamed from: g */
    private String f60604g;

    /* renamed from: l */
    private AbstractC17082a f60609l;

    /* renamed from: a */
    public boolean f60602a = false;

    /* renamed from: h */
    private String f60605h = "";

    /* renamed from: i */
    private String f60606i = "";

    /* renamed from: j */
    private String f60607j = "";

    /* renamed from: k */
    private boolean f60608k = false;

    private C17072b(Context context, String str, AbstractC17082a abstractC17082a) {
        this.f60603b = null;
        this.f60604g = "";
        this.f60609l = null;
        setName("CZL-00");
        this.f60603b = context;
        this.f60604g = str;
        this.f60609l = abstractC17082a;
    }

    /* renamed from: a */
    public static C17072b m5917a() {
        return f60598e;
    }

    /* renamed from: a */
    public static C17072b m5914a(Context context, String str, int i, AbstractC17082a abstractC17082a) {
        if (f60598e == null) {
            synchronized (C17072b.class) {
                Context context2 = context;
                try {
                    if (f60598e == null) {
                        context2 = context;
                        if (context == null) {
                            context2 = C17065a.m5941a().getApplicationContext();
                        }
                        if (context2 == null) {
                            return null;
                        }
                        f60598e = new C17072b(context2, str, abstractC17082a);
                    }
                    C17049a.m5959a(i);
                    C17057e.m5948a(context2, "nms");
                    m5915a(context2);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f60598e;
    }

    /* renamed from: a */
    private static void m5915a(Context context) {
        synchronized (C17072b.class) {
            if (context != null) {
                try {
                    if (!f60599f) {
                        try {
                            C17064a.meta(101, null, "1");
                            C17064a.meta(1020, null, m5910b());
                            StringBuilder sb = new StringBuilder();
                            sb.append(C17065a.m5938b(context));
                            C17064a.meta(105, null, sb.toString());
                            C17064a.meta(106, null, C17065a.m5940a(context));
                            C17064a.meta(107, null, C17065a.m5936c(context));
                            C17064a.meta(108, null, C17065a.m5935d(context));
                            C17064a.meta(109, null, C17065a.m5939b());
                            C17064a.meta(110, null, C17065a.m5937c());
                            f60599f = true;
                        } catch (Throwable th) {
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.pgl.sys.ces.b$1] */
    /* renamed from: a */
    private void m5912a(String str) {
        new Thread("CZL-".concat(String.valueOf(str))) { // from class: com.pgl.sys.ces.b.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                C17081d.f60625a = 0;
                C17081d.m5890a(C17072b.this.f60603b);
            }
        }.start();
    }

    /* renamed from: b */
    public static String m5910b() {
        return m5917a().f60604g;
    }

    /* renamed from: c */
    public static String m5909c() {
        return m5917a().f60606i;
    }

    /* renamed from: d */
    public static String m5908d() {
        return m5917a().f60605h;
    }

    /* renamed from: e */
    public static AbstractC17082a m5907e() {
        return m5917a().f60609l;
    }

    /* renamed from: f */
    private boolean m5906f() {
        return this.f60608k;
    }

    /* renamed from: g */
    private void m5905g() {
        C17059a.m5944a(this.f60603b, m5910b(), new AbstractC17060a() { // from class: com.pgl.sys.ces.b.2
            @Override // com.pgl.sys.p477a.p478a.AbstractC17060a
            /* renamed from: a */
            public void mo5904a(String str) {
                boolean unused = C17072b.f60600m = true;
            }
        });
    }

    public void SetRegionType(int i) {
        C17049a.m5959a(i);
    }

    /* renamed from: a */
    public Object m5916a(int i, Object obj) {
        String str;
        String str2;
        if (i == 123) {
            str = C17070e.m5921a(this.f60603b);
        } else if (i == 121) {
            str = C17068c.m5928a(this.f60603b);
        } else if (i == 122) {
            str = C17068c.m5925c();
        } else if (i == 126) {
            str = C17068c.m5924c(this.f60603b);
        } else if (i == 127) {
            str = C17068c.m5929a();
        } else if (i == 128) {
            str = C17068c.m5927b();
        } else if (i == 120) {
            str = C17066b.m5934a();
        } else if (i == 124) {
            str = this.f60603b == null ? new JSONArray().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        } else if (i == 130) {
            str = C17071f.m5918a();
        } else if (i == 125) {
            str = "";
        } else if (i == 129) {
            str = C17069d.m5922a(this.f60603b);
        } else if (i == 131) {
            str = C17059a.m5945a();
        } else {
            if (i == 132) {
                reportNow((String) obj);
            } else if (i == 134) {
                str = C17077b.m5899a(this.f60603b).m5898b();
            } else if (i == 140) {
                str = C17076a.m5902a(this.f60603b).m5901b();
            } else if (i == 133) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry<String, Object> entry : f60601n.entrySet()) {
                        if (entry.getValue() == null) {
                            jSONObject.put(entry.getKey(), "");
                        } else {
                            jSONObject.put(entry.getKey(), entry.getValue());
                        }
                    }
                    str2 = jSONObject.toString();
                } catch (Throwable th) {
                    str2 = null;
                }
                str = str2 == null ? "{}" : str2.trim();
            } else if (i == 135) {
                String m5895a = C17078c.m5895a();
                str = m5895a == null ? "0000000000000000000000000000000000000000" : m5895a.trim();
            } else if (i == 136) {
                try {
                    str = this.f60603b.getPackageManager().getPackageInfo(this.f60603b.getPackageName(), 64).signatures[0].toByteArray();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            } else if (i == 201) {
                str = C17068c.m5926b(this.f60603b);
            } else if (i == 202) {
                str = C17068c.m5923d();
            } else if (i == 236) {
                try {
                    str = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, (String) obj);
                } catch (Throwable th3) {
                }
            }
            str = null;
        }
        return str;
    }

    public String debugEntry(Context context, int i) {
        return (String) C17064a.meta(1024768, null, null);
    }

    public String onEvent() {
        return C17059a.m5945a();
    }

    @Override // com.pgl.sys.ces.p483d.AbstractC17083b
    public String pullSg() {
        return C17078c.m5895a();
    }

    @Override // com.pgl.sys.ces.p483d.AbstractC17083b
    public String pullVer(String str) {
        return C17078c.m5894a(str);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.pgl.sys.ces.b$3] */
    @Override // com.pgl.sys.ces.p483d.AbstractC17083b
    public void reportNow(final String str) {
        try {
            new Thread("CZL-LRT") { // from class: com.pgl.sys.ces.b.3
                /* JADX WARN: Type inference failed for: r0v25, types: [long] */
                /* JADX WARN: Type inference failed for: r0v28, types: [long] */
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        char c = 0;
                        char timeInMillis = C17072b.m5917a().f60602a ? Calendar.getInstance().getTimeInMillis() : (char) 0;
                        byte[] bArr = (byte[]) C17064a.meta(222, C17072b.this.f60603b, str);
                        if (C17072b.m5917a().f60602a) {
                            c = Calendar.getInstance().getTimeInMillis();
                        }
                        if (C17072b.m5917a().f60602a) {
                            new StringBuilder("[Efficient] report : ").append(c - timeInMillis);
                        }
                        if (bArr == null || bArr.length <= 0) {
                            throw new NullPointerException("NullPointerException");
                        }
                        new C17079a(C17072b.this.f60603b, C17072b.this.f60605h).m5956a(1, bArr);
                    } catch (Throwable th) {
                    }
                }
            }.start();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int i;
        this.f60608k = true;
        m5912a("SP1");
        C17058f.m5946a(10000L);
        m5905g();
        C17058f.m5946a(10000L);
        reportNow("CZL-L1st");
        while (true) {
            int i2 = 0;
            do {
                C17077b m5899a = C17077b.m5899a(this.f60603b);
                String m5900a = m5899a.m5900a();
                if (m5900a != null) {
                    m5899a.f60618a.add(m5900a);
                    try {
                        int size = m5899a.f60618a.size();
                        if (size > 20) {
                            ArrayList arrayList = new ArrayList(m5899a.f60618a.subList(size - 10, size));
                            m5899a.f60618a.clear();
                            m5899a.f60618a = arrayList;
                        }
                    } catch (Throwable th) {
                    }
                }
                C17076a m5902a = C17076a.m5902a(this.f60603b);
                String m5903a = m5902a.m5903a();
                if (m5903a != null) {
                    m5902a.f60615a.add(m5903a);
                    try {
                        int size2 = m5902a.f60615a.size();
                        if (size2 > 20) {
                            ArrayList arrayList2 = new ArrayList(m5902a.f60615a.subList(size2 - 10, size2));
                            m5902a.f60615a.clear();
                            m5902a.f60615a = arrayList2;
                        }
                    } catch (Throwable th2) {
                    }
                }
                if (i2 == 10) {
                    reportNow("CZL-LLP");
                }
                i = i2 + 1;
                C17064a.meta(1213, null, Thread.currentThread().getName() + VerificationLanguage.REGION_PREFIX + i);
                C17058f.m5946a(180000L);
                i2 = i;
            } while (i <= 10);
        }
    }

    @Override // com.pgl.sys.ces.p483d.AbstractC17083b
    public void setCustomInfo(HashMap<String, Object> hashMap) {
        if (hashMap != null) {
            f60601n = hashMap;
        }
    }

    public void setEfficientDebug(boolean z) {
        this.f60602a = z;
    }

    @Override // com.pgl.sys.ces.p483d.AbstractC17083b
    public void setParams(String str, String str2) {
        if (str != null && str.length() > 0) {
            this.f60606i = str;
            C17064a.meta(103, null, str);
        }
        if (str2 != null && str2.length() > 0) {
            this.f60607j = str2;
            C17064a.meta(104, null, str2);
        }
        if (!isAlive() || !m5906f()) {
            try {
                start();
            } catch (Throwable th) {
            }
        }
    }
}
