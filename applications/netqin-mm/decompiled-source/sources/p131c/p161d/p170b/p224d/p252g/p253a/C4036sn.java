package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzaly;
import com.google.android.gms.internal.ads.zzcrj;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: c.d.b.d.g.a.sn */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/sn.class */
public final class C4036sn implements zzaly<zzcrj> {
    @Override // com.google.android.gms.internal.ads.zzaly
    /* renamed from: b */
    public final /* synthetic */ JSONObject mo15308b(zzcrj zzcrjVar) throws JSONException {
        zzcrj zzcrjVar2 = zzcrjVar;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        jSONObject2.put("base_url", zzcrjVar2.f26417c.m16372d());
        jSONObject2.put("signals", zzcrjVar2.f26416b);
        jSONObject3.put("body", zzcrjVar2.f26415a.f26437c);
        jSONObject3.put("headers", zzp.m17969c().m16118a(zzcrjVar2.f26415a.f26436b));
        jSONObject3.put("response_code", zzcrjVar2.f26415a.f26435a);
        jSONObject3.put("latency", zzcrjVar2.f26415a.f26438d);
        jSONObject.put("request", jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", zzcrjVar2.f26417c.m16369g());
        return jSONObject;
    }
}
