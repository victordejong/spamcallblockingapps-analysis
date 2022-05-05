package p081h.p447o.p448a.p449a;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
/* renamed from: h.o.a.a.d */
/* loaded from: classes2-dex2jar.jar:h/o/a/a/d.class */
public class C10832d {

    /* renamed from: a */
    public static View f24781a;

    /* renamed from: b */
    public static boolean f24782b;

    /* renamed from: c */
    public static boolean f24783c;

    /* renamed from: d */
    public static int f24784d;

    /* renamed from: e */
    public static boolean f24785e;

    /* renamed from: h.o.a.a.d$a */
    /* loaded from: classes2-dex2jar.jar:h/o/a/a/d$a.class */
    public class C10833a implements LocationListener {

        /* renamed from: a */
        public WeakReference<Context> f24786a = null;

        /* renamed from: b */
        public WeakReference<LocationManager> f24787b = null;

        /* renamed from: c */
        public Map<String, Location> f24788c = new TreeMap();

        /* renamed from: d */
        public Map<String, Integer> f24789d = new TreeMap();

        public C10833a(C10832d dVar, Context context) {
            try {
                m10454a(context);
            } catch (SecurityException e) {
                C10831c.m10521a("LocationHelper", "LocationHelper SecurityException:" + e.getMessage(), e);
            } catch (Exception e2) {
                C10831c.m10521a("LocationHelper", "LocationHelper Exception" + e2.getMessage(), e2);
            }
        }

        /* renamed from: a */
        public void m10456a() {
            this.f24789d.clear();
        }

        /* renamed from: a */
        public final void m10455a(int i) {
        }

        /* renamed from: a */
        public final void m10454a(Context context) {
            this.f24786a = new WeakReference<>(context);
            this.f24787b = new WeakReference<>((LocationManager) this.f24786a.get().getSystemService("location"));
            this.f24789d.put("network", 10);
            this.f24789d.put("passive", 20);
        }

        /* renamed from: a */
        public final void m10453a(Location location) {
        }

        /* renamed from: a */
        public final void m10452a(String str) {
        }

        /* renamed from: a */
        public void m10451a(String str, int i) {
            this.f24789d.put(str, Integer.valueOf(i));
        }

        /* renamed from: b */
        public Location m10450b() {
            m10447e();
            List<String> f = m10446f();
            C10831c.m10518c("LocationHelper", "Providers priority: " + f);
            for (String str : f) {
                Location location = this.f24788c.get(str);
                if (location != null) {
                    m10453a(location);
                    m10452a(str);
                    C10831c.m10518c("LocationHelper", "Returned the provider in first priority: " + str);
                    return location;
                }
            }
            return null;
        }

        /* renamed from: c */
        public Location m10449c() {
            m10447e();
            List<String> f = m10446f();
            C10831c.m10518c("LocationHelper", "Providers priority: " + f);
            Long l = 0L;
            String str = null;
            for (String str2 : f) {
                Location location = this.f24788c.get(str2);
                if (location != null) {
                    C10831c.m10518c("LocationHelper", "provider: " + str2 + " time: " + location.getTime());
                    if (location.getTime() > l.longValue()) {
                        l = Long.valueOf(location.getTime());
                        str = str2;
                    }
                }
            }
            if (str == null) {
                return m10450b();
            }
            C10831c.m10518c("LocationHelper", "Returned the provider: " + str + " updated at " + l);
            Location location2 = this.f24788c.get(str);
            m10453a(location2);
            m10452a(str);
            return location2;
        }

        /* renamed from: d */
        public final LocationManager m10448d() {
            LocationManager locationManager;
            WeakReference<LocationManager> weakReference = this.f24787b;
            if (weakReference == null || (locationManager = weakReference.get()) == null) {
                return null;
            }
            return locationManager;
        }

        /* renamed from: e */
        public final void m10447e() {
            LocationManager d = m10448d();
            if (this.f24789d.containsKey("passive")) {
                for (String str : d.getAllProviders()) {
                    this.f24788c.put(str, d.getLastKnownLocation(str));
                    C10831c.m10518c("LocationHelper", "Retrieved getLastKnownLocation of " + str);
                }
                return;
            }
            for (String str2 : this.f24789d.keySet()) {
                C10831c.m10518c("LocationHelper", "provider : " + str2);
                this.f24788c.put(str2, d.getLastKnownLocation(str2));
                C10831c.m10518c("LocationHelper", "Retrieved getLastKnownLocation of " + str2);
            }
        }

        /* JADX WARN: Type inference failed for: r0v30, types: [double] */
        /* JADX WARN: Type inference failed for: r0v37, types: [double] */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<java.lang.String> m10446f() {
            /*
                r5 = this;
                java.util.TreeMap r0 = new java.util.TreeMap
                r1 = r0
                r1.<init>()
                r6 = r0
                r0 = r5
                java.util.Map<java.lang.String, java.lang.Integer> r0 = r0.f24789d
                java.util.Set r0 = r0.keySet()
                java.util.Iterator r0 = r0.iterator()
                r7 = r0
            L_0x0017:
                r0 = r7
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x0081
                r0 = r7
                java.lang.Object r0 = r0.next()
                java.lang.String r0 = (java.lang.String) r0
                r8 = r0
                r0 = r5
                java.util.Map<java.lang.String, java.lang.Integer> r0 = r0.f24789d
                r1 = r8
                java.lang.Object r0 = r0.get(r1)
                java.lang.Integer r0 = (java.lang.Integer) r0
                int r0 = r0.intValue()
                double r0 = (double) r0
                r9 = r0
                r0 = r9
                r11 = r0
                r0 = r6
                r1 = r9
                java.lang.Double r1 = java.lang.Double.valueOf(r1)
                boolean r0 = r0.containsKey(r1)
                if (r0 != 0) goto L_0x005b
                r0 = r6
                r1 = r9
                java.lang.Double r1 = java.lang.Double.valueOf(r1)
                r2 = r8
                java.lang.Object r0 = r0.put(r1, r2)
                goto L_0x0017
            L_0x005b:
                r0 = r11
                r1 = 4517329193108106637(0x3eb0c6f7a0b5ed8d, double:1.0E-6)
                double r0 = r0 + r1
                r9 = r0
                r0 = r9
                r11 = r0
                r0 = r6
                r1 = r9
                java.lang.Double r1 = java.lang.Double.valueOf(r1)
                boolean r0 = r0.containsKey(r1)
                if (r0 != 0) goto L_0x005b
                r0 = r6
                r1 = r9
                java.lang.Double r1 = java.lang.Double.valueOf(r1)
                r2 = r8
                java.lang.Object r0 = r0.put(r1, r2)
                goto L_0x0017
            L_0x0081:
                java.util.LinkedList r0 = new java.util.LinkedList
                r1 = r0
                r1.<init>()
                r8 = r0
                r0 = r6
                java.util.Set r0 = r0.keySet()
                java.util.Iterator r0 = r0.iterator()
                r7 = r0
            L_0x0093:
                r0 = r7
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x00c6
                r0 = r6
                r1 = r7
                java.lang.Object r1 = r1.next()
                java.lang.Double r1 = (java.lang.Double) r1
                java.lang.Object r0 = r0.get(r1)
                java.lang.String r0 = (java.lang.String) r0
                r13 = r0
                r0 = r5
                java.util.Map<java.lang.String, android.location.Location> r0 = r0.f24788c
                r1 = r13
                boolean r0 = r0.containsKey(r1)
                if (r0 == 0) goto L_0x0093
                r0 = r8
                r1 = r13
                boolean r0 = r0.add(r1)
                goto L_0x0093
            L_0x00c6:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p447o.p448a.p449a.C10832d.C10833a.m10446f():java.util.List");
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            C10831c.m10518c("LocationHelper", "onLocationChanged");
            m10453a(location);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            C10831c.m10518c("LocationHelper", str + " disabled.");
            m10455a(1);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            C10831c.m10518c("LocationHelper", str + " enabled");
            m10455a(2);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
            if (i == 0) {
                C10831c.m10518c("LocationHelper", str + " out of service");
                m10455a(0);
            } else if (i == 1) {
                C10831c.m10518c("LocationHelper", str + " unavailable");
                m10455a(1);
            } else if (i == 2) {
                C10831c.m10518c("LocationHelper", str + " available");
                m10455a(2);
            }
        }
    }

    /* renamed from: a */
    public static int m10514a(Activity activity) {
        int i;
        if (activity == null) {
            return -1;
        }
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        if (((rotation == 0 || rotation == 2) && i3 > i2) || ((rotation == 1 || rotation == 3) && i2 > i3)) {
            if (rotation != 0) {
                i = 90;
                if (rotation != 1) {
                    if (rotation != 2) {
                        i = 90;
                        if (rotation != 3) {
                            C10831c.m10518c("Utility", "Unknown screen orientation. Defaulting to portrait.");
                        }
                    }
                }
                return i;
            }
            i = 0;
            return i;
        }
        i = 90;
        if (rotation != 0) {
            if (rotation != 1) {
                i = 90;
                if (rotation != 2) {
                    if (rotation != 3) {
                        C10831c.m10518c("Utility", "Unknown screen orientation. Defaulting to landscape.");
                        i = 90;
                    }
                }
            }
            i = 0;
        }
        return i;
    }

    /* renamed from: a */
    public static Activity m10506a(View view) {
        return (view == null || view.getContext() == null) ? null : view.getContext() instanceof MutableContextWrapper ? (Activity) ((MutableContextWrapper) view.getContext()).getBaseContext() : (Activity) view.getContext();
    }

    /* renamed from: a */
    public static Sensor m10507a(SensorManager sensorManager) {
        if (sensorManager != null) {
            List<Sensor> sensorList = sensorManager.getSensorList(8);
            sensorManager.getSensorList(8);
            if (!sensorList.isEmpty()) {
                return sensorManager.getDefaultSensor(8);
            }
            C10831c.m10518c("Utility", "The device cannot support proximity sensor.");
            return null;
        }
        C10831c.m10518c("Utility", "SensorManager is null.");
        return null;
    }

    /* renamed from: a */
    public static String m10516a() {
        return Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry();
    }

    /* renamed from: a */
    public static String m10515a(int i) {
        return i != 0 ? i != 4 ? i != 8 ? "UNKNOWN" : "GONE" : "INVISIBLE" : "VISIBLE";
    }

    @TargetApi(17)
    /* renamed from: a */
    public static String m10513a(Context context) {
        if (Build.VERSION.SDK_INT >= 17) {
            return WebSettings.getDefaultUserAgent(context);
        }
        WeakReference weakReference = new WeakReference(new WebView(context));
        return (weakReference.get() == null || ((WebView) weakReference.get()).getSettings() == null) ? "" : ((WebView) weakReference.get()).getSettings().getUserAgentString();
    }

    /* renamed from: a */
    public static String m10505a(String str) {
        if (str == null) {
            return "";
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            String bigInteger = new BigInteger(1, instance.digest()).toString(16);
            while (bigInteger.length() < 32) {
                bigInteger = "0" + bigInteger;
            }
            return bigInteger;
        } catch (NullPointerException e) {
            C10831c.m10520b("MD5", "convertToMD5ID NullPointerException: " + e.getMessage());
            return "";
        } catch (NoSuchAlgorithmException e2) {
            C10831c.m10520b("MD5", "convertToMD5ID NoSuchAlgorithmException: " + e2.getMessage());
            return "";
        } catch (Exception e3) {
            C10831c.m10520b("MD5", "convertToMD5ID Exception: " + e3.getMessage());
            return "";
        }
    }

    /* renamed from: a */
    public static Date m10504a(String str, String str2) {
        Date parse = new SimpleDateFormat(str2, Locale.TAIWAN).parse(str);
        C10831c.m10518c("Utility", "parseStringToDate: Parse " + str + " to " + parse.getTime());
        return parse;
    }

    /* renamed from: a */
    public static void m10511a(Context context, String str, long j) {
        SharedPreferences.Editor edit = context.getSharedPreferences(str + "_tamedia_tpr", 0).edit();
        edit.putLong(str + "_tprExpired", j).commit();
    }

    /* renamed from: a */
    public static void m10510a(Context context, String str, String str2) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("_tamedia_QUESTION", 0);
        sharedPreferences.edit().putString("_CURRENT_question_id", str).commit();
        sharedPreferences.edit().putString(str, str2).commit();
    }

    /* renamed from: a */
    public static void m10509a(Context context, String str, boolean z) {
        SharedPreferences.Editor edit = context.getSharedPreferences(str + "_tamedia_tpr", 0).edit();
        edit.putBoolean(str + "_tpr_open_chrome", z).commit();
    }

    /* renamed from: a */
    public static void m10508a(Context context, boolean z) {
        context.getSharedPreferences("_tamedia", 0).edit().putBoolean("_IsLimitAdTrackingEnabled", z).commit();
    }

    /* renamed from: a */
    public static boolean m10512a(Context context, String str) {
        boolean z = false;
        try {
            context.getPackageManager().getPackageInfo(str, 64);
            z = true;
        } catch (PackageManager.NameNotFoundException e) {
            C10831c.m10522a("Utility", "isAppInstalledOrNot NameNotFoundException: Cannot find " + str);
        } catch (Exception e2) {
            C10831c.m10520b("Utility", "isAppInstalledOrNot Exception: " + e2.getMessage());
        }
        return z;
    }

    /* renamed from: b */
    public static Bitmap m10498b(String str) {
        try {
            byte[] decode = Base64.decode(str, 0);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inDensity = 240;
            options.inTargetDensity = 240;
            return BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
        } catch (Exception e) {
            C10831c.m10520b("Utility", "getDrawableByString: Cannot get bitmap with string.");
            return null;
        }
    }

    /* renamed from: b */
    public static String m10503b() {
        UUID randomUUID = UUID.randomUUID();
        C10831c.m10518c("Utility", "UUID String: " + randomUUID.toString());
        ByteBuffer wrap = ByteBuffer.wrap(new byte[16]);
        wrap.putLong(randomUUID.getMostSignificantBits());
        wrap.putLong(randomUUID.getLeastSignificantBits());
        String encodeToString = Base64.encodeToString(wrap.array(), 2);
        C10831c.m10518c("Utility", "UUID Base64 String: " + encodeToString);
        String str = encodeToString.split("=")[0];
        C10831c.m10518c("Utility", "UUID Base64 String Trimmed: " + str);
        String replace = str.replace("+", "-").replace("/", "_");
        C10831c.m10518c("Utility", "UUID Base64 String Replaced: " + replace);
        return replace;
    }

    @TargetApi(11)
    /* renamed from: b */
    public static void m10502b(Activity activity) {
        C10831c.m10518c("Utility", "forceFullScreen invoke");
        int i = activity.getWindow().getAttributes().flags;
        boolean z = true;
        f24782b = (i & 1024) != 0;
        if ((i & 2048) == 0) {
            z = false;
        }
        f24783c = z;
        f24784d = -9;
        if (!m10492d(activity)) {
            m10484f(activity);
        }
        C10831c.m10518c("Utility", "previousIsFullScreen " + f24782b);
        C10831c.m10518c("Utility", "previousIsForceNotFullScreen " + f24783c);
        C10831c.m10518c("Utility", "previousIsActionBarShowing " + f24785e);
        C10831c.m10518c("Utility", "previousTitleBarVisibility " + m10515a(f24784d));
        activity.getWindow().addFlags(1024);
        activity.getWindow().clearFlags(2048);
    }

    /* renamed from: b */
    public static void m10500b(Context context, String str) {
        context.getSharedPreferences("_tamedia", 0).edit().putString("_adid", str).commit();
    }

    /* renamed from: b */
    public static void m10499b(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(str + "_tamedia_tpr", 0).edit();
        edit.putString(str + "_tpr_priority_list", str2).commit();
    }

    /* renamed from: b */
    public static boolean m10501b(Context context) {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 11) {
            context.getPackageManager();
            z = false;
            if ((context.getApplicationInfo().flags & 536870912) != 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    public static String m10497c() {
        byte[] decode = Base64.decode("THN4OE1yNQ==", 0);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(new String(decode));
        stringBuffer.append("sPe9QAwkK");
        return stringBuffer.toString();
    }

    /* renamed from: c */
    public static String m10495c(Context context) {
        C10831c.m10518c("Utility", "getAdId invoked!!");
        return context.getSharedPreferences("_tamedia", 0).getString("_adid", "");
    }

    @TargetApi(11)
    /* renamed from: c */
    public static void m10496c(Activity activity) {
        if (!f24782b) {
            activity.getWindow().clearFlags(1024);
        }
        if (f24783c) {
            activity.getWindow().addFlags(2048);
        }
        if (f24785e) {
            m10488e(activity);
            return;
        }
        View view = f24781a;
        if (view != null) {
            view.setVisibility(f24784d);
        }
    }

    /* renamed from: c */
    public static void m10494c(Context context, String str) {
        C10831c.m10518c("Utility", "putSid invoked!!");
        if (m10487e(context).equals("") || m10487e(context) == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("_tamedia", 0);
            sharedPreferences.edit().putString("_agentSid", str).commit();
            sharedPreferences.edit().putLong("_lasttimemark", Long.valueOf(System.currentTimeMillis()).longValue()).commit();
        }
    }

    /* renamed from: c */
    public static void m10493c(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(str + "_tamedia_tpr", 0).edit();
        edit.putString(str + "_tpr_adunit_id", str2).commit();
    }

    /* renamed from: d */
    public static void m10489d(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(str + "_tamedia_tpr", 0).edit();
        edit.putString(str + "_tpr_api", str2).commit();
    }

    /* renamed from: d */
    public static boolean m10492d(Activity activity) {
        if (Build.VERSION.SDK_INT < 11) {
            return false;
        }
        try {
            Class<?> cls = Class.forName("androidx.appcompat.app.AppCompatActivity");
            Class<?> cls2 = Class.forName("androidx.appcompat.app.ActionBar");
            Object invoke = cls.cast(activity).getClass().getMethod("getSupportActionBar", new Class[0]).invoke(cls.cast(activity), new Object[0]);
            if (invoke != null) {
                f24785e = ((Boolean) cls2.cast(invoke).getClass().getMethod("isShowing", new Class[0]).invoke(cls2.cast(invoke), new Object[0])).booleanValue();
                cls2.cast(invoke).getClass().getMethod("setShowHideAnimationEnabled", Boolean.TYPE).invoke(cls2.cast(invoke), false);
                cls2.cast(invoke).getClass().getMethod("hide", new Class[0]).invoke(cls2.cast(invoke), new Object[0]);
                return true;
            }
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
        } catch (Exception e2) {
            C10831c.m10520b("Utility", "disableActionBar error Exception, " + e2.getMessage());
        }
        ActionBar actionBar = activity.getActionBar();
        if (actionBar == null) {
            return false;
        }
        f24785e = actionBar.isShowing();
        actionBar.hide();
        return true;
    }

    /* renamed from: d */
    public static boolean m10491d(Context context) {
        C10831c.m10518c("Utility", "getIsLimitAdTrackingEnabled invoked!!");
        return context.getSharedPreferences("_tamedia", 0).getBoolean("_IsLimitAdTrackingEnabled", false);
    }

    /* renamed from: d */
    public static boolean m10490d(Context context, String str) {
        if (context.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        C10831c.m10518c("Utility", "App does not have permission " + str);
        return false;
    }

    /* renamed from: e */
    public static String m10487e(Context context) {
        C10831c.m10518c("Utility", "getSid invoked!!");
        SharedPreferences sharedPreferences = context.getSharedPreferences("_tamedia", 0);
        if (System.currentTimeMillis() - sharedPreferences.getLong("_lasttimemark", 0L) < AdUtils.ONE_DAY) {
            return sharedPreferences.getString("_agentSid", "");
        }
        sharedPreferences.edit().remove("_lasttimemark").commit();
        sharedPreferences.edit().remove("_agentSid").commit();
        return "";
    }

    /* renamed from: e */
    public static String m10486e(Context context, String str) {
        return context.getSharedPreferences("_tamedia_QUESTION", 0).getString(str, FavoriteGroupRealmObject.PARENDID_DELETED);
    }

    /* renamed from: e */
    public static void m10485e(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(str + "_tamedia_tpr", 0).edit();
        edit.putString(str + "_tpr_pkgbl", str2).commit();
    }

    /* renamed from: e */
    public static boolean m10488e(Activity activity) {
        if (Build.VERSION.SDK_INT < 11) {
            return false;
        }
        try {
            Class<?> cls = Class.forName("androidx.appcompat.app.AppCompatActivity");
            Class<?> cls2 = Class.forName("androidx.appcompat.app.ActionBar");
            Object invoke = cls.cast(activity).getClass().getMethod("getSupportActionBar", new Class[0]).invoke(cls.cast(activity), new Object[0]);
            if (invoke != null) {
                cls2.cast(invoke).getClass().getMethod("show", new Class[0]).invoke(cls2.cast(invoke), new Object[0]);
                return true;
            }
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
        } catch (Exception e2) {
            C10831c.m10520b("Utility", "enableActionBar error Exception, " + e2.getMessage());
        }
        ActionBar actionBar = activity.getActionBar();
        if (actionBar == null) {
            return false;
        }
        actionBar.show();
        return true;
    }

    /* renamed from: f */
    public static long m10482f(Context context, String str) {
        C10831c.m10518c("Utility", "getTPRequestExpired invoked!!");
        SharedPreferences sharedPreferences = context.getSharedPreferences(str + "_tamedia_tpr", 0);
        return sharedPreferences.getLong(str + "_tprExpired", 0L);
    }

    /* renamed from: f */
    public static void m10481f(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences(str + "_tamedia_tpr", 0).edit();
        edit.putString(str + "_tpr_slot_config", str2).commit();
    }

    /* renamed from: f */
    public static boolean m10484f(Activity activity) {
        f24781a = null;
        try {
            f24781a = (View) activity.findViewById(16908310).getParent();
            View view = f24781a;
            if (view == null) {
                return true;
            }
            f24784d = view.getVisibility();
            f24781a.setVisibility(8);
            return true;
        } catch (NullPointerException e) {
            return false;
        } catch (Exception e2) {
            C10831c.m10520b("Utility", "disableTitleBar Error: " + e2.getMessage());
            return false;
        }
    }

    /* renamed from: f */
    public static boolean m10483f(Context context) {
        String[] strArr;
        try {
            for (String str : C10830b.f24780b) {
                if (context.checkCallingOrSelfPermission(str) != 0) {
                    C10831c.m10520b("Utility", "You must have " + str + " permission in AndroidManifest.xml.");
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            C10831c.m10520b("Utility", "checkPermission Exception: " + e.getMessage());
            return false;
        }
    }

    /* renamed from: g */
    public static int m10480g(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect.top;
    }

    /* renamed from: g */
    public static String m10478g(Context context, String str) {
        C10831c.m10518c("Utility", "getTPPriorityList invoked!!");
        SharedPreferences sharedPreferences = context.getSharedPreferences(str + "_tamedia_tpr", 0);
        return sharedPreferences.getString(str + "_tpr_priority_list", "[]");
    }

    /* renamed from: g */
    public static void m10479g(Context context) {
        context.getSharedPreferences("_tamedia_QUESTION", 0).edit().putLong("Q_last_update_time", System.currentTimeMillis()).commit();
    }

    /* renamed from: h */
    public static int m10477h(Activity activity) {
        try {
            View view = (View) activity.findViewById(16908310).getParent();
            if (view != null) {
                return view.getHeight();
            }
            return 0;
        } catch (NullPointerException e) {
            return 0;
        } catch (Exception e2) {
            C10831c.m10520b("Utility", "getTitleBarHeight Error: " + e2.getMessage());
            return 0;
        }
    }

    /* renamed from: h */
    public static long m10476h(Context context) {
        return context.getSharedPreferences("_tamedia_QUESTION", 0).getLong("Q_last_update_time", 0L);
    }

    /* renamed from: h */
    public static String m10475h(Context context, String str) {
        C10831c.m10518c("Utility", "getTPAdUnitIds invoked!!");
        SharedPreferences sharedPreferences = context.getSharedPreferences(str + "_tamedia_tpr", 0);
        return sharedPreferences.getString(str + "_tpr_adunit_id", "{}");
    }

    /* renamed from: i */
    public static int m10474i(Activity activity) {
        if (Build.VERSION.SDK_INT < 11) {
            return 0;
        }
        try {
            Class<?> cls = Class.forName("androidx.appcompat.app.AppCompatActivity");
            Class<?> cls2 = Class.forName("androidx.appcompat.app.ActionBar");
            Object invoke = cls.cast(activity).getClass().getMethod("getSupportActionBar", new Class[0]).invoke(cls.cast(activity), new Object[0]);
            if (invoke != null) {
                return ((Integer) cls2.cast(invoke).getClass().getMethod("getHeight", new Class[0]).invoke(cls2.cast(invoke), new Object[0])).intValue();
            }
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
        } catch (Exception e2) {
            C10831c.m10520b("Utility", "getActionBarHeight error Exception, " + e2.getMessage());
        }
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            return actionBar.getHeight();
        }
        return 0;
    }

    /* renamed from: i */
    public static String m10472i(Context context, String str) {
        C10831c.m10518c("Utility", "getTPAPIs invoked!!");
        SharedPreferences sharedPreferences = context.getSharedPreferences(str + "_tamedia_tpr", 0);
        return sharedPreferences.getString(str + "_tpr_api", "{}");
    }

    /* renamed from: i */
    public static void m10473i(Context context) {
        context.getSharedPreferences("_tamedia_QUESTION", 0).edit().clear().commit();
    }

    /* renamed from: j */
    public static String m10471j(Context context) {
        return context.getSharedPreferences("_tamedia_QUESTION", 0).getString("_CURRENT_question_id", "");
    }

    /* renamed from: j */
    public static String m10470j(Context context, String str) {
        C10831c.m10518c("Utility", "getPackageNameBlackList invoked!!");
        SharedPreferences sharedPreferences = context.getSharedPreferences(str + "_tamedia_tpr", 0);
        return sharedPreferences.getString(str + "_tpr_pkgbl", "[]");
    }

    /* renamed from: k */
    public static int m10469k(Context context) {
        int i = 0;
        int i2 = 0;
        try {
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                i2 = 16;
            }
            int i3 = i2;
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
                i3 = i2 + 32;
            }
            int i4 = i3;
            if (context.checkCallingOrSelfPermission("android.permission.CAMERA") == 0) {
                i4 = i3 + 8 + 128;
            }
            int i5 = i4;
            if (context.checkCallingOrSelfPermission("android.permission.VIBRATE") == 0) {
                i5 = i4 + 1;
            }
            int i6 = i5;
            if (context.checkCallingOrSelfPermission("android.permission.WRITE_CALENDAR") == 0) {
                i6 = i5 + 4;
            }
            int i7 = i6;
            if (context.checkCallingOrSelfPermission("android.permission.READ_CALENDAR") == 0) {
                i7 = i6 + 2;
            }
            int i8 = i7;
            if (context.checkCallingOrSelfPermission("android.permission.RECORD_AUDIO") == 0) {
                i8 = i7 + 64;
            }
            i = i8;
            i = i8;
            if (m10507a((SensorManager) context.getSystemService("sensor")) != null) {
                i = i8 + 256;
            }
        } catch (Exception e) {
            C10831c.m10520b("Utility", "getPermissionList Exception: " + e.getMessage());
        }
        return i;
    }

    /* renamed from: k */
    public static String m10468k(Context context, String str) {
        C10831c.m10518c("Utility", "getSlotConfig invoked!!");
        SharedPreferences sharedPreferences = context.getSharedPreferences(str + "_tamedia_tpr", 0);
        return sharedPreferences.getString(str + "_tpr_slot_config", "{}");
    }

    /* renamed from: l */
    public static int m10467l(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    /* renamed from: l */
    public static boolean m10466l(Context context, String str) {
        C10831c.m10518c("Utility", "getIsOpenChrome invoked!!");
        SharedPreferences sharedPreferences = context.getSharedPreferences(str + "_tamedia_tpr", 0);
        return sharedPreferences.getBoolean(str + "_tpr_open_chrome", false);
    }

    /* renamed from: m */
    public static String m10465m(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        } catch (UnsupportedOperationException e) {
            C10831c.m10520b("Utility", "getMobileNetworkId UnsupportedOperationException: " + e.getMessage());
            return "";
        } catch (Exception e2) {
            C10831c.m10520b("Utility", "getMobileNetworkId Exception: " + e2.getMessage());
            return "";
        }
    }

    /* renamed from: m */
    public static void m10464m(Context context, String str) {
        context.getSharedPreferences(str + "_tamedia_tpr", 0).edit().clear().commit();
    }

    /* renamed from: n */
    public static int m10463n(Context context) {
        if (context == null) {
            return 0;
        }
        return ((TelephonyManager) context.getSystemService("phone")).getPhoneType();
    }

    /* renamed from: o */
    public static String m10462o(Context context) {
        try {
            int checkCallingOrSelfPermission = context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION");
            int checkCallingOrSelfPermission2 = context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION");
            if (checkCallingOrSelfPermission != 0 && checkCallingOrSelfPermission2 != 0) {
                return "";
            }
            String replaceAll = Base64.encodeToString(C10829a.m10523a(m10457t(context), m10497c()), 0).replaceAll("\n", "");
            C10831c.m10518c("Utility", "3>>>>" + replaceAll + "<<<<");
            return replaceAll;
        } catch (Exception e) {
            C10831c.m10521a("Utility", "getEncryptedLocationString Exception: " + e.getMessage(), e);
            return "";
        }
    }

    @TargetApi(13)
    /* renamed from: p */
    public static String m10461p(Context context) {
        String str;
        if (context == null) {
            return "";
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            str = "";
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        str = "0";
                    } else if (type == 6) {
                        str = String.valueOf(6);
                    } else if (type == 7) {
                        str = String.valueOf(7);
                    } else if (type == 9) {
                        str = String.valueOf(9);
                    }
                }
                str = "1";
            }
        } catch (UnsupportedOperationException e) {
            C10831c.m10520b("Utility", "getNetworkType UnsupportedOperationException: " + e.getMessage());
            str = "";
        } catch (Exception e2) {
            C10831c.m10520b("Utility", "getNetworkType Exception: " + e2.getMessage());
            str = "";
        }
        return str;
    }

    /* renamed from: q */
    public static String m10460q(Context context) {
        String r = m10459r(context);
        return r != null ? m10505a(r) : "";
    }

    /* renamed from: r */
    public static String m10459r(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            C10831c.m10521a("Utility", "getAndroidId Exception: " + e.getMessage(), e);
            return "";
        }
    }

    /* renamed from: s */
    public static String m10458s(Context context) {
        return context.getPackageName();
    }

    /* renamed from: t */
    public static String m10457t(Context context) {
        Location c;
        C10831c.m10518c("Utility", "getCurrentLocationStrWithoutBase64 invoked!!");
        C10833a aVar = (C10833a) new WeakReference(new C10833a(new C10832d(), context)).get();
        aVar.m10456a();
        aVar.m10451a("network", 1);
        try {
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) {
                aVar.m10451a("passive", 2);
            }
            if (aVar.m10449c() == null) {
                return "";
            }
            String str = c.getLongitude() + "|" + c.getLatitude() + "|" + c.getAccuracy();
            C10831c.m10518c("Utility", "1>>>>" + str + "<<<<");
            String replaceAll = str.replaceAll("\n", "");
            C10831c.m10518c("Utility", "2>>>>" + replaceAll + "<<<<");
            return replaceAll;
        } catch (SecurityException e) {
            C10831c.m10519b("Utility", "getCurrentLocationStrWithoutBase64 SecurityException: " + e.getMessage(), e);
            return "";
        } catch (Exception e2) {
            C10831c.m10521a("Utility", "getCurrentLocationStrWithoutBase64 Exception" + e2.getMessage(), e2);
            return "";
        }
    }
}
