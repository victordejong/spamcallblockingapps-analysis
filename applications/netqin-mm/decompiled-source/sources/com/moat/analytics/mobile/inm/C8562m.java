package com.moat.analytics.mobile.inm;

import android.os.Build;
import android.util.Base64;
import android.util.Log;
import com.android.volley.Request;
import com.moat.analytics.mobile.inm.C8574s;
import com.moat.analytics.mobile.inm.C8586w;
import java.net.URLEncoder;
import java.util.Locale;
/* renamed from: com.moat.analytics.mobile.inm.m */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/m.class */
public class C8562m extends Exception {

    /* renamed from: b */
    public static Long f33315b;

    /* renamed from: a */
    public static final Long f33314a = 60000L;

    /* renamed from: c */
    public static Exception f33316c = null;

    public C8562m(String str) {
        super(str);
    }

    /* renamed from: a */
    public static String m5134a(String str, Exception exc) {
        if (exc instanceof C8562m) {
            return str + " failed: " + exc.getMessage();
        }
        return str + " failed unexpectedly";
    }

    /* renamed from: a */
    public static void m5136a() {
        Exception exc = f33316c;
        if (exc != null) {
            m5133b(exc);
            f33316c = null;
        }
    }

    /* renamed from: a */
    public static void m5135a(Exception exc) {
        if (C8586w.m5069a().f33357b) {
            Log.e("MoatException", Log.getStackTraceString(exc));
        } else {
            m5133b(exc);
        }
    }

    /* renamed from: b */
    public static void m5133b(Exception exc) {
        String str;
        String str2;
        String str3;
        try {
            if (C8586w.m5069a().f33356a == C8586w.EnumC8594d.ON) {
                int i = C8586w.m5069a().f33360e;
                if (i != 0) {
                    if (i < 100) {
                        double d = i;
                        Double.isNaN(d);
                        if (d / 100.0d < Math.random()) {
                            return;
                        }
                    }
                    StringBuilder sb = new StringBuilder("https://px.moatads.com/pixel.gif?e=0&i=MOATSDK1&ac=1");
                    StringBuilder sb2 = new StringBuilder("&zt=");
                    sb2.append(exc instanceof C8562m ? 1 : 0);
                    sb.append(sb2.toString());
                    sb.append("&zr=" + i);
                    try {
                        StringBuilder sb3 = new StringBuilder("&zm=");
                        sb3.append(exc.getMessage() == null ? "null" : URLEncoder.encode(Base64.encodeToString(exc.getMessage().getBytes(Request.DEFAULT_PARAMS_ENCODING), 0), Request.DEFAULT_PARAMS_ENCODING));
                        sb.append(sb3.toString());
                        sb.append("&k=" + URLEncoder.encode(Base64.encodeToString(Log.getStackTraceString(exc).getBytes(Request.DEFAULT_PARAMS_ENCODING), 0), Request.DEFAULT_PARAMS_ENCODING));
                    } catch (Exception e) {
                    }
                    try {
                        sb.append("&zMoatMMAKv=c334ae83accfebb8da23104450c896463c9cfab7");
                        str = "2.5.0";
                        try {
                            C8574s.C8576a d2 = C8574s.m5088d();
                            sb.append("&zMoatMMAKan=" + d2.m5082a());
                            str3 = d2.m5080b();
                            try {
                                str2 = Integer.toString(Build.VERSION.SDK_INT);
                            } catch (Exception e2) {
                                str2 = "";
                            }
                        } catch (Exception e3) {
                            str3 = "";
                            str2 = "";
                        }
                    } catch (Exception e4) {
                        str = "";
                        str3 = str;
                        str2 = "";
                    }
                    sb.append("&d=Android:INM:" + str3 + ":-");
                    StringBuilder sb4 = new StringBuilder("&bo=");
                    sb4.append(str);
                    sb.append(sb4.toString());
                    sb.append("&bd=" + str2);
                    Long valueOf = Long.valueOf(System.currentTimeMillis());
                    sb.append("&t=" + valueOf);
                    sb.append("&de=" + String.format(Locale.ROOT, "%.0f", Double.valueOf(Math.floor(Math.random() * Math.pow(10.0d, 12.0d)))));
                    sb.append("&cs=0");
                    if (f33315b == null || valueOf.longValue() - f33315b.longValue() > f33314a.longValue()) {
                        C8572q.m5095b(sb.toString());
                        f33315b = valueOf;
                        return;
                    }
                    return;
                }
                return;
            }
            f33316c = exc;
        } catch (Exception e5) {
        }
    }
}
