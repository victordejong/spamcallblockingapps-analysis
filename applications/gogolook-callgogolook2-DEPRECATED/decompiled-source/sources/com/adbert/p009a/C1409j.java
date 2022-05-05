package com.adbert.p009a;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.adbert.p009a.p011b.C1377b;
import com.adbert.p009a.p012c.EnumC1389i;
import com.criteo.sync.sdk.customtabs.CustomTabsHelper;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.adbert.a.j */
/* loaded from: classes-dex2jar.jar:com/adbert/a/j.class */
public class C1409j {

    /* renamed from: a */
    public Context f673a;

    /* renamed from: com.adbert.a.j$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/a/j$a.class */
    public interface AbstractC1410a {
        void open(String str);
    }

    public C1409j(Context context) {
        this.f673a = context;
    }

    /* renamed from: a */
    public static ComponentName m37108a(ResolveInfo resolveInfo) {
        return new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
    }

    /* renamed from: a */
    public static C1409j m37112a(Context context) {
        return new C1409j(context);
    }

    /* renamed from: a */
    private String m37109a(Context context, String str, String str2) {
        if (!str.startsWith("http://www.facebook.com") && !str.startsWith("https://www.facebook.com")) {
            return str;
        }
        try {
        } catch (PackageManager.NameNotFoundException e) {
            C1402g.m37141a(e);
        }
        if (context.getPackageManager().getPackageInfo("com.facebook.katana", 0).versionCode >= 3002850) {
            return "fb://facewebmodal/f?href=" + URLEncoder.encode(str);
        }
        if (!str2.isEmpty()) {
            return "fb://page/" + str2;
        }
        return str;
    }

    /* renamed from: a */
    private String m37106a(String str) {
        return Uri.parse(str).getQueryParameter("id");
    }

    /* renamed from: a */
    private void m37111a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Exception e) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    /* renamed from: a */
    private void m37110a(Context context, String str) {
        if (!str.startsWith("http://play.google.com/store/apps/details?id=")) {
            if (!str.startsWith("https://play.google.com/store/apps/details?id=")) {
                m37104b(context, str);
                return;
            }
        }
        String a = m37106a(str);
        try {
            m37111a(context, new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + a)));
        } catch (ActivityNotFoundException e) {
            m37104b(context, str);
        }
    }

    /* renamed from: b */
    private void m37104b(Context context, String str) {
        try {
            Intent intent = new Intent();
            intent.setComponent(m37103c(context));
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            m37111a(context, intent);
        } catch (Exception e) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent2.setPackage(CustomTabsHelper.STABLE_PACKAGE);
            try {
                m37111a(context, intent2);
            } catch (ActivityNotFoundException e2) {
                intent2.setPackage(null);
                m37111a(context, intent2);
            }
        }
    }

    /* renamed from: b */
    public static boolean m37105b(Context context) {
        boolean z = false;
        Iterator<ApplicationInfo> it = context.getPackageManager().getInstalledApplications(0).iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().packageName.equals("jp.naver.line.android")) {
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        return z;
    }

    /* renamed from: c */
    private ComponentName m37103c(Context context) {
        Intent data = new Intent().setAction("android.intent.action.VIEW").setData(new Uri.Builder().scheme("http").authority("x.y.z").appendQueryParameter("q", "x").build());
        PackageManager packageManager = context.getPackageManager();
        ResolveInfo resolveActivity = packageManager.resolveActivity(data, 0);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(data, 0);
        ResolveInfo resolveInfo = null;
        for (ResolveInfo resolveInfo2 : queryIntentActivities) {
            if (resolveInfo2.activityInfo.packageName.equals(resolveActivity.activityInfo.packageName) && resolveInfo2.activityInfo.name.equals(resolveActivity.activityInfo.name)) {
                return m37108a(resolveActivity);
            }
            if ("com.android.browser".equals(resolveInfo2.activityInfo.packageName)) {
                resolveInfo = resolveInfo2;
            }
        }
        if (resolveInfo != null) {
            return m37108a(resolveInfo);
        }
        if (queryIntentActivities.size() > 0) {
            return m37108a(queryIntentActivities.get(0));
        }
        if (resolveActivity == null) {
            return null;
        }
        return m37108a(resolveActivity);
    }

    /* renamed from: c */
    private void m37102c(Context context, String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setClassName("jp.naver.line.android", "jp.naver.line.android.activity.selectchat.SelectChatActivity");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", str);
        m37111a(context, intent);
    }

    /* renamed from: d */
    private void m37101d(Context context, String str) {
        try {
            m37111a(context, new Intent("android.intent.action.CALL", Uri.parse(PhoneNumberUtil.RFC3966_PREFIX + str)));
        } catch (Exception e) {
            C1402g.m37141a(e);
        }
    }

    /* renamed from: a */
    public void m37107a(C1377b bVar, int i, AbstractC1410a aVar) {
        EnumC1389i b = EnumC1389i.init.m37180b(i);
        String str = bVar.f415j[i];
        C1402g.m37134b("" + str);
        if (b == EnumC1389i.download) {
            m37110a(this.f673a, str);
        } else if (b == EnumC1389i.url) {
            if (!bVar.f416k || aVar == null) {
                m37104b(this.f673a, str);
            } else {
                aVar.open(str);
            }
        } else if (b == EnumC1389i.phone) {
            m37101d(this.f673a, str);
        } else if (b == EnumC1389i.fb) {
            String a = m37109a(this.f673a, str, bVar.f402D);
            if (a.startsWith("fb://")) {
                m37111a(this.f673a, new Intent("android.intent.action.VIEW", Uri.parse(a)));
                return;
            }
            m37104b(this.f673a, a);
        } else if (b == EnumC1389i.line) {
            m37102c(this.f673a, str);
        }
    }
}
