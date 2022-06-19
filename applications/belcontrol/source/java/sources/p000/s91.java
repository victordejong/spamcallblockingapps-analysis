package p000;

import android.annotation.TargetApi;
import android.content.Intent;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.google.android.gms.common.Scopes;
import java.util.Arrays;
import ni0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: s91 */
/* loaded from: classes3-dex2jar.jar:s91.class */
public class s91 extends v91 implements pi0<xn0> {

    /* renamed from: f */
    public ni0 f8094f;

    /* renamed from: s91$a */
    /* loaded from: classes3-dex2jar.jar:s91$a.class */
    public class C1650a implements GraphRequest.AbstractC0343e {
        public C1650a() {
            s91.this = r4;
        }

        @Override // com.facebook.GraphRequest.AbstractC0343e
        /* renamed from: b */
        public void mo604b(aj0 aj0Var) {
            JSONObject jSONObject;
            if (aj0Var == null || aj0Var.m7096g() != null) {
                s91 s91Var = s91.this;
                s91Var.f8354c.mo344b(s91Var, true);
                return;
            }
            try {
                JSONArray jSONArray = aj0Var.m7095h().getJSONArray("data");
                s91.this.f8352a = new String[jSONArray.length()];
                int length = s91.this.f8352a.length;
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i).getJSONObject("app");
                    s91.this.f8352a[i] = jSONObject.getString("id") + "_" + jSONObject2.getString("id");
                }
                s91 s91Var2 = s91.this;
                s91Var2.f8354c.mo345a(s91Var2);
            } catch (JSONException e) {
                e.printStackTrace();
                s91 s91Var3 = s91.this;
                s91Var3.f8354c.mo344b(s91Var3, true);
            }
        }
    }

    /* renamed from: a */
    public void m608a() {
        this.f8354c.mo344b(this, false);
    }

    /* renamed from: b */
    public void m607b(ri0 ri0Var) {
        if ((ri0Var instanceof oi0) && AccessToken.m5251g() != null) {
            wn0.e().n();
        }
        this.f8354c.mo344b(this, true);
    }

    @Override // p000.v91
    /* renamed from: d */
    public String mo358d() {
        return AccessToken.m5251g().m5241q();
    }

    @Override // p000.v91
    /* renamed from: h */
    public void mo354h(int i, int i2, Intent intent) {
        m606o().onActivityResult(i, i2, intent);
    }

    @Override // p000.v91
    /* renamed from: i */
    public void mo353i() {
        ui0.F(false);
        this.f8094f = ni0.a.a();
        wn0.e().r(this.f8094f, this);
    }

    @Override // p000.v91
    /* renamed from: l */
    public void mo350l() {
        wn0.e().m(this.f8353b, Arrays.asList("public_profile", Scopes.EMAIL));
    }

    @Override // p000.v91
    /* renamed from: m */
    public void mo349m() {
        if (AccessToken.m5251g() != null) {
            wn0.e().n();
        }
        this.f8354c.mo342d(this);
    }

    @TargetApi(15)
    /* renamed from: o */
    public ni0 m606o() {
        if (this.f8094f == null) {
            this.f8094f = ni0.a.a();
        }
        return this.f8094f;
    }

    /* renamed from: p */
    public void onSuccess(xn0 xn0Var) {
        String str = "facebook callback success " + xn0Var.toString();
        new GraphRequest(xn0Var.a(), "/me/ids_for_business", null, bj0.GET, new C1650a()).m5160i();
    }
}
