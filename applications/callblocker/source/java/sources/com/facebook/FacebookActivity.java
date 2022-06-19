package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.AbstractC0670i;
import androidx.fragment.app.ActivityC0664d;
import androidx.fragment.app.Fragment;
import com.facebook.common.C1974a;
import com.facebook.internal.C2029f;
import com.facebook.internal.C2064s;
import com.facebook.internal.C2079x;
import com.facebook.login.C2150k;
import com.facebook.p105c.p106a.C1944a;
import com.facebook.p105c.p107b.AbstractC1955a;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookActivity.class */
public class FacebookActivity extends ActivityC0664d {

    /* renamed from: k */
    public static String f5472k = "PassThrough";

    /* renamed from: l */
    private static String f5473l = "SingleFragment";

    /* renamed from: m */
    private static final String f5474m = FacebookActivity.class.getName();

    /* renamed from: n */
    private Fragment f5475n;

    /* renamed from: i */
    private void m16263i() {
        setResult(0, C2064s.m15534a(getIntent(), (Bundle) null, C2064s.m15533a(C2064s.m15520c(getIntent()))));
        finish();
    }

    /* renamed from: f */
    protected Fragment m16265f() {
        Intent intent = getIntent();
        AbstractC0670i m = m19874m();
        Fragment mo19772a = m.mo19772a(f5473l);
        C2029f c2029f = mo19772a;
        if (mo19772a == null) {
            if ("FacebookDialogFragment".equals(intent.getAction())) {
                C2029f c2029f2 = new C2029f();
                c2029f2.m19950c(true);
                c2029f2.mo13906a(m, f5473l);
                c2029f = c2029f2;
            } else if ("DeviceShareDialogFragment".equals(intent.getAction())) {
                C1944a c1944a = new C1944a();
                c1944a.m19950c(true);
                c1944a.m15790a((AbstractC1955a) intent.getParcelableExtra("content"));
                c1944a.mo13906a(m, f5473l);
                c2029f = c1944a;
            } else {
                C2150k c2150k = new C2150k();
                c2150k.m19950c(true);
                m.mo19803a().m19663a(C1974a.C1977c.com_facebook_fragment_container, c2150k, f5473l).mo19657b();
                c2029f = c2150k;
            }
        }
        return c2029f;
    }

    /* renamed from: h */
    public Fragment m16264h() {
        return this.f5475n;
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f5475n != null) {
            this.f5475n.onConfigurationChanged(configuration);
        }
    }

    @Override // androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!C2095j.m15374a()) {
            C2079x.m15449b(f5474m, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application's onCreate method.");
            C2095j.m15373a(getApplicationContext());
        }
        setContentView(C1974a.C1978d.com_facebook_activity_layout);
        if (f5472k.equals(intent.getAction())) {
            m16263i();
        } else {
            this.f5475n = m16265f();
        }
    }
}
