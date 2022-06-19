package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.facebook.common.C10165a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10282g;
import com.facebook.internal.C10340z;
import com.facebook.login.C10383e;
import com.facebook.referrals.C10432b;
import com.facebook.share.internal.DeviceShareDialogFragment;
import com.facebook.share.model.ShareContent;
import com.mopub.common.Constants;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookActivity.class */
public class FacebookActivity extends FragmentActivity {

    /* renamed from: a */
    public static String f33049a = "PassThrough";

    /* renamed from: c */
    private static String f33050c = "SingleFragment";

    /* renamed from: d */
    private static final String f33051d = "com.facebook.FacebookActivity";

    /* renamed from: b */
    public Fragment f33052b;

    /* JADX WARN: Removed duplicated region for block: B:48:0x0156 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0157 A[Catch: all -> 0x014a, TRY_ENTER, TryCatch #0 {all -> 0x014a, blocks: (B:7:0x000d, B:9:0x0013, B:11:0x001f, B:13:0x0025, B:14:0x0034, B:15:0x0037, B:17:0x006a, B:19:0x0077, B:22:0x0084, B:24:0x008c, B:26:0x0097, B:28:0x009f, B:34:0x00c0, B:36:0x00d5, B:37:0x00d8, B:39:0x0116, B:41:0x0124, B:49:0x0157), top: B:53:0x000d, inners: #1 }] */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dump(java.lang.String r10, java.io.FileDescriptor r11, java.io.PrintWriter r12, java.lang.String[] r13) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.FacebookActivity.dump(java.lang.String, java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Fragment fragment = this.f33052b;
        if (fragment != null) {
            fragment.onConfigurationChanged(configuration);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!C10181g.m23306a()) {
            C10213ae.m23250a();
            C10181g.m23305a(getApplicationContext());
        }
        setContentView(C10165a.C10170e.com_facebook_activity_layout);
        if (f33049a.equals(intent.getAction())) {
            setResult(0, C10340z.m22966a(getIntent(), (Bundle) null, C10340z.m22965a(C10340z.m22954b(getIntent()))));
            finish();
            return;
        }
        Intent intent2 = getIntent();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment m43740a = supportFragmentManager.m43740a(f33050c);
        C10282g c10282g = m43740a;
        if (m43740a == null) {
            if ("FacebookDialogFragment".equals(intent2.getAction())) {
                C10282g c10282g2 = new C10282g();
                c10282g2.setRetainInstance(true);
                c10282g2.mo19242a(supportFragmentManager, f33050c);
                c10282g = c10282g2;
            } else if ("DeviceShareDialogFragment".equals(intent2.getAction())) {
                DeviceShareDialogFragment deviceShareDialogFragment = new DeviceShareDialogFragment();
                deviceShareDialogFragment.setRetainInstance(true);
                deviceShareDialogFragment.f34137c = (ShareContent) intent2.getParcelableExtra(Constants.VAST_TRACKER_CONTENT);
                deviceShareDialogFragment.mo19242a(supportFragmentManager, f33050c);
                c10282g = deviceShareDialogFragment;
            } else if ("ReferralFragment".equals(intent2.getAction())) {
                C10432b c10432b = new C10432b();
                c10432b.setRetainInstance(true);
                supportFragmentManager.m43765a().m43541a(C10165a.C10169d.com_facebook_fragment_container, c10432b, f33050c).mo43536b();
                c10282g = c10432b;
            } else {
                C10383e c10383e = new C10383e();
                c10383e.setRetainInstance(true);
                supportFragmentManager.m43765a().m43541a(C10165a.C10169d.com_facebook_fragment_container, c10383e, f33050c).mo43536b();
                c10282g = c10383e;
            }
        }
        this.f33052b = c10282g;
    }
}
