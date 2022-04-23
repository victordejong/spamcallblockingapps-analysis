package com.callerid.block.util;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.telephony.PhoneNumberUtils;
import android.widget.Toast;
import com.callerid.block.R$string;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.p060x0.C1230a;
/* renamed from: com.callerid.block.util.i0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/i0.class */
public class C1183i0 {

    /* renamed from: a */
    private static boolean f5002a = false;

    /* renamed from: b */
    private static int f5003b;

    /* renamed from: c */
    private static int f5004c;

    /* renamed from: a */
    public static void m9834a(Context context, String str) {
        if (C1230a.m9514b(context, "android.permission.CALL_PHONE")) {
            try {
                if (!C1216t0.m9587Y(str)) {
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
    public static String m9833b(String str) {
        String str2;
        try {
            str2 = Build.VERSION.SDK_INT >= 21 ? PhoneNumberUtils.formatNumber(str, C1184j.m9826d(EZCallApplication.m10163c()).getIso_code().split("/")[0]) : PhoneNumberUtils.formatNumber(str);
        } catch (Exception e) {
            e.printStackTrace();
            str2 = "";
        }
        return str2;
    }

    /* renamed from: c */
    public static boolean m9832c(Context context) {
        boolean z = false;
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                z = !((PowerManager) context.getSystemService("power")).isIgnoringBatteryOptimizations(context.getPackageName());
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public static void m9831d(Context context) {
        AudioManager audioManager;
        try {
            if (f5002a && (audioManager = (AudioManager) context.getSystemService("audio")) != null) {
                audioManager.setRingerMode(f5003b);
                audioManager.setStreamVolume(2, f5004c, 0);
                if (C1227w.f5084a) {
                    C1227w.m9527a("tony", "RINGING 取消静音");
                }
                f5002a = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static void m9830e(Context context) {
        if (C1227w.f5084a) {
            C1227w.m9527a("tony", "静音");
        }
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager != null) {
                f5003b = audioManager.getRingerMode();
                f5004c = audioManager.getStreamVolume(2);
                if (C1227w.f5084a) {
                    C1227w.m9527a("tony", "模式: " + f5003b);
                    C1227w.m9527a("tony", "初始音量: " + f5004c);
                }
                audioManager.setStreamVolume(2, 0, 0);
                audioManager.setRingerMode(0);
                if (C1227w.f5084a) {
                    C1227w.m9527a("tony", "RINGING 已被静音");
                }
                f5002a = true;
            }
        } catch (Exception e) {
            if (C1227w.f5084a) {
                C1227w.m9527a("tony", "Exception:" + e.getMessage());
            }
            e.printStackTrace();
        }
    }
}
