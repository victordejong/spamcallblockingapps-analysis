package com.facebook.login;

import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.login.LoginClient;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23244l0;
import p193e.p1538j.p1539w0.p1540a.C23274a;
/* renamed from: com.facebook.login.k */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/k.class */
public class C1272k implements GraphRequest.AbstractC0922b {

    /* renamed from: a */
    public final /* synthetic */ DeviceAuthDialog f3456a;

    public C1272k(DeviceAuthDialog deviceAuthDialog) {
        this.f3456a = deviceAuthDialog;
    }

    @Override // com.facebook.GraphRequest.AbstractC0922b
    /* renamed from: a */
    public void mo7325a(C23244l0 c23244l0) {
        if (this.f3456a.f3342e.get()) {
            return;
        }
        FacebookRequestError facebookRequestError = c23244l0.f64335e;
        if (facebookRequestError == null) {
            try {
                JSONObject jSONObject = c23244l0.f64333c;
                DeviceAuthDialog.m41608OA(this.f3456a, jSONObject.getString("access_token"), Long.valueOf(jSONObject.getLong("expires_in")), Long.valueOf(jSONObject.optLong("data_access_expiration_time")));
                return;
            } catch (JSONException e) {
                this.f3456a.m41605RA(new C23222c0(e));
                return;
            }
        }
        int i = facebookRequestError.f2531c;
        if (i != 1349152) {
            switch (i) {
                case 1349172:
                case 1349174:
                    this.f3456a.m41603TA();
                    return;
                case 1349173:
                    this.f3456a.m41600f0();
                    return;
                default:
                    this.f3456a.m41605RA(facebookRequestError.f2537i);
                    return;
            }
        }
        if (this.f3456a.f3345h != null) {
            C23274a.m7299a(this.f3456a.f3345h.f3350b);
        }
        DeviceAuthDialog deviceAuthDialog = this.f3456a;
        LoginClient.Request request = deviceAuthDialog.f3348k;
        if (request != null) {
            deviceAuthDialog.m41601VA(request);
        } else {
            deviceAuthDialog.m41600f0();
        }
    }
}
