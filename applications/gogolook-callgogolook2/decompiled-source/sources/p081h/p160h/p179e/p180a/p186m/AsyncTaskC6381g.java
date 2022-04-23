package p081h.p160h.p179e.p180a.p186m;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.util.Locale;
import javax.net.ssl.SSLException;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6341b;
import p081h.p160h.p179e.p180a.C6343d;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.m.g */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/m/g.class */
public class AsyncTaskC6381g extends AsyncTask {

    /* renamed from: a */
    public Context f15875a;

    /* renamed from: b */
    public C6341b f15876b;

    /* renamed from: c */
    public JSONObject f15877c = null;

    /* renamed from: d */
    public int f15878d = 0;

    public AsyncTaskC6381g(Context context, C6341b bVar) {
        this.f15875a = null;
        this.f15876b = null;
        this.f15875a = context;
        this.f15876b = bVar;
    }

    /* renamed from: a */
    public static C6382h m22894a(Context context, C6341b bVar) {
        C6382h hVar = new C6382h();
        if (bVar != null) {
            try {
            } catch (C6343d e) {
                C6438i.m22583a(e);
                hVar.f15879a = 1;
                hVar.f15880b = null;
                if (bVar == null) {
                    C6432e.m22605a("WCException", e.getMessage());
                } else {
                    C6432e.m22605a("WCException", e.getMessage() + " , object=" + bVar.toString());
                }
            } catch (IOException e2) {
                C6438i.m22583a(e2);
                hVar.f15879a = -200;
            } catch (ClassCastException e3) {
                C6438i.m22583a(e3);
                hVar.f15879a = 1;
                hVar.f15880b = null;
                C6432e.m22605a("ClassCastException", e3.getMessage() + " , object=" + bVar.toString());
            } catch (IllegalArgumentException e4) {
                C6438i.m22583a(e4);
                hVar.f15879a = 1;
                hVar.f15880b = null;
                C6432e.m22605a("IllegalArgumentException", e4.getMessage() + " , object=" + bVar.toString());
            } catch (IllegalStateException e5) {
                C6438i.m22583a(e5);
                hVar.f15879a = 1;
                hVar.f15880b = null;
                C6432e.m22605a("IllegalStateException", e5.getMessage() + " , object=" + bVar.toString());
            } catch (NullPointerException e6) {
                C6438i.m22583a(e6);
                hVar.f15879a = 1;
                hVar.f15880b = null;
                C6432e.m22608a(e6, bVar.toString());
            } catch (SecurityException e7) {
                C6438i.m22583a(e7);
                hVar.f15879a = -1;
                hVar.f15880b = null;
            } catch (MalformedURLException e8) {
                C6438i.m22583a(e8);
                hVar.f15879a = -100;
            } catch (ProtocolException e9) {
                C6438i.m22583a(e9);
                hVar.f15879a = -100;
            } catch (SSLException e10) {
                hVar.f15879a = -205;
                C6432e.m22605a("SSLException", e10.getMessage());
            } catch (JSONException e11) {
                C6438i.m22583a(e11);
                hVar.f15880b = null;
            }
            if (bVar.m23198g()) {
                if (!C6432e.m22591d(context)) {
                    hVar.f15879a = -206;
                    hVar.f15880b = null;
                } else {
                    long currentTimeMillis = System.currentTimeMillis();
                    Response execute = FirebasePerfOkHttpClient.execute(C6379e.m22903a(bVar, C6379e.m22904a(bVar)));
                    if (execute != null) {
                        hVar.f15879a = execute.code();
                        hVar.f15888j = (int) (System.currentTimeMillis() - currentTimeMillis);
                        if (hVar.f15879a == 200) {
                            String string = execute.body().string();
                            if (TextUtils.isEmpty(string)) {
                                hVar.f15880b = null;
                            } else if (!bVar.f15769o) {
                                hVar.f15880b = new JSONObject(string);
                                if (hVar.f15880b.length() > 0) {
                                    C6438i.m22579c("response data = " + string);
                                }
                            } else {
                                hVar.f15881c = string;
                                C6438i.m22578d("response data = " + string);
                            }
                            if (bVar.f15769o) {
                                hVar.f15882d = m22892a(execute.header("ETag"));
                                hVar.f15883e = execute.header("X-Amz-Cf-Id");
                                hVar.f15884f = execute.header("X-WC-ID");
                                hVar.f15887i = m22891b(execute.header("Cache-Control"));
                                hVar.f15885g = m22890c(execute.header("X-Cache"));
                                hVar.f15886h = execute.header("X-WC-DS");
                            }
                        } else if (hVar.f15879a == 304 && bVar.f15769o) {
                            hVar.f15887i = m22891b(execute.header("Cache-Control"));
                            hVar.f15885g = m22890c(execute.header("X-Cache"));
                            hVar.f15886h = execute.header("X-WC-DS");
                        }
                        execute.close();
                    } else {
                        hVar.f15879a = -200;
                        hVar.f15880b = null;
                    }
                }
                m22893a(bVar, hVar);
                return hVar;
            }
        }
        hVar.f15879a = -100;
        throw new C6343d("invalid request object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005c, code lost:
        if (r7.endsWith("\"") == false) goto L_0x005f;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m22892a(java.lang.String r6) {
        /*
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x003b
            r0 = r6
            java.lang.String r1 = "W/\""
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x003b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "\""
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            r2 = 3
            r3 = r6
            int r3 = r3.length()
            r4 = 1
            int r3 = r3 - r4
            java.lang.String r1 = r1.substring(r2, r3)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = "\""
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            return r0
        L_0x003b:
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0044
            java.lang.String r0 = ""
            r7 = r0
        L_0x0044:
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0054
            r0 = r7
            java.lang.String r1 = "\""
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x005f
        L_0x0054:
            r0 = r7
            r6 = r0
            r0 = r7
            java.lang.String r1 = "\""
            boolean r0 = r0.endsWith(r1)
            if (r0 != 0) goto L_0x0080
        L_0x005f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "\""
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "\""
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            r6 = r0
        L_0x0080:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p179e.p180a.p186m.AsyncTaskC6381g.m22892a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static void m22893a(C6341b bVar, C6382h hVar) {
        if (bVar != null && bVar.f15770p && hVar != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(bVar.f15756b + " " + hVar.f15879a + " : " + bVar.f15755a + " : ");
            JSONObject jSONObject = hVar.f15880b;
            if (jSONObject != null) {
                sb.append(jSONObject);
            } else if (!TextUtils.isEmpty(hVar.f15881c)) {
                sb.append(hVar.f15881c);
            }
            sb.append(" " + hVar.f15888j + " ms ");
            if (!TextUtils.isEmpty(bVar.f15757c)) {
                sb.append("\ninput body = " + bVar.f15757c);
            }
            if (!TextUtils.isEmpty(bVar.f15758d)) {
                sb.append("\ninput header = " + bVar.f15758d);
            }
            C6438i.m22576f(sb.toString());
        }
    }

    /* renamed from: b */
    public static long m22891b(String str) {
        if (str.startsWith("max-age=")) {
            int indexOf = str.indexOf("max-age=");
            int indexOf2 = str.indexOf(44);
            try {
                return System.currentTimeMillis() + (Long.parseLong(str.substring(indexOf + 8, indexOf2)) * 1000);
            } catch (Exception e) {
            }
        }
        return System.currentTimeMillis() + 604800000;
    }

    /* renamed from: c */
    public static String m22890c(String str) {
        if (TextUtils.isEmpty(str) || !str.contains("from cloudfront")) {
            return null;
        }
        return str.replace("from cloudfront", "").replace(" ", "").toLowerCase(Locale.ENGLISH);
    }

    @Override // android.os.AsyncTask
    public Object doInBackground(Object... objArr) {
        C6382h a = m22894a(this.f15875a, this.f15876b);
        this.f15878d = a.f15879a;
        this.f15877c = a.f15880b;
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Object obj) {
        AbstractC6378d dVar = this.f15876b.f15760f;
        if (dVar != null) {
            try {
                dVar.mo1272a(this.f15878d, this.f15877c);
            } catch (Exception e) {
                C6438i.m22579c("callback onComplete error, e = " + e.getMessage());
                try {
                    this.f15876b.f15760f.mo1272a(-1, null);
                } catch (Exception e2) {
                    C6438i.m22579c("callback onComplete error again, e = " + e2.getMessage());
                }
            }
        }
    }
}
