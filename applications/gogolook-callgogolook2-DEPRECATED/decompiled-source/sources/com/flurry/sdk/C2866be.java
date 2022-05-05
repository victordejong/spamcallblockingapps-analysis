package com.flurry.sdk;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.core.app.ActivityCompat;
import com.criteo.sync.sdk.customtabs.CustomTabsHelper;
import com.flurry.android.FlurryAdSettings;
import com.flurry.android.FlurryCustomTabsServiceConnection;
import com.flurry.android.FlurryCustomTabsSetting;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flurry.sdk.be */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/be.class */
public final class C2866be implements AbstractC2871bf {

    /* renamed from: c */
    public static final String f4164c = "be";

    /* renamed from: d */
    public static String f4165d;

    /* renamed from: e */
    public static Boolean f4166e;

    /* renamed from: a */
    public AbstractC2868a f4167a;

    /* renamed from: b */
    public AbstractC2870c f4168b;

    /* renamed from: f */
    public CustomTabsClient f4169f;

    /* renamed from: g */
    public CustomTabsSession f4170g;

    /* renamed from: h */
    public CustomTabsServiceConnection f4171h;

    /* renamed from: com.flurry.sdk.be$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/be$a.class */
    public interface AbstractC2868a {
        /* renamed from: a */
        void mo33482a();

        /* renamed from: b */
        void mo33481b();
    }

    /* renamed from: com.flurry.sdk.be$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/be$b.class */
    public interface AbstractC2869b {
        /* renamed from: a */
        void mo33480a();
    }

    /* renamed from: com.flurry.sdk.be$c */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/be$c.class */
    public interface AbstractC2870c {
    }

    /* renamed from: a */
    public static boolean m33486a(Context context) {
        Boolean bool = f4166e;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = true;
        f4166e = true;
        try {
            Class.forName("androidx.browser.customtabs.CustomTabsClient");
        } catch (ClassNotFoundException e) {
            C3356jq.m32609b(f4164c, "Couldn't find Chrome Custom Tab dependency. For better user experience include Chrome Custom Tab dependency in gradle");
            f4166e = false;
        }
        if (!f4166e.booleanValue() || m33483b(context) == null) {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        f4166e = valueOf;
        return valueOf.booleanValue();
    }

    /* renamed from: a */
    public static boolean m33485a(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
            if (!(queryIntentActivities == null || queryIntentActivities.size() == 0)) {
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    IntentFilter intentFilter = resolveInfo.filter;
                    if (!(intentFilter == null || intentFilter.countDataAuthorities() == 0 || intentFilter.countDataPaths() == 0 || resolveInfo.activityInfo == null)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (RuntimeException e) {
            C3356jq.m32612a(f4164c, "Error in getting a specialized handler", e);
            return false;
        }
    }

    /* renamed from: b */
    public static String m33483b(Context context) {
        String str = f4165d;
        if (str != null) {
            return str;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        String str2 = resolveActivity != null ? resolveActivity.activityInfo.packageName : null;
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            Intent intent2 = new Intent();
            intent2.setAction("android.support.customtabs.action.CustomTabsService");
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) != null) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        if (arrayList.isEmpty()) {
            f4165d = null;
        } else if (arrayList.size() == 1) {
            f4165d = (String) arrayList.get(0);
        } else if (!TextUtils.isEmpty(str2) && !m33485a(context, intent) && arrayList.contains(str2)) {
            f4165d = str2;
        } else if (arrayList.contains(CustomTabsHelper.STABLE_PACKAGE)) {
            f4165d = CustomTabsHelper.STABLE_PACKAGE;
        } else if (arrayList.contains(CustomTabsHelper.BETA_PACKAGE)) {
            f4165d = CustomTabsHelper.BETA_PACKAGE;
        } else if (arrayList.contains(CustomTabsHelper.DEV_PACKAGE)) {
            f4165d = CustomTabsHelper.DEV_PACKAGE;
        } else if (arrayList.contains(CustomTabsHelper.LOCAL_PACKAGE)) {
            f4165d = CustomTabsHelper.LOCAL_PACKAGE;
        }
        return f4165d;
    }

    @Override // com.flurry.sdk.AbstractC2871bf
    /* renamed from: a */
    public final void mo33479a() {
        this.f4169f = null;
        this.f4170g = null;
        AbstractC2868a aVar = this.f4167a;
        if (aVar != null) {
            aVar.mo33481b();
        }
    }

    /* renamed from: a */
    public final void m33488a(Activity activity) {
        if (this.f4169f != null) {
            AbstractC2868a aVar = this.f4167a;
            if (aVar != null) {
                aVar.mo33482a();
                return;
            }
            return;
        }
        Context applicationContext = activity.getApplicationContext();
        String b = m33483b(applicationContext);
        if (b != null) {
            this.f4171h = new FlurryCustomTabsServiceConnection(this);
            CustomTabsClient.bindCustomTabsService(applicationContext, b, this.f4171h);
        }
    }

    /* renamed from: a */
    public final void m33487a(Activity activity, Uri uri, AbstractC2869b bVar) {
        if (!m33486a((Context) activity)) {
            bVar.mo33480a();
            return;
        }
        CustomTabsClient customTabsClient = this.f4169f;
        if (customTabsClient == null) {
            this.f4170g = null;
        } else if (this.f4170g == null) {
            this.f4170g = customTabsClient.newSession(new CustomTabsCallback(this) { // from class: com.flurry.sdk.be.1
            });
        }
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder(this.f4170g);
        FlurryCustomTabsSetting customTabsSetting = FlurryAdSettings.getInstance().getCustomTabsSetting();
        if (customTabsSetting == null) {
            Intent intent = builder.build().intent;
            intent.setPackage(m33483b((Context) activity));
            intent.setData(uri);
            try {
                ActivityCompat.startActivityForResult(activity, intent, 100, null);
            } catch (ActivityNotFoundException e) {
                C3356jq.m32612a(f4164c, "Error launching Custom Tabs activity", e);
                bVar.mo33480a();
            }
        } else {
            customTabsSetting.getToolbarColor();
            throw null;
        }
    }

    @Override // com.flurry.sdk.AbstractC2871bf
    /* renamed from: a */
    public final void mo33478a(CustomTabsClient customTabsClient) {
        this.f4169f = customTabsClient;
        this.f4169f.warmup(0L);
        AbstractC2868a aVar = this.f4167a;
        if (aVar != null) {
            aVar.mo33482a();
        }
    }

    /* renamed from: b */
    public final void m33484b(Activity activity) {
        if (this.f4171h != null) {
            activity.getApplicationContext().unbindService(this.f4171h);
            this.f4169f = null;
            this.f4170g = null;
            this.f4171h = null;
        }
    }
}
