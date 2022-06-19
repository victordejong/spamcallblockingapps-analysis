package p193e.p1485h.p1486a.p1488b;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.widget.RemoteViews;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.network.constant.Protocols;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.C22773p;
/* renamed from: e.h.a.b.g */
/* loaded from: classes-dex2jar.jar:e/h/a/b/g.class */
public class C22681g {
    /* renamed from: a */
    public static HashMap<String, Object> m7979a(Bundle bundle) {
        bundle.remove(DTBMetricsConfiguration.CONFIG_DIR);
        HashMap<String, Object> hashMap = new HashMap<>();
        for (String str : bundle.keySet()) {
            if (str.contains("wzrk_") || str.equals("pt_id")) {
                Object obj = bundle.get(str);
                if (obj instanceof Bundle) {
                    hashMap.putAll(m7979a((Bundle) obj));
                } else {
                    hashMap.put(str, bundle.get(str));
                }
            }
        }
        return hashMap;
    }

    /* renamed from: b */
    public static void m7978b(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("wzrk_pid");
        File dir = new ContextWrapper(context.getApplicationContext()).getDir("pt_dir", 0);
        String absolutePath = dir.getAbsolutePath();
        String[] list = dir.list();
        if (list != null) {
            for (String str : list) {
                if (stringExtra != null && str.contains(stringExtra)) {
                    new File(C22128a.m8725C2(absolutePath, StringConstant.SLASH, str)).delete();
                } else if (stringExtra == null && str.contains(AnalyticsConstants.NULL)) {
                    new File(C22128a.m8725C2(absolutePath, StringConstant.SLASH, str)).delete();
                }
            }
        }
    }

    /* renamed from: c */
    public static void m7977c(Context context) {
        int i;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
        if (notificationManager == null || (i = Build.VERSION.SDK_INT) < 26 || notificationManager.getNotificationChannel("pt_silent_sound_channel") == null) {
            return;
        }
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel("pt_silent_sound_channel");
        boolean z = false;
        if (i >= 26) {
            z = false;
            if (notificationChannel != null) {
                z = false;
                if (notificationChannel.getImportance() != 0) {
                    z = true;
                }
            }
        }
        if (!z) {
            return;
        }
        notificationManager.deleteNotificationChannel("pt_silent_sound_channel");
    }

    /* renamed from: d */
    public static Bitmap m7976d(Drawable drawable) throws NullPointerException {
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    /* renamed from: e */
    public static Bundle m7975e(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray optJSONArray = jSONObject.optJSONArray(next);
            String optString = jSONObject.optString(next);
            if (optJSONArray != null && optJSONArray.length() <= 0) {
                bundle.putStringArray(next, new String[0]);
            } else if (optJSONArray != null && optJSONArray.optString(0) != null) {
                String[] strArr = new String[optJSONArray.length()];
                for (int i = 0; i < optJSONArray.length(); i++) {
                    strArr[i] = optJSONArray.optString(i);
                }
                bundle.putStringArray(next, strArr);
            } else if (optString != null) {
                bundle.putString(next, optString);
            } else {
                System.err.println("unable to transform json to bundle " + next);
            }
        }
        return bundle;
    }

    /* renamed from: f */
    public static Bitmap m7974f(Context context) throws NullPointerException {
        try {
            Drawable applicationLogo = context.getPackageManager().getApplicationLogo(context.getApplicationInfo());
            if (applicationLogo == null) {
                throw new Exception("Logo is null");
            }
            return m7976d(applicationLogo);
        } catch (Exception e) {
            return m7976d(context.getPackageManager().getApplicationIcon(context.getApplicationInfo()));
        }
    }

    /* renamed from: g */
    public static String m7973g(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i = applicationInfo.labelRes;
        return i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i);
    }

    /* renamed from: h */
    public static ArrayList<String> m7972h(Bundle bundle) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : bundle.keySet()) {
            if (str.contains("pt_bt")) {
                arrayList.add(bundle.getString(str));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0090, code lost:
        if (r5.getContentEncoding().contains("gzip") != false) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap m7971i(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1485h.p1486a.p1488b.C22681g.m7971i(java.lang.String):android.graphics.Bitmap");
    }

    /* renamed from: j */
    public static int m7970j(String str, String str2) {
        try {
            return Color.parseColor(str);
        } catch (Exception e) {
            return Color.parseColor(str2);
        }
    }

    /* renamed from: k */
    public static ArrayList<String> m7969k(Bundle bundle) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : bundle.keySet()) {
            if (str.contains("pt_dl")) {
                arrayList.add(bundle.getString(str));
            }
        }
        return arrayList;
    }

    /* renamed from: l */
    public static String m7968l(Bundle bundle) {
        String str = null;
        for (String str2 : bundle.keySet()) {
            if (str2.contains("pt_event_name")) {
                str = bundle.getString(str2);
            }
        }
        return str;
    }

    /* renamed from: m */
    public static ArrayList<String> m7967m(Bundle bundle) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : bundle.keySet()) {
            if (str.contains("pt_img")) {
                arrayList.add(bundle.getString(str));
            }
        }
        return arrayList;
    }

    /* renamed from: n */
    public static Bitmap m7966n(String str, boolean z, Context context) throws NullPointerException {
        if (str.equals("")) {
            Bitmap bitmap = null;
            if (z) {
                bitmap = m7974f(context);
            }
            return bitmap;
        }
        String str2 = str;
        if (!str.startsWith(Protocols.HTTP)) {
            str2 = C22128a.m8543z2("http://static.wizrocket.com/android/ico//", str);
        }
        Bitmap m7971i = m7971i(str2);
        if (m7971i == null) {
            m7971i = null;
            if (z) {
                m7971i = m7974f(context);
            }
        }
        return m7971i;
    }

    /* renamed from: o */
    public static Notification m7965o(Context context, int i) {
        StatusBarNotification[] activeNotifications;
        for (StatusBarNotification statusBarNotification : ((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION)).getActiveNotifications()) {
            if (statusBarNotification.getId() == i) {
                return statusBarNotification.getNotification();
            }
        }
        return null;
    }

    /* renamed from: p */
    public static ArrayList<String> m7964p(Bundle bundle) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : bundle.keySet()) {
            if (str.contains("pt_price") && !str.contains("pt_price_list")) {
                arrayList.add(bundle.getString(str));
            }
        }
        return arrayList;
    }

    /* renamed from: q */
    public static ArrayList<String> m7963q(Bundle bundle) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : bundle.keySet()) {
            if (str.contains("pt_st")) {
                arrayList.add(bundle.getString(str));
            }
        }
        return arrayList;
    }

    /* renamed from: r */
    public static void m7962r(int i, String str, RemoteViews remoteViews) {
        Bitmap m7971i = m7971i(str);
        m7958v(Boolean.FALSE);
        if (m7971i != null) {
            remoteViews.setImageViewBitmap(i, m7971i);
        } else {
            m7958v(Boolean.TRUE);
        }
    }

    /* renamed from: s */
    public static void m7961s(Context context, CleverTapInstanceConfig cleverTapInstanceConfig, String str, HashMap<String, Object> hashMap) {
        C22773p m7790k = cleverTapInstanceConfig != null ? C22773p.m7790k(context, cleverTapInstanceConfig) : C22773p.m7793h(context);
        if (str.isEmpty() || m7790k == null) {
            return;
        }
        m7790k.m7785p(str, hashMap);
    }

    /* renamed from: t */
    public static void m7960t(Context context, Bundle bundle, CleverTapInstanceConfig cleverTapInstanceConfig) {
        C22773p m7790k = cleverTapInstanceConfig != null ? C22773p.m7790k(context, cleverTapInstanceConfig) : C22773p.m7793h(context);
        if (m7790k != null) {
            m7790k.f63088b.f63518d.m7878m(bundle);
        }
    }

    /* renamed from: u */
    public static Bitmap m7959u(Context context, int i, String str) throws NullPointerException {
        if (str == null || str.isEmpty()) {
            return null;
        }
        int m7970j = m7970j(str, "#A6A6A6");
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, i);
        Objects.requireNonNull(m1789b);
        Drawable mutate = m1789b.mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(m7970j, PorterDuff.Mode.SRC_IN));
        return m7976d(mutate);
    }

    /* renamed from: v */
    public static void m7958v(Boolean bool) {
        C22674b.f62740a = bool.booleanValue();
    }
}
