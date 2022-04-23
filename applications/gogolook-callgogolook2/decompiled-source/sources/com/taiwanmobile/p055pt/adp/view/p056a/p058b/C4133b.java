package com.taiwanmobile.p055pt.adp.view.p056a.p058b;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4141d;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4146g;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.C4142e;
import com.taiwanmobile.p055pt.adp.view.p056a.C4143f;
import java.util.Calendar;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.AbstractC15238d;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.a.b.b */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/b/b.class */
public class C4133b {

    /* renamed from: a */
    public static final String f9838a = "b";

    /* renamed from: com.taiwanmobile.pt.adp.view.a.b.b$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/b/b$a.class */
    public class AsyncTaskC4136a extends AsyncTask<Void, Void, Void> {

        /* renamed from: b */
        public Context f9851b;

        /* renamed from: c */
        public String f9852c;

        /* renamed from: d */
        public AbstractC4137b f9853d;

        /* renamed from: e */
        public String f9854e;

        /* renamed from: f */
        public boolean f9855f;

        public AsyncTaskC4136a(Context context, String str, AbstractC4137b bVar) {
            this.f9851b = context;
            this.f9852c = str;
            this.f9853d = bVar;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            AdvertisingIdClient.Info a;
            this.f9854e = C10832d.m10495c(this.f9851b);
            this.f9855f = C10832d.m10491d(this.f9851b);
            String str = this.f9854e;
            if ((str != null && !"".equals(str)) || (a = C4127a.m29655a(this.f9851b)) == null || a.getId() == null || "".equals(a.getId())) {
                return null;
            }
            this.f9854e = a.getId();
            this.f9855f = a.isLimitAdTrackingEnabled();
            C10832d.m10500b(this.f9851b, this.f9854e);
            C10832d.m10508a(this.f9851b, this.f9855f);
            return null;
        }

        /* renamed from: a */
        public void onPostExecute(Void r5) {
            C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.f9852c);
            if (bVar != null) {
                String str = this.f9854e;
                this.f9854e = (str == null || "".equals(str)) ? C10832d.m10460q(this.f9851b) : this.f9854e;
                bVar.m29658a("_deviceId", this.f9854e);
            }
            AbstractC4137b bVar2 = this.f9853d;
            if (bVar2 != null) {
                bVar2.mo29590a(this.f9854e, this.f9855f);
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.b.b$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/b/b$b.class */
    public interface AbstractC4137b {
        /* renamed from: a */
        void mo29590a(String str, boolean z);
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.b.b$c */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/b/b$c.class */
    public interface AbstractC4138c {
        /* renamed from: a */
        void mo29589a();
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.a.b.b$d */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/a/b/b$d.class */
    public static class C4139d implements AbstractC15238d<ResponseBody> {

        /* renamed from: a */
        public Context f9856a;

        /* renamed from: b */
        public String f9857b;

        /* renamed from: c */
        public AbstractC4138c f9858c;

        public C4139d(Context context, String str, AbstractC4138c cVar) {
            this.f9857b = str;
            this.f9856a = context;
            this.f9858c = cVar;
        }

        /* renamed from: a */
        private void m29588a() {
            AbstractC4138c cVar = this.f9858c;
            if (cVar != null) {
                cVar.mo29589a();
            }
        }

        @Override // p655o.AbstractC15238d
        public void onFailure(AbstractC15235b<ResponseBody> bVar, Throwable th) {
            C10831c.m10520b("TPReportListener", "onErrorResponse(" + this.f9857b + "/" + th.getMessage() + ") invoked!!");
            m29588a();
        }

        @Override // p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            if (rVar != null) {
                try {
                    if (rVar.m90d()) {
                        String string = rVar.m95a().string();
                        C10831c.m10518c("TPReportListener", "onResponse  invoked --> " + string);
                        JSONObject jSONObject = new JSONObject(string);
                        if (jSONObject.has("sid") && this.f9856a != null) {
                            C10832d.m10494c(this.f9856a, jSONObject.getString("sid"));
                        }
                        m29588a();
                        return;
                    }
                } catch (Exception e) {
                    C10831c.m10520b("TPReportListener", "onResponse Exception(" + this.f9857b + "/" + e.getMessage() + ") invoked!!");
                    m29588a();
                    return;
                }
            }
            C10831c.m10520b("TPReportListener", "onResponse(" + this.f9857b + ") invoked!!");
            C10831c.m10520b("TPReportListener", "onResponse Failed: " + rVar.m92b() + " " + rVar.m89e());
            m29588a();
        }
    }

    /* renamed from: a */
    public static String m29610a(Context context, TWMAdRequest tWMAdRequest) {
        String propertyByKey = tWMAdRequest.getPropertyByKey("reserved_feature_1");
        return (propertyByKey == null || !propertyByKey.equals("0")) ? C10832d.m10462o(context) : "";
    }

    /* renamed from: a */
    public static String m29609a(Context context, String str) {
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
        String str2 = bVar != null ? (String) bVar.m29659a("userAgent") : null;
        String str3 = f9838a;
        C10831c.m10518c(str3, "userAgent : " + str2);
        return (str2 == null || "".equals(str2)) ? C10832d.m10513a(context) : str2;
    }

    /* renamed from: a */
    public static Map<String, String> m29606a(Context context, String str, String str2, String str3, boolean z) {
        return m29600b(context, str, str2, str3, z, null, null);
    }

    /* renamed from: a */
    public static void m29608a(final Context context, final String str, final String str2, final C4142e eVar) {
        new AsyncTaskC4136a(context, str2, new AbstractC4137b() { // from class: com.taiwanmobile.pt.adp.view.a.b.b.2
            @Override // com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4133b.AbstractC4137b
            /* renamed from: a */
            public void mo29590a(String str3, boolean z) {
                String str4;
                AbstractC4146g c = C4143f.m29549c();
                String replaceAll = str.replaceAll("\\[AN]", C10832d.m10458s(context)).replaceAll("\\[DN]", C4133b.m29595f() + "," + C4133b.m29594g() + "," + C4133b.m29593h()).replaceAll("\\[UDID]", str3).replaceAll("\\[DNT]", z ? "1" : "0");
                try {
                    String b = C4133b.m29599b((TWMAdRequest) ((C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str2)).m29659a("adRequest"));
                    str4 = replaceAll;
                    if (b.length() > 0) {
                        str4 = replaceAll + "&yob=" + b;
                    }
                } catch (Exception e) {
                    C10831c.m10520b(C4133b.f9838a, e.getMessage());
                    str4 = replaceAll;
                }
                c.m29544b(str4).mo140a(eVar);
            }
        }).execute(new Void[0]);
    }

    /* renamed from: a */
    public static void m29607a(Context context, String str, String str2, String str3) {
        C4143f.m29549c().m29546a(str, m29606a(context, str2, str3, C10832d.m10495c(context), C10832d.m10491d(context))).mo140a(new C4139d(context, str, null));
    }

    /* renamed from: a */
    public static void m29604a(final Context context, final String str, final String str2, final String str3, final boolean z, final boolean z2, final AbstractC4138c cVar) {
        new AsyncTaskC4136a(context, str2, new AbstractC4137b() { // from class: com.taiwanmobile.pt.adp.view.a.b.b.1
            @Override // com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4133b.AbstractC4137b
            /* renamed from: a */
            public void mo29590a(String str4, boolean z3) {
                C4143f.m29549c().m29546a(str, C4133b.m29600b(context, str2, str3, str4, z3, Boolean.valueOf(z), Boolean.valueOf(z2))).mo140a(new C4139d(context, str, cVar));
            }
        }).execute(new Void[0]);
    }

    /* renamed from: a */
    public static void m29602a(String str, AbstractC4141d dVar) {
        C10831c.m10518c(f9838a, "requestTPInfo invoked!!");
        C4143f.m29549c().m29547a(C4143f.m29550b().replace("[TAMEDIA_ADUNITID]", str)).mo140a(dVar);
    }

    /* renamed from: b */
    public static String m29599b(TWMAdRequest tWMAdRequest) {
        if (tWMAdRequest == null || tWMAdRequest.getBirthday() == null) {
            return "";
        }
        Calendar instance = Calendar.getInstance();
        instance.setTime(tWMAdRequest.getBirthday());
        return String.valueOf(instance.get(1));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x026e  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> m29600b(android.content.Context r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, boolean r9, java.lang.Boolean r10, java.lang.Boolean r11) {
        /*
            Method dump skipped, instructions count: 737
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4133b.m29600b(android.content.Context, java.lang.String, java.lang.String, java.lang.String, boolean, java.lang.Boolean, java.lang.Boolean):java.util.Map");
    }

    /* renamed from: e */
    public static String m29596e() {
        return "Android " + Build.VERSION.RELEASE;
    }

    /* renamed from: f */
    public static String m29595f() {
        return Build.MANUFACTURER;
    }

    /* renamed from: g */
    public static String m29594g() {
        return Build.MODEL;
    }

    /* renamed from: h */
    public static String m29593h() {
        return Build.PRODUCT;
    }
}
