package com.pgl.sys.ces;

import android.content.Context;
import com.pgl.a.b.e;
import com.pgl.sys.ces.a.c;
import com.pgl.sys.ces.a.d;
import com.pgl.sys.ces.a.f;
import com.pgl.sys.ces.d.a;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/b.class */
public class b extends Thread implements com.pgl.sys.ces.d.b {

    /* renamed from: c  reason: collision with root package name */
    public static boolean f34958c = false;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f34959d = false;
    private static volatile b e;
    private static boolean f = false;
    private static boolean m = false;
    private static Map<String, Object> n;

    /* renamed from: b  reason: collision with root package name */
    public Context f34961b;
    private String g;
    private a l;

    /* renamed from: a  reason: collision with root package name */
    public boolean f34960a = false;
    private String h = "";
    private String i = "";
    private String j = "";
    private boolean k = false;

    private b(Context context, String str, a aVar) {
        this.f34961b = null;
        this.g = "";
        this.l = null;
        setName("CZL-00");
        this.f34961b = context;
        this.g = str;
        this.l = aVar;
    }

    public static b a() {
        return e;
    }

    public static b a(Context context, String str, int i, a aVar) {
        if (e == null) {
            synchronized (b.class) {
                Context context2 = context;
                try {
                    if (e == null) {
                        context2 = context;
                        if (context == null) {
                            context2 = com.pgl.sys.ces.a.a.a().getApplicationContext();
                        }
                        if (context2 == null) {
                            return null;
                        }
                        e = new b(context2, str, aVar);
                    }
                    com.pgl.a.a.a.a(i);
                    e.a(context2, "nms");
                    a(context2);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    private static void a(Context context) {
        synchronized (b.class) {
            if (context != null) {
                try {
                    if (!f) {
                        try {
                            a.meta(101, null, "1");
                            a.meta(1020, null, b());
                            StringBuilder sb = new StringBuilder();
                            sb.append(com.pgl.sys.ces.a.a.b(context));
                            a.meta(105, null, sb.toString());
                            a.meta(106, null, com.pgl.sys.ces.a.a.a(context));
                            a.meta(107, null, com.pgl.sys.ces.a.a.c(context));
                            a.meta(108, null, com.pgl.sys.ces.a.a.d(context));
                            a.meta(109, null, com.pgl.sys.ces.a.a.b());
                            a.meta(110, null, com.pgl.sys.ces.a.a.c());
                            f = true;
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
    private void a(String str) {
        new Thread("CZL-".concat(String.valueOf(str))) { // from class: com.pgl.sys.ces.b.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                d.f34973a = 0;
                d.a(b.this.f34961b);
            }
        }.start();
    }

    public static String b() {
        return a().g;
    }

    public static String c() {
        return a().i;
    }

    public static String d() {
        return a().h;
    }

    public static a e() {
        return a().l;
    }

    private boolean f() {
        return this.k;
    }

    private void g() {
        com.pgl.sys.a.a.a(this.f34961b, b(), new com.pgl.sys.a.a.a() { // from class: com.pgl.sys.ces.b.2
            @Override // com.pgl.sys.a.a.a
            public void a(String str) {
                boolean unused = b.m = true;
            }
        });
    }

    public void SetRegionType(int i) {
        com.pgl.a.a.a.a(i);
    }

    public Object a(int i, Object obj) {
        String str = "";
        String str2 = null;
        if (i == 123) {
            str = com.pgl.sys.ces.a.e.a(this.f34961b);
        } else if (i == 121) {
            str = c.a(this.f34961b);
        } else if (i == 122) {
            str = c.c();
        } else if (i == 126) {
            str = c.c(this.f34961b);
        } else if (i == 127) {
            str = c.a();
        } else if (i == 128) {
            str = c.b();
        } else if (i == 120) {
            str = com.pgl.sys.ces.a.b.a();
        } else if (i == 124) {
            str = this.f34961b == null ? new JSONArray().toString() : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        } else if (i == 130) {
            str = f.a();
        } else if (i != 125) {
            if (i == 129) {
                str = d.a(this.f34961b);
            } else if (i == 131) {
                str = com.pgl.sys.a.a.a();
            } else {
                if (i == 132) {
                    reportNow((String) obj);
                } else if (i == 134) {
                    str = com.pgl.sys.ces.b.b.a(this.f34961b).b();
                } else if (i == 140) {
                    str = com.pgl.sys.ces.b.a.a(this.f34961b).b();
                } else if (i == 133) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        for (Map.Entry<String, Object> entry : n.entrySet()) {
                            if (entry.getValue() == null) {
                                jSONObject.put(entry.getKey(), "");
                            } else {
                                jSONObject.put(entry.getKey(), entry.getValue());
                            }
                        }
                        str2 = jSONObject.toString();
                    } catch (Throwable th) {
                    }
                    str = str2 == null ? "{}" : str2.trim();
                } else if (i == 135) {
                    String a2 = c.a();
                    str = a2 == null ? "0000000000000000000000000000000000000000" : a2.trim();
                } else if (i == 136) {
                    try {
                        str = this.f34961b.getPackageManager().getPackageInfo(this.f34961b.getPackageName(), 64).signatures[0].toByteArray();
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                } else if (i == 201) {
                    str = c.b(this.f34961b);
                } else if (i == 202) {
                    str = c.d();
                } else if (i == 236) {
                    try {
                        str = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, (String) obj);
                    } catch (Throwable th3) {
                    }
                }
                str = null;
            }
        }
        return str;
    }

    public String debugEntry(Context context, int i) {
        return (String) a.meta(1024768, null, null);
    }

    public String onEvent() {
        return com.pgl.sys.a.a.a();
    }

    @Override // com.pgl.sys.ces.d.b
    public String pullSg() {
        return c.a();
    }

    @Override // com.pgl.sys.ces.d.b
    public String pullVer(String str) {
        return c.a(str);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.pgl.sys.ces.b$3] */
    @Override // com.pgl.sys.ces.d.b
    public void reportNow(final String str) {
        try {
            new Thread("CZL-LRT") { // from class: com.pgl.sys.ces.b.3
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        long j = 0;
                        long timeInMillis = b.a().f34960a ? Calendar.getInstance().getTimeInMillis() : 0L;
                        byte[] bArr = (byte[]) a.meta(222, b.this.f34961b, str);
                        if (b.a().f34960a) {
                            j = Calendar.getInstance().getTimeInMillis();
                        }
                        if (b.a().f34960a) {
                            new StringBuilder("[Efficient] report : ").append(j - timeInMillis);
                        }
                        if (bArr == null || bArr.length <= 0) {
                            throw new NullPointerException("NullPointerException");
                        }
                        new com.pgl.sys.ces.c.a(b.this.f34961b, b.this.h).a(1, bArr);
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
        this.k = true;
        a("SP1");
        com.pgl.a.b.f.a(10000L);
        g();
        com.pgl.a.b.f.a(10000L);
        reportNow("CZL-L1st");
        while (true) {
            int i2 = 0;
            do {
                com.pgl.sys.ces.b.b a2 = com.pgl.sys.ces.b.b.a(this.f34961b);
                String a3 = a2.a();
                if (a3 != null) {
                    a2.f34969a.add(a3);
                    try {
                        int size = a2.f34969a.size();
                        if (size > 20) {
                            ArrayList arrayList = new ArrayList(a2.f34969a.subList(size - 10, size));
                            a2.f34969a.clear();
                            a2.f34969a = arrayList;
                        }
                    } catch (Throwable th) {
                    }
                }
                com.pgl.sys.ces.b.a a4 = com.pgl.sys.ces.b.a.a(this.f34961b);
                String a5 = a4.a();
                if (a5 != null) {
                    a4.f34967a.add(a5);
                    try {
                        int size2 = a4.f34967a.size();
                        if (size2 > 20) {
                            ArrayList arrayList2 = new ArrayList(a4.f34967a.subList(size2 - 10, size2));
                            a4.f34967a.clear();
                            a4.f34967a = arrayList2;
                        }
                    } catch (Throwable th2) {
                    }
                }
                if (i2 == 10) {
                    reportNow("CZL-LLP");
                }
                i = i2 + 1;
                a.meta(1213, null, Thread.currentThread().getName() + VerificationLanguage.REGION_PREFIX + i);
                com.pgl.a.b.f.a(180000L);
                i2 = i;
            } while (i <= 10);
        }
    }

    @Override // com.pgl.sys.ces.d.b
    public void setCustomInfo(HashMap<String, Object> hashMap) {
        if (hashMap != null) {
            n = hashMap;
        }
    }

    public void setEfficientDebug(boolean z) {
        this.f34960a = z;
    }

    @Override // com.pgl.sys.ces.d.b
    public void setParams(String str, String str2) {
        if (str != null && str.length() > 0) {
            this.i = str;
            a.meta(103, null, str);
        }
        if (str2 != null && str2.length() > 0) {
            this.j = str2;
            a.meta(104, null, str2);
        }
        if (!isAlive() || !f()) {
            try {
                start();
            } catch (Throwable th) {
            }
        }
    }
}
