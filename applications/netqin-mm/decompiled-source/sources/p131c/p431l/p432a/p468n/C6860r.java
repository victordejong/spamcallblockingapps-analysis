package p131c.p431l.p432a.p468n;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;
import android.view.KeyCharacterMap;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import com.mopub.common.privacy.AdvertisingId;
import com.netqin.p525cm.main.p529ui.NqApplication;
import com.netqin.p525cm.utils.NQSPFManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import p131c.p431l.p432a.p459h.p460a.C6815b;
/* renamed from: c.l.a.n.r */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/r.class */
public class C6860r {

    /* renamed from: a */
    public static byte[] f21049a = new byte[256];

    /* renamed from: b */
    public static List<PackageInfo> f21050b;

    /* renamed from: c */
    public static Object f21051c;

    /* renamed from: c.l.a.n.r$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/n/r$a.class */
    public static final class RunnableC6861a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ long f21052a;

        /* renamed from: b */
        public final /* synthetic */ Context f21053b;

        public RunnableC6861a(long j, Context context) {
            this.f21052a = j;
            this.f21053b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f21052a - C6860r.m19544a(this.f21053b) > 259200000) {
                NQSPFManager.m3184a(this.f21053b).f35743b.m19567b((C6851j<NQSPFManager.EnumNetQin>) NQSPFManager.EnumNetQin.AdShowTime, this.f21052a);
            }
        }
    }

    static {
        for (int i = 0; i < 256; i++) {
            f21049a[i] = (byte) (-1);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            f21049a[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 97; i3 <= 122; i3++) {
            f21049a[i3] = (byte) ((i3 + 26) - 97);
        }
        for (int i4 = 48; i4 <= 57; i4++) {
            f21049a[i4] = (byte) ((i4 + 52) - 48);
        }
        byte[] bArr = f21049a;
        bArr[43] = (byte) 62;
        bArr[47] = (byte) 63;
        f21050b = null;
        f21051c = new Object();
    }

    /* renamed from: a */
    public static int m19547a(float f) {
        return (int) ((f * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    public static int m19545a(Activity activity) {
        Resources resources;
        int identifier;
        return (!m19535b(activity) || (identifier = (resources = activity.getResources()).getIdentifier("navigation_bar_height", "dimen", "android")) <= 0) ? 0 : resources.getDimensionPixelSize(identifier);
    }

    /* renamed from: a */
    public static int m19543a(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    public static long m19544a(Context context) {
        return NQSPFManager.m3184a(context).f35743b.m19572a((C6851j<NQSPFManager.EnumNetQin>) NQSPFManager.EnumNetQin.AdShowTime, 0L);
    }

    /* renamed from: a */
    public static String m19548a() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS").format(new Date());
    }

    /* renamed from: a */
    public static void m19540a(Context context, String str, String str2) {
        if (!m19530c(context)) {
            Toast.makeText(context.getApplicationContext(), 2131558677, 0).show();
            return;
        }
        try {
            if (m19537a("com.android.vending", false)) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str + str2));
                PackageManager packageManager = context.getPackageManager();
                new ArrayList();
                List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
                for (int i = 0; i < queryIntentActivities.size(); i++) {
                    if (queryIntentActivities.get(i).activityInfo.packageName.equals("com.android.vending")) {
                        intent.setComponent(new ComponentName("com.android.vending", queryIntentActivities.get(i).activityInfo.name));
                        intent.addFlags(268435456);
                        context.getApplicationContext().startActivity(intent);
                    }
                }
                return;
            }
            m19533b(context, "https://play.google.com/store/apps/details?id=" + str + str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static boolean m19546a(long j, long j2) {
        long rawOffset = TimeZone.getDefault().getRawOffset();
        return (j + rawOffset) / AdvertisingId.ONE_DAY_MS == (j2 + rawOffset) / AdvertisingId.ONE_DAY_MS;
    }

    /* renamed from: a */
    public static boolean m19542a(Context context, long j) {
        new Thread(new RunnableC6861a(j, context)).start();
        return true;
    }

    /* renamed from: a */
    public static boolean m19541a(Context context, String str) {
        PackageInfo packageInfo;
        boolean z = false;
        if (context == null) {
            return false;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception e) {
            packageInfo = null;
        }
        if (packageInfo != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m19539a(View view) {
        return !m19538a((FragmentActivity) view.getContext());
    }

    /* renamed from: a */
    public static boolean m19538a(FragmentActivity fragmentActivity) {
        return Build.VERSION.SDK_INT >= 17 ? !fragmentActivity.isDestroyed() : !fragmentActivity.m38334g().mo34813e();
    }

    /* renamed from: a */
    public static boolean m19537a(String str, boolean z) {
        if (str == null) {
            return false;
        }
        synchronized (f21051c) {
            try {
                if (f21050b != null) {
                    for (PackageInfo packageInfo : f21050b) {
                        if (packageInfo.packageName != null) {
                            if (z) {
                                if (packageInfo.packageName.startsWith(str) || packageInfo.packageName.equalsIgnoreCase(str)) {
                                    return true;
                                }
                            } else if (packageInfo.packageName.equalsIgnoreCase(str)) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static int m19536b() {
        return NqApplication.m3303b().getResources().getDisplayMetrics().widthPixels;
    }

    /* renamed from: b */
    public static int m19534b(Context context) {
        return context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("status_bar_height", "dimen", "android"));
    }

    /* renamed from: b */
    public static void m19533b(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m19532b(Context context, String str, String str2) {
        String str3 = str;
        String str4 = str;
        try {
            if (!TextUtils.isEmpty(str2)) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(str2);
                str3 = sb.toString();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("market://details?id=");
            sb2.append(str3);
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(sb2.toString()));
            intent.addFlags(268435456);
            intent.setComponent(new ComponentName("com.android.vending", "com.android.vending.AssetBrowserActivity"));
            if (intent.resolveActivity(context.getPackageManager()) != null) {
                str4 = str3;
                context.startActivity(intent);
            }
        } catch (Exception e) {
            C6850i.m19578a((Throwable) e);
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str4));
                intent2.addFlags(268435456);
                if (intent2.resolveActivity(context.getPackageManager()) != null) {
                    context.startActivity(intent2);
                }
            } catch (Exception e2) {
                C6850i.m19578a((Throwable) e2);
            }
        }
    }

    /* renamed from: b */
    public static boolean m19535b(Activity activity) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 17) {
            Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
            Point point = new Point();
            Point point2 = new Point();
            defaultDisplay.getSize(point);
            defaultDisplay.getRealSize(point2);
            if (point2.y == point.y) {
                z = false;
            }
            return z;
        }
        return !ViewConfiguration.get(activity).hasPermanentMenuKey() && !KeyCharacterMap.deviceHasKey(4);
    }

    /* renamed from: c */
    public static boolean m19531c() {
        return C6815b.m19684c();
    }

    /* renamed from: c */
    public static boolean m19530c(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }
}
