package p068d2;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.widget.Toast;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.C1676a;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import p068d2.C2415u;
/* renamed from: d2.i3 */
/* loaded from: classes-dex2jar.jar:d2/i3.class */
public class C2315i3 {

    /* renamed from: a */
    public static ExecutorService f8262a = m3671F();

    /* renamed from: b */
    public static Handler f8263b;

    /* renamed from: d2.i3$a */
    /* loaded from: classes-dex2jar.jar:d2/i3$a.class */
    public class RunnableC2316a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f8264a;

        /* renamed from: b */
        public final /* synthetic */ String f8265b;

        /* renamed from: c */
        public final /* synthetic */ int f8266c;

        public RunnableC2316a(Context context, String str, int i) {
            this.f8264a = context;
            this.f8265b = str;
            this.f8266c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(this.f8264a, this.f8265b, this.f8266c).show();
        }
    }

    /* renamed from: d2.i3$b */
    /* loaded from: classes-dex2jar.jar:d2/i3$b.class */
    public interface AbstractRunnableC2317b extends Runnable {
        /* renamed from: a */
        boolean mo3644a();
    }

    /* renamed from: d2.i3$c */
    /* loaded from: classes-dex2jar.jar:d2/i3$c.class */
    public static class C2318c {

        /* renamed from: a */
        public long f8267a;

        /* renamed from: b */
        public long f8268b;

        public C2318c(long j) {
            this.f8268b = System.currentTimeMillis();
            this.f8267a = j;
            this.f8268b = System.currentTimeMillis() + this.f8267a;
        }

        /* renamed from: a */
        public boolean m3643a() {
            return m3642b() == 0;
        }

        /* renamed from: b */
        public long m3642b() {
            long currentTimeMillis = this.f8268b - System.currentTimeMillis();
            if (currentTimeMillis <= 0) {
                return 0L;
            }
            return currentTimeMillis;
        }

        public String toString() {
            return String.valueOf(m3642b() / 1000.0d);
        }
    }

    /* renamed from: A */
    public static int m3676A(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: B */
    public static int m3675B(String str) {
        try {
            return (int) Long.parseLong(str, 16);
        } catch (NumberFormatException e) {
            C0082b.m8750l(0, 1, C0082b.m8755g("Unable to parse '", str, "' as a color."), true);
            return -16777216;
        }
    }

    /* renamed from: C */
    public static String m3674C() {
        Context context = C2408t.f8531a;
        return (!(context instanceof Activity) || context.getResources().getConfiguration().orientation != 1) ? "landscape" : "portrait";
    }

    /* renamed from: D */
    public static Date m3673D(String str) {
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ", locale);
        try {
            return simpleDateFormat.parse(str);
        } catch (Exception e) {
            try {
                return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", locale).parse(str);
            } catch (Exception e2) {
                try {
                    return new SimpleDateFormat("yyyy-MM-dd", locale).parse(str);
                } catch (Exception e3) {
                    return null;
                }
            }
        }
    }

    /* renamed from: E */
    public static boolean m3672E() {
        Context context = C2408t.f8531a;
        return context != null && Build.VERSION.SDK_INT >= 24 && (context instanceof Activity) && ((Activity) context).isInMultiWindowMode();
    }

    /* renamed from: F */
    public static ExecutorService m3671F() {
        return new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    }

    /* renamed from: a */
    public static double m3670a(AudioManager audioManager) {
        if (audioManager == null) {
            C0082b.m8750l(0, 0, C0608b.m7626i("getAudioVolume() called with a null AudioManager"), true);
            return 0.0d;
        }
        try {
            double streamVolume = audioManager.getStreamVolume(3);
            double streamMaxVolume = audioManager.getStreamMaxVolume(3);
            if (streamMaxVolume != 0.0d) {
                return streamVolume / streamMaxVolume;
            }
            return 0.0d;
        } catch (Exception e) {
            StringBuilder m8752j = C0082b.m8752j("Exception occurred when accessing AudioManager: ");
            m8752j.append(e.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
            return 0.0d;
        }
    }

    /* renamed from: b */
    public static int m3669b(View view) {
        if (view == null) {
            return 0;
        }
        int[] iArr = {0, 0};
        view.getLocationOnScreen(iArr);
        return (int) (iArr[0] / C2408t.m3591d().m3721m().m3779f());
    }

    /* renamed from: c */
    public static AudioManager m3668c(Context context) {
        return (AudioManager) context.getSystemService("audio");
    }

    /* renamed from: d */
    public static C2267f4 m3667d(C2267f4 c2267f4) {
        c2267f4.m3711a(new String[]{"data_path", "media_path", "temp_storage_path", "device_api", "display_dpi", "mac_address", "memory_class", "memory_used_mb", "model", "arch", "timezone_ietf", "timezone_gmt_m", "timezone_dst_m", "density", "dark_mode"});
        return c2267f4;
    }

    /* renamed from: e */
    public static String m3666e() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: f */
    public static String m3665f(C2200d4 c2200d4) throws JSONException {
        String str;
        String str2 = "";
        for (int i = 0; i < c2200d4.m3762c(); i++) {
            String str3 = str2;
            if (i > 0) {
                str3 = C1676a.m4789h(str2, ",");
            }
            switch (c2200d4.f8025a.getInt(i)) {
                case 1:
                    str = C1676a.m4789h(str3, "MO");
                    break;
                case 2:
                    str = C1676a.m4789h(str3, "TU");
                    break;
                case 3:
                    str = C1676a.m4789h(str3, "WE");
                    break;
                case 4:
                    str = C1676a.m4789h(str3, "TH");
                    break;
                case 5:
                    str = C1676a.m4789h(str3, "FR");
                    break;
                case 6:
                    str = C1676a.m4789h(str3, "SA");
                    break;
                case 7:
                    str = C1676a.m4789h(str3, "SU");
                    break;
                default:
                    str = str3;
                    break;
            }
            str2 = str;
        }
        return str2;
    }

    /* renamed from: g */
    public static boolean m3664g(Intent intent) {
        return m3663h(intent, false);
    }

    /* renamed from: h */
    public static boolean m3663h(Intent intent, boolean z) {
        try {
            Context context = C2408t.f8531a;
            if (context == null) {
                return false;
            }
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            C2387q c2387q = C2408t.m3591d().f8100o;
            if (c2387q != null && c2387q.m3617a()) {
                c2387q.f8440e.f8545h = true;
            }
            if (z) {
                context.startActivity(Intent.createChooser(intent, "Handle this via..."));
                return true;
            }
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            C0082b.m8750l(0, 1, e.toString(), true);
            return false;
        }
    }

    /* renamed from: i */
    public static boolean m3662i(AbstractRunnableC2317b abstractRunnableC2317b) {
        Handler m3646y;
        if (abstractRunnableC2317b == null || (m3646y = m3646y()) == null) {
            return false;
        }
        m3646y.removeCallbacks(abstractRunnableC2317b);
        if (abstractRunnableC2317b.mo3644a()) {
            return true;
        }
        if (m3646y.getLooper() == Looper.myLooper()) {
            abstractRunnableC2317b.run();
            return true;
        }
        m3646y.post(abstractRunnableC2317b);
        return true;
    }

    /* renamed from: j */
    public static boolean m3661j(Runnable runnable) {
        return m3658m(f8262a, runnable);
    }

    /* renamed from: k */
    public static boolean m3660k(Runnable runnable, long j) {
        if (runnable == null) {
            return false;
        }
        if (j <= 0) {
            return m3652s(runnable);
        }
        Handler m3646y = m3646y();
        if (m3646y == null) {
            return false;
        }
        return m3646y.postDelayed(runnable, j);
    }

    /* renamed from: l */
    public static boolean m3659l(String str, int i) {
        Context context = C2408t.f8531a;
        if (context != null) {
            m3652s(new RunnableC2316a(context, str, i));
            return true;
        }
        return false;
    }

    /* renamed from: m */
    public static boolean m3658m(ExecutorService executorService, Runnable runnable) {
        try {
            executorService.execute(runnable);
            return true;
        } catch (RejectedExecutionException e) {
            return false;
        }
    }

    /* renamed from: n */
    public static int m3657n(View view) {
        if (view == null) {
            return 0;
        }
        int[] iArr = {0, 0};
        view.getLocationOnScreen(iArr);
        return (int) (iArr[1] / C2408t.m3591d().m3721m().m3779f());
    }

    /* renamed from: o */
    public static String m3656o(Context context, String str) {
        SharedPreferences m3651t = m3651t(context);
        String str2 = null;
        try {
            str2 = m3651t.getString(str, null);
        } catch (ClassCastException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Key " + str + " in SharedPreferences ");
            sb.append("does not have a String value.");
            C0082b.m8750l(0, 1, sb.toString(), true);
        }
        return str2;
    }

    /* renamed from: p */
    public static String m3655p(C2200d4 c2200d4) throws JSONException {
        String str = "";
        for (int i = 0; i < c2200d4.m3762c(); i++) {
            String str2 = str;
            if (i > 0) {
                str2 = C1676a.m4789h(str, ",");
            }
            StringBuilder m8752j = C0082b.m8752j(str2);
            m8752j.append(c2200d4.f8025a.getInt(i));
            str = m8752j.toString();
        }
        return str;
    }

    /* renamed from: q */
    public static String m3654q(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                int i = (b >>> 4) & 15;
                int i2 = 0;
                while (true) {
                    sb.append((char) ((i < 0 || i > 9) ? (i - 10) + 97 : i + 48));
                    i = b & 15;
                    if (i2 >= 1) {
                        break;
                    }
                    i2++;
                }
            }
            return sb.toString();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: r */
    public static boolean m3653r(AudioManager audioManager) {
        boolean z = true;
        if (audioManager == null) {
            C0082b.m8750l(0, 0, C0608b.m7626i("isAudioEnabled() called with a null AudioManager"), true);
            return false;
        }
        try {
            if (audioManager.getStreamVolume(3) <= 0) {
                z = false;
            }
            return z;
        } catch (Exception e) {
            StringBuilder m8752j = C0082b.m8752j("Exception occurred when accessing AudioManager.getStreamVolume: ");
            m8752j.append(e.toString());
            C0082b.m8750l(0, 0, m8752j.toString(), true);
            return false;
        }
    }

    /* renamed from: s */
    public static boolean m3652s(Runnable runnable) {
        Handler m3646y;
        if (runnable == null || (m3646y = m3646y()) == null) {
            return false;
        }
        if (m3646y.getLooper() != Looper.myLooper()) {
            return m3646y.post(runnable);
        }
        runnable.run();
        return true;
    }

    /* renamed from: t */
    public static SharedPreferences m3651t(Context context) {
        SharedPreferences sharedPreferences;
        try {
            Class.forName("androidx.preference.PreferenceManager");
            sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        } catch (ClassNotFoundException e) {
            sharedPreferences = context.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        }
        return sharedPreferences;
    }

    /* renamed from: u */
    public static String m3650u() {
        Context context = C2408t.f8531a;
        if (context == null) {
            return "1.0";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            C2415u.C2416a c2416a = new C2415u.C2416a();
            c2416a.f8564a.append("Failed to retrieve package info.");
            c2416a.m3580a(C2415u.f8561f);
            return "1.0";
        }
    }

    /* renamed from: v */
    public static boolean m3649v(Runnable runnable) {
        Handler m3646y;
        if (runnable == null || (m3646y = m3646y()) == null) {
            return false;
        }
        m3646y.removeCallbacks(runnable);
        return true;
    }

    /* renamed from: w */
    public static boolean m3648w(String str) {
        Context context = C2408t.f8531a;
        if (context == null) {
            return false;
        }
        try {
            (context instanceof Application ? (Application) context : ((Activity) context).getApplication()).getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: x */
    public static int m3647x(String str) {
        return !str.equals("portrait") ? !str.equals("landscape") ? -1 : 1 : 0;
    }

    /* renamed from: y */
    public static Handler m3646y() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null) {
            return null;
        }
        if (f8263b == null) {
            f8263b = new Handler(mainLooper);
        }
        return f8263b;
    }

    /* renamed from: z */
    public static boolean m3645z(String str) {
        if (str == null || str.length() > 128) {
            C0082b.m8750l(0, 1, C0608b.m7626i("String must be non-null and the max length is 128 characters."), false);
            return false;
        }
        return true;
    }
}
