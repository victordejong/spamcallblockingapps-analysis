package gogolook.callgogolook2.intro;

import android.app.Activity;
import android.os.Bundle;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p596x.C14376j;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/DrawOverAppPermissionMediumActivity.class */
public class DrawOverAppPermissionMediumActivity extends Activity {

    /* renamed from: a */
    public boolean f10832a = false;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        C13878a3.m3213f(this);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (!this.f10832a) {
            this.f10832a = true;
        } else if (C14217x3.m2107z() || C13915b3.m3062a("has_started_iap_promo_activity", false)) {
            finish();
        } else {
            C14376j.f32194b = true;
            C14376j.m1453b(this, true);
            finish();
        }
    }
}
