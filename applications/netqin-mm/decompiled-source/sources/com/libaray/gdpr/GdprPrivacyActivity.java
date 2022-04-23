package com.libaray.gdpr;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;
import p131c.p394h.p395a.AbstractC6482b;
import p131c.p394h.p395a.C6483c;
import p131c.p394h.p395a.C6485e;
import p131c.p394h.p395a.C6486f;
import p131c.p394h.p395a.C6487g;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:com/libaray/gdpr/GdprPrivacyActivity.class */
public final class GdprPrivacyActivity extends Activity {

    /* renamed from: a */
    public Intent f33130a;

    /* renamed from: com.libaray.gdpr.GdprPrivacyActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/libaray/gdpr/GdprPrivacyActivity$a.class */
    public static final class RunnableC8507a implements Runnable {
        public RunnableC8507a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            GdprPrivacyActivity.this.m5341a();
        }
    }

    /* renamed from: com.libaray.gdpr.GdprPrivacyActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/libaray/gdpr/GdprPrivacyActivity$b.class */
    public static final class View$OnClickListenerC8508b implements View.OnClickListener {
        public View$OnClickListenerC8508b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z;
            GdprHelper.f33128i.m5346b(true);
            AbstractC6482b b = GdprHelper.f33128i.m5348b();
            if (b != null) {
                GdprPrivacyActivity gdprPrivacyActivity = GdprPrivacyActivity.this;
                z = b.mo19690a(gdprPrivacyActivity, gdprPrivacyActivity.f33130a);
            } else {
                z = false;
            }
            if (!z) {
                GdprPrivacyActivity.this.startActivity(GdprHelper.f33128i.m5355a() == null ? GdprPrivacyActivity.this.f33130a : new Intent(GdprPrivacyActivity.this, GdprHelper.f33128i.m5355a()));
                GdprPrivacyActivity.this.finish();
            }
        }
    }

    /* renamed from: a */
    public final void m5341a() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        Object systemService = C6483c.m20729a().getSystemService("activity");
        Object obj = systemService;
        if (!(systemService instanceof ActivityManager)) {
            obj = null;
        }
        ActivityManager activityManager = (ActivityManager) obj;
        if (!(activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null)) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo != null && C10059q.m1643a((Object) runningAppProcessInfo.pkgList[0], (Object) getPackageName())) {
                    Process.killProcess(runningAppProcessInfo.pid);
                }
            }
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public void finish() {
        Window window;
        View decorView;
        if (!(GdprHelper.m5352a(null, 1, null) || (window = getWindow()) == null || (decorView = window.getDecorView()) == null)) {
            decorView.postDelayed(new RunnableC8507a(), 300L);
        }
        super.finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f33130a = (Intent) getIntent().getParcelableExtra("ORIGIN_INTENT");
        setContentView(C6486f.activity_gdpr);
        View findViewById = findViewById(C6485e.confirm);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View$OnClickListenerC8508b());
        }
        ImageView imageView = (ImageView) findViewById(C6485e.app_icon);
        if (imageView != null) {
            imageView.setImageDrawable(getApplicationInfo().loadIcon(getPackageManager()));
        }
        TextView textView = (TextView) findViewById(C6485e.app_name);
        if (textView != null) {
            textView.setText(getApplicationInfo().loadLabel(getPackageManager()));
        }
        TextView textView2 = (TextView) findViewById(C6485e.privacy_policy);
        if (textView2 != null) {
            String string = getString(C6487g.gdpr_agreement, new Object[]{"<br><a href=\"" + getString(C6487g.gdpr_privacy_policy_url) + "\">" + getString(C6487g.gdpr_privacy_policy) + "</a>"});
            textView2.setText(Build.VERSION.SDK_INT > 23 ? Html.fromHtml(string, 0) : Html.fromHtml(string));
            textView2.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }
}
