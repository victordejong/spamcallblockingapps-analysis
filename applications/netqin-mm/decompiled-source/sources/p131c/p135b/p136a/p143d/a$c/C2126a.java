package p131c.p135b.p136a.p143d.a$c;

import android.os.Build;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p131c.p135b.p136a.p143d.p147e.C2167b;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2345m;
import p131c.p135b.p136a.p148e.p152q.C2356a;
import p131c.p135b.p136a.p148e.p152q.C2360b;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.d.a$c.a */
/* loaded from: classes-dex2jar.jar:c/b/a/d/a$c/a.class */
public class C2126a extends C2270g.AbstractRunnableC2278c {

    /* renamed from: f */
    public final C2356a.AbstractC2359c<JSONObject> f8161f;

    /* renamed from: c.b.a.d.a$c.a$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/a$c/a$a.class */
    public class C2127a extends C2270g.AbstractC2288f0<JSONObject> {
        public C2127a(C2360b bVar, C2341l lVar, boolean z) {
            super(bVar, lVar, z);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
        /* renamed from: a */
        public void mo18839a(int i) {
            C2126a.this.f8161f.mo18839a(i);
        }

        /* renamed from: a */
        public void mo18838a(JSONObject jSONObject, int i) {
            C2126a.this.f8161f.mo18838a(jSONObject, i);
        }
    }

    public C2126a(C2356a.AbstractC2359c<JSONObject> cVar, C2341l lVar) {
        super("TaskFetchMediationDebuggerInfo", lVar, true);
        this.f8161f = cVar;
    }

    /* renamed from: e */
    public Map<String, String> m31017e() {
        HashMap hashMap = new HashMap();
        hashMap.put("sdk_version", AppLovinSdk.VERSION);
        hashMap.put("build", String.valueOf(131));
        if (!((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8586P3)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f8916a.m30269b0());
        }
        C2345m.C2348c c = this.f8916a.m30246m().m30223c();
        hashMap.put("package_name", C2422o.m29847e(c.f9093c));
        hashMap.put("app_version", C2422o.m29847e(c.f9092b));
        hashMap.put("platform", "android");
        hashMap.put("os", C2422o.m29847e(Build.VERSION.RELEASE));
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2127a aVar = new C2127a(C2360b.m30174a(this.f8916a).mo30102a(C2167b.m30811i(this.f8916a)).mo30091c(C2167b.m30810j(this.f8916a)).mo30101a(m31017e()).mo30095b("GET").mo30103a((C2360b.C2361a) new JSONObject()).mo30097b(((Long) this.f8916a.m30291a(C2251d.C2255d.f8506z4)).intValue()).mo30106a(), this.f8916a, m30485d());
        aVar.m30469a(C2251d.C2255d.f8502v4);
        aVar.m30465b(C2251d.C2255d.f8503w4);
        this.f8916a.m30249j().m18827a(aVar);
    }
}
