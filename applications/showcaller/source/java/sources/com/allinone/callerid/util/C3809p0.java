package com.allinone.callerid.util;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.telephony.PhoneNumberUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.widget.Toast;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.p204j1.C3776a;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
/* renamed from: com.allinone.callerid.util.p0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/p0.class */
public class C3809p0 {

    /* renamed from: a */
    private static boolean f12056a = false;

    /* renamed from: b */
    private static int f12057b;

    /* renamed from: a */
    public static void m24078a(Context context, String str) {
        if (C0586a.m33353a(context, "android.permission.CALL_PHONE") == 0) {
            try {
                if (!C3767h1.m24216w0(str)) {
                    Intent intent = new Intent("android.intent.action.CALL", Uri.parse("tel:" + Uri.encode(str)));
                    intent.setFlags(268435456);
                    context.startActivity(intent);
                } else {
                    Toast.makeText(context, context.getResources().getString(R$string.unknow_call), 1).show();
                }
            } catch (Exception e) {
                Toast.makeText(context, context.getResources().getString(R$string.no_phone_related), 1).show();
            }
        }
    }

    /* renamed from: b */
    public static String m24077b(String str) {
        String str2;
        try {
            str2 = Build.VERSION.SDK_INT >= 21 ? PhoneNumberUtils.formatNumber(str, C3806p.m24083d(EZCallApplication.m26146c()).getIso_code().split("/")[0]) : PhoneNumberUtils.formatNumber(str);
        } catch (Exception e) {
            e.printStackTrace();
            str2 = "";
        }
        return str2;
    }

    /* renamed from: c */
    public static String m24076c(Context context) {
        String str;
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            str = displayMetrics.widthPixels + BasicSQLHelper.ALL + displayMetrics.heightPixels;
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return str;
    }

    /* renamed from: d */
    public static int m24075d(Context context) {
        int i;
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            i = displayMetrics.widthPixels;
        } catch (Exception e) {
            e.printStackTrace();
            i = 0;
        }
        return i;
    }

    /* renamed from: e */
    public static void m24074e(Context context) {
        AudioManager audioManager;
        if (f12056a) {
            if (Build.VERSION.SDK_INT >= 24) {
                if (!C3776a.m24153l() || (audioManager = (AudioManager) context.getSystemService("audio")) == null) {
                    return;
                }
                audioManager.setRingerMode(f12057b);
                audioManager.getStreamVolume(2);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "RINGING 取消静音");
                }
                f12056a = false;
                return;
            }
            AudioManager audioManager2 = (AudioManager) context.getSystemService("audio");
            if (audioManager2 == null) {
                return;
            }
            audioManager2.setRingerMode(2);
            audioManager2.getStreamVolume(2);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "RINGING 取消静音");
            }
            f12056a = false;
        }
    }

    /* renamed from: f */
    public static void m24073f(Context context) {
        AudioManager audioManager;
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "静音");
        }
        if (Build.VERSION.SDK_INT >= 24) {
            if (!C3776a.m24153l() || (audioManager = (AudioManager) context.getSystemService("audio")) == null) {
                return;
            }
            f12057b = audioManager.getRingerMode();
            audioManager.setRingerMode(0);
            audioManager.getStreamVolume(2);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("wbb", "RINGING 已被静音");
            }
            f12056a = true;
            return;
        }
        AudioManager audioManager2 = (AudioManager) context.getSystemService("audio");
        if (audioManager2 == null) {
            return;
        }
        f12057b = audioManager2.getRingerMode();
        audioManager2.setRingerMode(0);
        audioManager2.getStreamVolume(2);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("wbb", "RINGING 已被静音");
        }
        f12056a = true;
    }
}
