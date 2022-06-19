package p193e.p1485h.p1486a.p1493c;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.amazon.device.ads.DtbConstants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.network.constant.Protocols;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.h.a.c.j0 */
/* loaded from: classes-dex2jar.jar:e/h/a/c/j0.class */
public final class C22741j0 {

    /* renamed from: a */
    public static boolean f62977a;

    static {
        boolean z;
        try {
            Class.forName("com.google.android.exoplayer2.SimpleExoPlayer");
            Class.forName("com.google.android.exoplayer2.source.hls.HlsMediaSource");
            Class.forName("com.google.android.exoplayer2.ui.PlayerView");
            z = true;
        } catch (Throwable th) {
            z = false;
        }
        f62977a = z;
    }

    /* renamed from: a */
    public static boolean m7849a(Collection<String> collection, String str) {
        if (collection == null || str == null) {
            return false;
        }
        for (String str2 : collection) {
            if (str.equalsIgnoreCase(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static ArrayList<String> m7848b(JSONArray jSONArray) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                arrayList.add(jSONArray.getString(i));
            } catch (JSONException e) {
                e.getMessage();
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static HashMap<String, Object> m7847c(JSONObject jSONObject) {
        HashMap<String, Object> hashMap = new HashMap<>();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof JSONObject) {
                    hashMap.putAll(m7847c((JSONObject) obj));
                } else {
                    hashMap.put(next, jSONObject.get(next));
                }
            } catch (Throwable th) {
            }
        }
        return hashMap;
    }

    /* renamed from: d */
    public static Bitmap m7846d(Drawable drawable) throws NullPointerException {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    /* renamed from: e */
    public static Bitmap m7845e(Context context) throws NullPointerException {
        try {
            Drawable applicationLogo = context.getPackageManager().getApplicationLogo(context.getApplicationInfo());
            if (applicationLogo == null) {
                throw new Exception("Logo is null");
            }
            return m7846d(applicationLogo);
        } catch (Exception e) {
            return m7846d(context.getPackageManager().getApplicationIcon(context.getApplicationInfo()));
        }
    }

    /* renamed from: f */
    public static Bitmap m7844f(String str) {
        HttpURLConnection httpURLConnection;
        Throwable th;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str.replace("///", StringConstant.SLASH).replace("//", StringConstant.SLASH).replace("http:/", DtbConstants.HTTP).replace("https:/", DtbConstants.HTTPS)).openConnection();
        } catch (IOException e) {
            httpURLConnection = null;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
        try {
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            Bitmap decodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
            try {
                httpURLConnection.disconnect();
            } catch (Throwable th3) {
            }
            return decodeStream;
        } catch (IOException e2) {
            if (httpURLConnection == null) {
                return null;
            }
            try {
                httpURLConnection.disconnect();
                return null;
            } catch (Throwable th4) {
                return null;
            }
        } catch (Throwable th5) {
            th = th5;
            if (httpURLConnection != null) {
                try {
                    httpURLConnection.disconnect();
                } catch (Throwable th6) {
                }
            }
            throw th;
        }
    }

    /* renamed from: g */
    public static String m7843g(Context context) {
        int i;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
        if (telephonyManager == null) {
            return "Unavailable";
        }
        if (Build.VERSION.SDK_INT >= 30) {
            i = 0;
            if (m7840j(context, "android.permission.READ_PHONE_STATE")) {
                try {
                    i = telephonyManager.getDataNetworkType();
                } catch (SecurityException e) {
                    e.getMessage();
                    i = 0;
                }
            }
        } else {
            i = telephonyManager.getNetworkType();
        }
        if (i == 20) {
            return "5G";
        }
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return AnalyticsConstants.NETWORK_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return AnalyticsConstants.NETWORK_3G;
            case 13:
                return AnalyticsConstants.NETWORK_4G;
            default:
                return "Unknown";
        }
    }

    /* renamed from: h */
    public static Bitmap m7842h(String str, boolean z, Context context) throws NullPointerException {
        if (str == null || str.equals("")) {
            Bitmap bitmap = null;
            if (z) {
                bitmap = m7845e(context);
            }
            return bitmap;
        }
        String str2 = str;
        if (!str.startsWith(Protocols.HTTP)) {
            str2 = C22128a.m8543z2("http://static.wizrocket.com/android/ico//", str);
        }
        Bitmap m7844f = m7844f(str2);
        if (m7844f == null) {
            m7844f = null;
            if (z) {
                m7844f = m7845e(context);
            }
        }
        return m7844f;
    }

    /* renamed from: i */
    public static int m7841i(Context context, String str) {
        if (context != null) {
            return context.getResources().getIdentifier(str, "drawable", context.getPackageName());
        }
        return -1;
    }

    /* renamed from: j */
    public static boolean m7840j(Context context, String str) {
        boolean z;
        if (C26467a.m1801a(context, str) == 0) {
            z = true;
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: k */
    public static boolean m7839k(Activity activity) {
        if (activity == null) {
            return true;
        }
        boolean z = true;
        if (!activity.isFinishing()) {
            z = activity.isDestroyed();
        }
        return z;
    }

    /* renamed from: l */
    public static boolean m7838l(Context context, Class cls) {
        if (cls == null) {
            return false;
        }
        try {
            for (ServiceInfo serviceInfo : context.getPackageManager().getPackageInfo(context.getPackageName(), 4).services) {
                if (serviceInfo.name.equals(cls.getName())) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            e.getLocalizedMessage();
            return false;
        }
    }

    /* renamed from: m */
    public static void m7837m(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities != null) {
            String packageName = context.getPackageName();
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                if (packageName.equals(resolveInfo.activityInfo.packageName)) {
                    intent.setPackage(packageName);
                    return;
                }
            }
        }
    }

    /* renamed from: n */
    public static boolean m7836n(String str) {
        return str != null && !str.isEmpty() && str.length() <= 64 && str.matches("[A-Za-z0-9()!:$@_-]*");
    }
}
