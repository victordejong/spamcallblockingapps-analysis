package com.facebook.login;

import android.app.AlertDialog;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.C1107R;
import com.facebook.internal.C1127d0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.EnumC1163p0;
import com.razorpay.AnalyticsConstants;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23244l0;
import p193e.p1538j.p1539w0.p1540a.C23274a;
/* renamed from: com.facebook.login.n */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/n.class */
public class C1275n implements GraphRequest.AbstractC0922b {

    /* renamed from: a */
    public final /* synthetic */ String f3464a;

    /* renamed from: b */
    public final /* synthetic */ Date f3465b;

    /* renamed from: c */
    public final /* synthetic */ Date f3466c;

    /* renamed from: d */
    public final /* synthetic */ DeviceAuthDialog f3467d;

    public C1275n(DeviceAuthDialog deviceAuthDialog, String str, Date date, Date date2) {
        this.f3467d = deviceAuthDialog;
        this.f3464a = str;
        this.f3465b = date;
        this.f3466c = date2;
    }

    @Override // com.facebook.GraphRequest.AbstractC0922b
    /* renamed from: a */
    public void mo7325a(C23244l0 c23244l0) {
        if (this.f3467d.f3342e.get()) {
            return;
        }
        FacebookRequestError facebookRequestError = c23244l0.f64335e;
        if (facebookRequestError != null) {
            this.f3467d.m41605RA(facebookRequestError.f2537i);
            return;
        }
        try {
            JSONObject jSONObject = c23244l0.f64333c;
            String string = jSONObject.getString("id");
            C1168q0.C1170b m41660w = C1168q0.m41660w(jSONObject);
            String string2 = jSONObject.getString(AnalyticsConstants.NAME);
            C23274a.m7299a(this.f3467d.f3345h.f3350b);
            if (C1127d0.m41742b(C23228f0.m7353b()).f3093c.contains(EnumC1163p0.RequireConfirm)) {
                DeviceAuthDialog deviceAuthDialog = this.f3467d;
                if (!deviceAuthDialog.f3347j) {
                    deviceAuthDialog.f3347j = true;
                    String str = this.f3464a;
                    Date date = this.f3465b;
                    Date date2 = this.f3466c;
                    String string3 = deviceAuthDialog.getResources().getString(C1107R.string.com_facebook_smart_login_confirmation_title);
                    String string4 = deviceAuthDialog.getResources().getString(C1107R.string.com_facebook_smart_login_confirmation_continue_as);
                    String string5 = deviceAuthDialog.getResources().getString(C1107R.string.com_facebook_smart_login_confirmation_cancel);
                    String format = String.format(string4, string2);
                    AlertDialog.Builder builder = new AlertDialog.Builder(deviceAuthDialog.getContext());
                    builder.setMessage(string3).setCancelable(true).setNegativeButton(format, new DialogInterface$OnClickListenerC1274m(deviceAuthDialog, string, m41660w, str, date, date2)).setPositiveButton(string5, new DialogInterface$OnClickListenerC1273l(deviceAuthDialog));
                    builder.create().show();
                    return;
                }
            }
            DeviceAuthDialog.m41607PA(this.f3467d, string, m41660w, this.f3464a, this.f3465b, this.f3466c);
        } catch (JSONException e) {
            this.f3467d.m41605RA(new C23222c0(e));
        }
    }
}
