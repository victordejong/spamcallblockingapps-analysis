package p065f.p066a.p068b.p069a;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.telephony.SmsManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.net.MalformedURLException;
import java.net.URL;
/* renamed from: f.a.b.a.q */
/* loaded from: classes-dex2jar.jar:f/a/b/a/q.class */
public class C4266q {
    /* renamed from: a */
    public static int m29169a(int i) {
        int i2 = i;
        if (m29163c()) {
            i2 = i;
            if (i == -1) {
                i2 = SmsManager.getDefaultSmsSubscriptionId();
            }
        }
        int i3 = i2;
        if (i2 < 0) {
            i3 = -1;
        }
        return i3;
    }

    /* renamed from: a */
    public static String m29167a(String str) {
        String str2;
        if (!Log.isLoggable("MmsLib", 2) && !TextUtils.isEmpty(str)) {
            String str3 = "http";
            try {
                URL url = new URL(str);
                String protocol = url.getProtocol();
                str3 = protocol;
                str2 = url.getHost();
                str3 = protocol;
            } catch (MalformedURLException e) {
                str2 = "";
            }
            return str3 + "://" + str2 + "[" + str.length() + "]";
        }
        return str;
    }

    /* renamed from: a */
    public static boolean m29170a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: a */
    public static int[] m29168a(Context context, int i) {
        int[] iArr = {0, 0};
        if (m29163c()) {
            SubscriptionInfo activeSubscriptionInfo = SubscriptionManager.from(context).getActiveSubscriptionInfo(i);
            if (activeSubscriptionInfo != null) {
                iArr[0] = activeSubscriptionInfo.getMcc();
                iArr[1] = activeSubscriptionInfo.getMnc();
            }
        } else {
            String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
            try {
                iArr[0] = Integer.parseInt(simOperator.substring(0, 3));
                iArr[1] = Integer.parseInt(simOperator.substring(3));
            } catch (Exception e) {
                String str = "Invalid mcc/mnc from system " + simOperator + ": " + e;
                iArr[0] = 0;
                iArr[1] = 0;
            }
        }
        return iArr;
    }

    /* renamed from: b */
    public static Context m29164b(Context context, int i) {
        if (!m29163c()) {
            return context;
        }
        int[] a = m29168a(context, i);
        int i2 = a[0];
        int i3 = a[1];
        if (i2 == 0 && i3 == 0) {
            return context;
        }
        Configuration configuration = new Configuration();
        configuration.mcc = i2;
        configuration.mnc = i3;
        return context.createConfigurationContext(configuration);
    }

    /* renamed from: b */
    public static SmsManager m29165b(int i) {
        return m29163c() ? SmsManager.getSmsManagerForSubscriptionId(i) : SmsManager.getDefault();
    }

    /* renamed from: b */
    public static boolean m29166b() {
        return Build.VERSION.SDK_INT >= 19;
    }

    /* renamed from: c */
    public static boolean m29163c() {
        return Build.VERSION.SDK_INT >= 22;
    }
}
