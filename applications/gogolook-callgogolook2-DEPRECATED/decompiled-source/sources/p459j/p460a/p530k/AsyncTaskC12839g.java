package p459j.p460a.p530k;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import gogolook.callgogolook2.MyApplication;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.client.ClientProtocolException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p507f0.AbstractC12383b;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p590x4.C14261f;
/* renamed from: j.a.k.g */
/* loaded from: classes2-dex2jar.jar:j/a/k/g.class */
public class AsyncTaskC12839g extends AsyncTask<Void, Void, Void> {

    /* renamed from: k */
    public static Set<String> f29007k = Collections.synchronizedSet(new HashSet());

    /* renamed from: a */
    public Context f29008a;

    /* renamed from: b */
    public boolean f29009b;

    /* renamed from: c */
    public boolean f29010c;

    /* renamed from: d */
    public String f29011d;

    /* renamed from: e */
    public String f29012e;

    /* renamed from: f */
    public JSONObject f29013f;

    /* renamed from: g */
    public SimpleDateFormat f29014g;

    /* renamed from: h */
    public AbstractC12383b f29015h;

    /* renamed from: i */
    public int f29016i;

    /* renamed from: j */
    public String f29017j;

    public AsyncTaskC12839g() {
        this.f29014g = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        this.f29008a = MyApplication.m29013o();
        this.f29010c = true;
    }

    public AsyncTaskC12839g(Context context, String str, String str2, String str3, boolean z, AbstractC12383b bVar) {
        this.f29014g = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        this.f29008a = context;
        this.f29011d = C14108o4.m2474l(str).replace("+", "");
        this.f29012e = str3;
        this.f29009b = z;
        this.f29015h = bVar;
        this.f29013f = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject = new JSONObject();
            boolean z2 = true;
            boolean z3 = true;
            try {
                jSONObject.put("number", this.f29011d);
                if (this.f29009b) {
                    jSONObject.put("telecom", str2);
                    String a = m5174a(str2);
                    if (a.equals(str2)) {
                        jSONObject.put("telecom", Integer.parseInt(str2));
                    } else {
                        jSONObject.put("servicecenter", a);
                    }
                } else {
                    z3 = true ^ this.f29012e.contains(C14108o4.m2473m(str));
                    jSONObject.put("servicecenter", str2.replace("+", ""));
                }
                z2 = z3;
                jSONObject.put("reporttime", this.f29014g.format(Long.valueOf(System.currentTimeMillis())));
                z2 = z3;
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
            if (z2) {
                jSONArray.put(jSONObject);
            }
            this.f29013f.put("reportnumbers", jSONArray);
        } catch (JSONException e2) {
            C14080m2.m2612a((Throwable) e2);
        }
        this.f29010c = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003b, code lost:
        if (r4.equalsIgnoreCase("Far EasTone") != false) goto L_0x003e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0060, code lost:
        if (r4.equalsIgnoreCase("台灣之星電信") != false) goto L_0x0063;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r0.equalsIgnoreCase("Chungwha") != false) goto L_0x0019;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m5174a(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r0 = r0.trim()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "中華電信"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L_0x0019
            r0 = r4
            r5 = r0
            r0 = r4
            java.lang.String r1 = "Chungwha"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x001c
        L_0x0019:
            java.lang.String r0 = "886932000000"
            r5 = r0
        L_0x001c:
            r0 = r5
            r4 = r0
            r0 = r5
            java.lang.String r1 = "TW Mobile"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x002a
            java.lang.String r0 = "886935000000"
            r4 = r0
        L_0x002a:
            r0 = r4
            java.lang.String r1 = "遠傳電信"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L_0x003e
            r0 = r4
            r5 = r0
            r0 = r4
            java.lang.String r1 = "Far EasTone"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x0041
        L_0x003e:
            java.lang.String r0 = "886936000000"
            r5 = r0
        L_0x0041:
            r0 = r5
            r4 = r0
            r0 = r5
            java.lang.String r1 = "亞太電信"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x004f
            java.lang.String r0 = "886982000000"
            r4 = r0
        L_0x004f:
            r0 = r4
            java.lang.String r1 = "威寶電信"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L_0x0063
            r0 = r4
            r5 = r0
            r0 = r4
            java.lang.String r1 = "台灣之星電信"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x0066
        L_0x0063:
            java.lang.String r0 = "886986000000"
            r5 = r0
        L_0x0066:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p530k.AsyncTaskC12839g.m5174a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        try {
            if (this.f29010c) {
                if (!C12810o.m5233l()) {
                    return null;
                }
                this.f29013f = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                Date date = new Date();
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                gregorianCalendar.setTime(date);
                gregorianCalendar.add(5, -90);
                Date time = gregorianCalendar.getTime();
                Cursor query = this.f29008a.getContentResolver().query(Uri.parse("content://sms/inbox"), null, null, null, "date desc");
                if (query != null) {
                    int columnIndex = query.getColumnIndex("body");
                    int columnIndex2 = query.getColumnIndex("date");
                    int columnIndex3 = query.getColumnIndex("address");
                    int columnIndex4 = query.getColumnIndex("service_center");
                    while (query.moveToNext()) {
                        try {
                            if (Long.parseLong(query.getString(columnIndex2)) >= time.getTime()) {
                                String string = query.getString(columnIndex3);
                                String string2 = query.getString(columnIndex4);
                                if (string2 != null) {
                                    String replace = string2.replace("+", "");
                                    try {
                                        String replace2 = C14108o4.m2474l(string).replace("+", "");
                                        if (!query.getString(columnIndex).contains(C14108o4.m2473m(string)) && !f29007k.contains(replace2)) {
                                            JSONObject jSONObject = new JSONObject();
                                            jSONObject.put("number", replace2);
                                            jSONObject.put("servicecenter", replace);
                                            jSONObject.put("reporttime", this.f29014g.format(Long.valueOf(Long.parseLong(query.getString(columnIndex2)))));
                                            jSONArray.put(jSONObject);
                                            f29007k.add(replace2);
                                        }
                                    } catch (Exception e) {
                                    }
                                }
                            }
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                    }
                    this.f29013f.put("reportnumbers", jSONArray);
                    query.close();
                    C13915b3.m3055b("isSendInboxNumberDone", true);
                }
            } else if (this.f29009b || !f29007k.contains(this.f29011d)) {
                f29007k.add(this.f29011d);
            }
            if (f29007k.isEmpty()) {
                return null;
            }
            C14261f.m1974a("telecom_report_api_called", (Bundle) null);
            C12378a.C12380b c = C12378a.m6276a(C12378a.EnumC12382d.POST_REPORT_TELECOM, this.f29013f, new String[0]).m6261c();
            if (c == null) {
                return null;
            }
            this.f29016i = c.f27921b;
            this.f29017j = c.f27922c;
            return null;
        } catch (ClientProtocolException e3) {
            e3.printStackTrace();
            return null;
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
            return null;
        } catch (IOException e5) {
            e5.printStackTrace();
            return null;
        } catch (Exception e6) {
            e6.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public void onPostExecute(Void r6) {
        super.onPostExecute(r6);
        AbstractC12383b bVar = this.f29015h;
        if (bVar != null) {
            try {
                bVar.mo3002a(this.f29016i, this.f29017j, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
