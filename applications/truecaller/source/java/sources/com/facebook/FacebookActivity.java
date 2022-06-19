package com.facebook;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.facebook.common.C1107R;
import com.facebook.internal.C1146l0;
import com.facebook.internal.C1227w;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.facebook.internal.p042v0.p043a.AbstractC1226a;
import com.facebook.login.C1280t;
import com.razorpay.AnalyticsConstants;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import kotlin.Metadata;
import n3.r.a.l;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23226e0;
import p193e.p1538j.C23228f0;
import s1.f0.r;
@Metadata(d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018�� \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J7\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0011H\u0017¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0004H\u0014J\b\u0010\u0014\u001a\u00020\tH\u0002J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001c"}, d2 = {"Lcom/facebook/FacebookActivity;", "Landroidx/fragment/app/FragmentActivity;", "()V", "<set-?>", "Landroidx/fragment/app/Fragment;", "currentFragment", "getCurrentFragment", "()Landroidx/fragment/app/Fragment;", "dump", "", "prefix", "", "fd", "Ljava/io/FileDescriptor;", "writer", "Ljava/io/PrintWriter;", "args", "", "(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V", "getFragment", "handlePassThroughError", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/FacebookActivity.class */
public class FacebookActivity extends l {

    /* renamed from: b */
    public static final String f2525b;

    /* renamed from: a */
    public Fragment f2526a;

    static {
        String name = FacebookActivity.class.getName();
        s1.z.c.l.d(name, "FacebookActivity::class.java.name");
        f2525b = name;
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            s1.z.c.l.e(str, "prefix");
            s1.z.c.l.e(printWriter, "writer");
            int i = AbstractC1226a.f3308a;
            if (s1.z.c.l.a((Object) null, Boolean.TRUE)) {
                return;
            }
            FacebookActivity.super.dump(str, fileDescriptor, printWriter, strArr);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        s1.z.c.l.e(configuration, "newConfig");
        FacebookActivity.super.onConfigurationChanged(configuration);
        Fragment fragment = this.f2526a;
        if (fragment == null) {
            return;
        }
        fragment.onConfigurationChanged(configuration);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C23226e0 c23226e0;
        FacebookActivity.super.onCreate(bundle);
        Intent intent = getIntent();
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (!C23228f0.m7345j()) {
            boolean z = C23228f0.f64299i;
            Context applicationContext = getApplicationContext();
            s1.z.c.l.d(applicationContext, "applicationContext");
            C23228f0.m7342m(applicationContext);
        }
        setContentView(C1107R.layout.com_facebook_activity_layout);
        if (!s1.z.c.l.a("PassThrough", intent.getAction())) {
            Intent intent2 = getIntent();
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            s1.z.c.l.d(supportFragmentManager, "supportFragmentManager");
            Fragment m42942K = supportFragmentManager.m42942K("SingleFragment");
            Fragment fragment = m42942K;
            if (m42942K == null) {
                if (s1.z.c.l.a("FacebookDialogFragment", intent2.getAction())) {
                    fragment = new C1227w();
                    fragment.setRetainInstance(true);
                    fragment.show(supportFragmentManager, "SingleFragment");
                } else {
                    fragment = new C1280t();
                    fragment.setRetainInstance(true);
                    C26907a c26907a = new C26907a(supportFragmentManager);
                    c26907a.mo1122k(C1107R.C1109id.com_facebook_fragment_container, fragment, "SingleFragment", 1);
                    c26907a.mo1127f();
                }
            }
            this.f2526a = fragment;
            return;
        }
        Intent intent3 = getIntent();
        C1146l0 c1146l0 = C1146l0.f3146a;
        s1.z.c.l.d(intent3, "requestIntent");
        Bundle m41718i = C1146l0.m41718i(intent3);
        if (!C1220a.m41623b(C1146l0.class) && m41718i != null) {
            try {
                String string = m41718i.getString("error_type");
                String str = string;
                if (string == null) {
                    str = m41718i.getString("com.facebook.platform.status.ERROR_TYPE");
                }
                String string2 = m41718i.getString(AnalyticsConstants.ERROR_DESCRIPTION);
                String str2 = string2;
                if (string2 == null) {
                    str2 = m41718i.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
                }
                c23226e0 = (str == null || !r.n(str, "UserCanceled", true)) ? new C23222c0(str2) : new C23226e0(str2);
            } catch (Throwable th) {
                C1220a.m41624a(th, C1146l0.class);
            }
            C1146l0 c1146l02 = C1146l0.f3146a;
            Intent intent4 = getIntent();
            s1.z.c.l.d(intent4, "intent");
            setResult(0, C1146l0.m41722e(intent4, null, c23226e0));
            finish();
        }
        c23226e0 = null;
        C1146l0 c1146l022 = C1146l0.f3146a;
        Intent intent42 = getIntent();
        s1.z.c.l.d(intent42, "intent");
        setResult(0, C1146l0.m41722e(intent42, null, c23226e0));
        finish();
    }
}
