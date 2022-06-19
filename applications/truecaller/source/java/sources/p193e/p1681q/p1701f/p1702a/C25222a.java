package p193e.p1681q.p1701f.p1702a;

import com.tenor.android.core.constant.StringConstant;
import e.q.f.a.c.c;
import e.q.f.a.f.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1681q.p1701f.p1702a.p1705e.p1709e.C25238a;
import p193e.p1681q.p1701f.p1702a.p1713g.C25261e;
/* renamed from: e.q.f.a.a */
/* loaded from: classes16-dex2jar.jar:e/q/f/a/a.class */
public class C25222a {

    /* renamed from: a */
    public C25223b f70515a;

    /* renamed from: b */
    public String f70516b;

    public C25222a(e eVar) {
        try {
            C25223b c25223b = new C25223b();
            this.f70515a = c25223b;
            c25223b.f70520d = new JSONObject(eVar.n());
            this.f70515a.m4041k();
            this.f70515a.m4048d();
            this.f70515a.f70517a = new C25238a(this.f70515a.m4047e());
            C25223b c25223b2 = this.f70515a;
            JSONObject jSONObject = new JSONObject(eVar.j());
            Objects.requireNonNull(c25223b2);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONArray jSONArray = (JSONArray) jSONObject.get(next);
                for (int i = 0; i < jSONArray.length(); i++) {
                    c25223b2.m4050b(next, jSONArray.getString(i).toUpperCase(), c25223b2.f70521e, null, null);
                }
            }
            C25223b c25223b3 = this.f70515a;
            JSONArray jSONArray2 = new JSONArray(eVar.v());
            Objects.requireNonNull(c25223b3);
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                c25223b3.m4050b("LOCATION", jSONArray2.getString(i2), c25223b3.f70522f, jSONArray2.getString(i2), "loc");
            }
            C25223b c25223b4 = this.f70515a;
            JSONObject jSONObject2 = new JSONObject(eVar.t());
            Objects.requireNonNull(c25223b4);
            Iterator<String> keys2 = jSONObject2.keys();
            while (keys2.hasNext()) {
                String next2 = keys2.next();
                c25223b4.m4050b("AIRPORT", jSONObject2.getString(next2), c25223b4.f70522f, next2, "loc");
            }
            C25223b c25223b5 = this.f70515a;
            JSONObject jSONObject3 = new JSONObject(eVar.l());
            Objects.requireNonNull(c25223b5);
            Iterator<String> keys3 = jSONObject3.keys();
            while (keys3.hasNext()) {
                String next3 = keys3.next();
                JSONArray jSONArray3 = (JSONArray) jSONObject3.get(next3);
                for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                    c25223b5.m4050b(next3, jSONArray3.getString(i3), c25223b5.f70523g, null, null);
                }
            }
            this.f70516b = eVar.i();
            this.f70515a.m4046f(new JSONObject(this.f70516b));
            this.f70515a.m4042j(new JSONObject(eVar.c()));
            C25223b c25223b6 = this.f70515a;
            JSONObject jSONObject4 = new JSONObject(eVar.k());
            Objects.requireNonNull(c25223b6);
            JSONArray jSONArray4 = jSONObject4.getJSONArray("handles");
            for (int i4 = 0; i4 < jSONArray4.length(); i4++) {
                String string = jSONArray4.getString(i4);
                c25223b6.m4050b(string, string, c25223b6.f70528l, null, null);
            }
            this.f70515a.m4045g();
            C25223b c25223b7 = this.f70515a;
            HashMap<String, c> hashMap = c25223b7.f70526j;
            Objects.requireNonNull(c25223b7);
            JSONArray jSONArray5 = hashMap.get("GRM_DELIVERY").f;
            if (jSONArray5 == null) {
                return;
            }
            int i5 = 0;
            int i6 = 0;
            while (true) {
                if (i5 >= jSONArray5.length()) {
                    return;
                }
                try {
                    String[] split = jSONArray5.getString(i5).split(StringConstant.SPACE);
                    c25223b7.f70530n.add(split);
                    c25223b7.m4049c(split[0], i6);
                    i6++;
                } catch (JSONException e) {
                    C25261e.m3753a(e);
                }
                i5++;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            try {
                eVar.m();
            } catch (Exception e3) {
                C25261e.m3753a(e3);
            }
        }
    }
}
