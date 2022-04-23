package p131c.p161d.p282e.p289l.p290d.p291f;

import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p292g.AbstractC5207a;
import p131c.p161d.p282e.p289l.p290d.p292g.AbstractC5208b;
/* renamed from: c.d.e.l.d.f.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/f/d.class */
public class C5204d implements AbstractC5202b, AbstractC5208b {

    /* renamed from: a */
    public AbstractC5207a f17881a;

    /* renamed from: b */
    public static String m24280b(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p292g.AbstractC5208b
    /* renamed from: a */
    public void mo24278a(AbstractC5207a aVar) {
        this.f17881a = aVar;
        C5192b.m24319a().m24317a("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p291f.AbstractC5202b
    /* renamed from: a */
    public void mo24281a(String str, Bundle bundle) {
        AbstractC5207a aVar = this.f17881a;
        if (aVar != null) {
            try {
                aVar.mo24121a("$A$:" + m24280b(str, bundle));
            } catch (JSONException e) {
                C5192b.m24319a().m24311d("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }
}
