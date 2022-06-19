package p068d2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.applovin.sdk.AppLovinEventTypes;
import java.util.Locale;
import java.util.Objects;
@SuppressLint({"ObsoleteSdkInt"})
/* renamed from: d2.b2 */
/* loaded from: classes-dex2jar.jar:d2/b2.class */
public class C2179b2 {

    /* renamed from: c */
    public boolean f7950c;

    /* renamed from: a */
    public String f7948a = "";

    /* renamed from: b */
    public final C2437x0 f7949b = new C2437x0();

    /* renamed from: d */
    public C2267f4 f7951d = new C2267f4();

    /* renamed from: e */
    public String f7952e = "android";

    /* renamed from: f */
    public String f7953f = "android_native";

    /* renamed from: g */
    public String f7954g = "";

    /* renamed from: d2.b2$a */
    /* loaded from: classes-dex2jar.jar:d2/b2$a.class */
    public class C2180a implements AbstractC2458y0 {

        /* renamed from: d2.b2$a$a */
        /* loaded from: classes-dex2jar.jar:d2/b2$a$a.class */
        public class RunnableC2181a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f7956a;

            public RunnableC2181a(C2410t0 c2410t0) {
                C2180a.this = r4;
                this.f7956a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Objects.requireNonNull(C2179b2.this);
                    new AsyncTaskC2182b(this.f7956a, false).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } catch (RuntimeException e) {
                    C2408t.m3591d().m3718p().m3686e(0, 0, "Error retrieving device info, disabling AdColony.", true);
                    C2168b.m3789i();
                } catch (StackOverflowError e2) {
                    C2408t.m3591d().m3718p().m3686e(0, 0, "StackOverflowError on info AsyncTask execution, disabling AdColony", true);
                    C2168b.m3789i();
                }
            }
        }

        public C2180a() {
            C2179b2.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            C2315i3.m3652s(new RunnableC2181a(c2410t0));
        }
    }

    /* renamed from: d2.b2$b */
    /* loaded from: classes-dex2jar.jar:d2/b2$b.class */
    public static class AsyncTaskC2182b extends AsyncTask<Void, Void, C2267f4> {

        /* renamed from: a */
        public C2410t0 f7958a;

        /* renamed from: b */
        public boolean f7959b;

        public AsyncTaskC2182b(C2410t0 c2410t0, boolean z) {
            this.f7958a = c2410t0;
            this.f7959b = z;
        }

        @Override // android.os.AsyncTask
        public C2267f4 doInBackground(Void[] voidArr) {
            return C2408t.m3591d().m3721m().m3783b(2000L);
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(C2267f4 c2267f4) {
            C2267f4 c2267f42 = c2267f4;
            if (this.f7959b) {
                new C2410t0("Device.update_info", 1, c2267f42).m3586b();
            } else {
                this.f7958a.m3587a(c2267f42).m3586b();
            }
        }
    }

    /* renamed from: a */
    public void m3784a() {
        C2437x0 c2437x0 = this.f7949b;
        synchronized (c2437x0) {
            c2437x0.f8620a = false;
        }
        C2408t.m3592c("Device.get_info", new C2180a());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:2|(1:4)(1:5)|6|(2:8|(38:10|12|(1:14)(1:15)|16|(1:21)(1:20)|22|124|23|1a6|28|31|(1:33)(6:34|(1:36)(1:37)|38|119|39|40)|43|(1:47)|48|(1:50)(1:51)|52|(2:54|(2:56|(1:58))(1:59))|60|(1:65)(1:64)|66|(2:68|(1:70)(2:71|(2:73|(1:75)(1:76))))|77|(1:79)|80|(1:82)|83|(1:85)|86|(1:88)|89|(2:93|512)|104|(3:108|(1:110)(1:111)|112)|113|(1:115)|116|117))|11|12|(0)(0)|16|(6:18|21|22|124|23|1a6)|20|22|124|23|1a6) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x01c1, code lost:
        r18 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x01c3, code lost:
        r0 = android.support.p012v4.media.C0082b.m8752j("JSON error in ADCJSON putLong(): ");
        r0.append(r18.toString());
        r0.append(" with key: memory_used_mb");
        r0.append(" and value: " + r0);
        android.support.p012v4.media.C0082b.m8750l(0, 0, r0.toString(), true);
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01a7  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p068d2.C2267f4 m3783b(long r7) {
        /*
            Method dump skipped, instructions count: 1534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p068d2.C2179b2.m3783b(long):d2.f4");
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* renamed from: c */
    public double m3782c() {
        char c;
        Intent registerReceiver;
        Context context = C2408t.f8531a;
        if (context == null) {
            return 0.0d;
        }
        try {
            registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        } catch (RuntimeException e) {
            c = 0;
        }
        if (registerReceiver == null) {
            return 0.0d;
        }
        int intExtra = registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1);
        int intExtra2 = registerReceiver.getIntExtra("scale", -1);
        c = 0;
        if (intExtra >= 0) {
            c = intExtra2 < 0 ? (char) 0 : intExtra / intExtra2;
        }
        return c;
    }

    /* renamed from: d */
    public String m3781d() {
        Context context = C2408t.f8531a;
        String str = "";
        if (context == null) {
            return "";
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            str = telephonyManager.getNetworkOperatorName();
        }
        String str2 = str;
        if (str.length() == 0) {
            str2 = "unknown";
        }
        return str2;
    }

    /* renamed from: e */
    public String m3780e() {
        return Locale.getDefault().getCountry();
    }

    /* renamed from: f */
    public float m3779f() {
        Context context = C2408t.f8531a;
        if (context == null) {
            return 0.0f;
        }
        return context.getResources().getDisplayMetrics().density;
    }

    /* renamed from: g */
    public Rect m3778g() {
        Rect rect = new Rect();
        Context context = C2408t.f8531a;
        Rect rect2 = rect;
        if (context != null) {
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                rect2 = rect;
                if (windowManager != null) {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                    rect2 = new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
            } catch (RuntimeException e) {
                rect2 = rect;
            }
        }
        return rect2;
    }

    /* renamed from: h */
    public Rect m3777h() {
        Rect rect = new Rect();
        Context context = C2408t.f8531a;
        Rect rect2 = rect;
        if (context != null) {
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                rect2 = rect;
                if (windowManager != null) {
                    boolean z = true;
                    if (Build.VERSION.SDK_INT < 30) {
                        DisplayMetrics displayMetrics = new DisplayMetrics();
                        DisplayMetrics displayMetrics2 = new DisplayMetrics();
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        defaultDisplay.getMetrics(displayMetrics);
                        defaultDisplay.getRealMetrics(displayMetrics2);
                        int m3676A = C2315i3.m3676A(context);
                        int identifier = context.getResources().getConfiguration().orientation == 1 ? context.getResources().getIdentifier("navigation_bar_height", "dimen", "android") : context.getResources().getIdentifier("navigation_bar_height_landscape", "dimen", "android");
                        int dimensionPixelSize = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
                        int i = displayMetrics2.heightPixels - displayMetrics.heightPixels;
                        rect2 = i <= 0 ? new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels - m3676A) : (dimensionPixelSize <= 0 || (i <= m3676A && dimensionPixelSize > m3676A)) ? new Rect(0, 0, displayMetrics.widthPixels, displayMetrics2.heightPixels - m3676A) : new Rect(0, 0, displayMetrics.widthPixels, displayMetrics2.heightPixels - (dimensionPixelSize + m3676A));
                    } else {
                        WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                        try {
                            Point point = new Point();
                            Point point2 = new Point();
                            context.getDisplay().getCurrentSizeRange(point, point2);
                            if (currentWindowMetrics.getBounds().width() > currentWindowMetrics.getBounds().height()) {
                                z = true;
                            }
                            Point point3 = z ? new Point(point2.x, point.y) : new Point(point.x, point2.y);
                            rect2 = new Rect(0, 0, point3.x, point3.y);
                        } catch (UnsupportedOperationException e) {
                            Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout() | WindowInsets.Type.statusBars());
                            rect2 = new Rect(0, 0, currentWindowMetrics.getBounds().width() - (insetsIgnoringVisibility.right + insetsIgnoringVisibility.left), currentWindowMetrics.getBounds().height() - (insetsIgnoringVisibility.top + insetsIgnoringVisibility.bottom));
                        }
                    }
                }
            } catch (RuntimeException e2) {
                rect2 = rect;
            }
        }
        return rect2;
    }
}
