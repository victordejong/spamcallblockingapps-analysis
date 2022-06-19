package cn.jzvd;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Log;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import java.util.Formatter;
import java.util.Locale;
import p020b.p021a.p028o.C1458d;
/* renamed from: cn.jzvd.v */
/* loaded from: classes-dex2jar.jar:cn/jzvd/v.class */
public class C2131v {

    /* renamed from: a */
    public static int f7392a;

    /* renamed from: a */
    public static AppCompatActivity m27950a(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof AppCompatActivity) {
            return (AppCompatActivity) context;
        }
        if (!(context instanceof C1458d)) {
            return null;
        }
        return m27950a(((C1458d) context).getBaseContext());
    }

    /* renamed from: b */
    public static long m27949b(Context context, Object obj) {
        if (!Jzvd.f7279i) {
            return 0L;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("JZVD_PROGRESS", 0);
        return sharedPreferences.getLong("newVersion:" + obj.toString(), 0L);
    }

    /* renamed from: c */
    public static Window m27948c(Context context) {
        return m27950a(context) != null ? m27950a(context).getWindow() : m27943h(context).getWindow();
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: d */
    public static void m27947d(Context context) {
        if (Jzvd.f7276f) {
            m27948c(context).setFlags(1024, 1024);
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: e */
    public static void m27946e(Context context) {
        int i = Build.VERSION.SDK_INT >= 19 ? 5638 : 1542;
        f7392a = m27948c(context).getDecorView().getSystemUiVisibility();
        m27948c(context).getDecorView().setSystemUiVisibility(i);
    }

    /* renamed from: f */
    public static boolean m27945f(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean z = true;
        if (activeNetworkInfo == null || activeNetworkInfo.getType() != 1) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public static void m27944g(Context context, Object obj, long j) {
        if (!Jzvd.f7279i) {
            return;
        }
        Log.i("JZVD", "saveProgress: " + j);
        char c = j;
        if (j < 5000) {
            c = 0;
        }
        context.getSharedPreferences("JZVD_PROGRESS", 0).edit().putLong("newVersion:" + obj.toString(), c).apply();
    }

    /* renamed from: h */
    public static Activity m27943h(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        return m27943h(((ContextWrapper) context).getBaseContext());
    }

    /* renamed from: i */
    public static void m27942i(Context context, int i) {
        if (m27950a(context) != null) {
            m27950a(context).setRequestedOrientation(i);
        } else {
            m27943h(context).setRequestedOrientation(i);
        }
    }

    @SuppressLint({"RestrictedApi"})
    /* renamed from: j */
    public static void m27941j(Context context) {
        if (Jzvd.f7276f) {
            m27948c(context).clearFlags(1024);
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: k */
    public static void m27940k(Context context) {
        m27948c(context).getDecorView().setSystemUiVisibility(f7392a);
    }

    /* renamed from: l */
    public static String m27939l(long j) {
        if (j <= 0 || j >= 86400000) {
            return "00:00";
        }
        long j2 = j / 1000;
        int i = (int) (j2 % 60);
        int i2 = (int) ((j2 / 60) % 60);
        int i3 = (int) (j2 / 3600);
        Formatter formatter = new Formatter(new StringBuilder(), Locale.getDefault());
        return i3 > 0 ? formatter.format("%d:%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i2), Integer.valueOf(i)).toString() : formatter.format("%02d:%02d", Integer.valueOf(i2), Integer.valueOf(i)).toString();
    }
}
