package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.facebook.common.a;
import com.facebook.internal.ae;
import com.facebook.internal.g;
import com.facebook.internal.z;
import com.facebook.login.e;
import com.facebook.referrals.b;
import com.facebook.share.internal.DeviceShareDialogFragment;
import com.facebook.share.model.ShareContent;
import com.mopub.common.Constants;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookActivity.class */
public class FacebookActivity extends FragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    public static String f19352a = "PassThrough";

    /* renamed from: c  reason: collision with root package name */
    private static String f19353c = "SingleFragment";

    /* renamed from: d  reason: collision with root package name */
    private static final String f19354d = "com.facebook.FacebookActivity";

    /* renamed from: b  reason: collision with root package name */
    public Fragment f19355b;

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
        Fragment fragment = this.f19355b;
        if (fragment != null) {
            fragment.onConfigurationChanged(configuration);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!g.a()) {
            ae.a();
            g.a(getApplicationContext());
        }
        setContentView(a.e.com_facebook_activity_layout);
        if (f19352a.equals(intent.getAction())) {
            setResult(0, z.a(getIntent(), (Bundle) null, z.a(z.b(getIntent()))));
            finish();
            return;
        }
        Intent intent2 = getIntent();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment a2 = supportFragmentManager.a(f19353c);
        g gVar = a2;
        if (a2 == null) {
            if ("FacebookDialogFragment".equals(intent2.getAction())) {
                g gVar2 = new g();
                gVar2.setRetainInstance(true);
                gVar2.a(supportFragmentManager, f19353c);
                gVar = gVar2;
            } else if ("DeviceShareDialogFragment".equals(intent2.getAction())) {
                DeviceShareDialogFragment deviceShareDialogFragment = new DeviceShareDialogFragment();
                deviceShareDialogFragment.setRetainInstance(true);
                deviceShareDialogFragment.f20163c = (ShareContent) intent2.getParcelableExtra(Constants.VAST_TRACKER_CONTENT);
                deviceShareDialogFragment.a(supportFragmentManager, f19353c);
                gVar = deviceShareDialogFragment;
            } else if ("ReferralFragment".equals(intent2.getAction())) {
                b bVar = new b();
                bVar.setRetainInstance(true);
                supportFragmentManager.a().a(a.d.com_facebook_fragment_container, bVar, f19353c).b();
                gVar = bVar;
            } else {
                e eVar = new e();
                eVar.setRetainInstance(true);
                supportFragmentManager.a().a(a.d.com_facebook_fragment_container, eVar, f19353c).b();
                gVar = eVar;
            }
        }
        this.f19355b = gVar;
    }
}
