package com.facebook.appevents.f;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.callapp.contacts.model.Constants;
import com.facebook.appevents.g;
import com.facebook.internal.b.b.a;
import com.facebook.internal.x;
import com.facebook.m;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/h.class */
class h {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19567a = "com.facebook.appevents.f.h";

    /* renamed from: b  reason: collision with root package name */
    private static final long[] f19568b = {300000, 900000, 1800000, Constants.HOUR_IN_MILLIS, 21600000, 43200000, 86400000, 172800000, 259200000, Constants.WEEK_IN_MILLIS, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    h() {
    }

    private static int a(long j) {
        if (a.a(h.class)) {
            return 0;
        }
        int i = 0;
        while (true) {
            try {
                long[] jArr = f19568b;
                if (i >= jArr.length || jArr[i] >= j) {
                    break;
                }
                i++;
            } catch (Throwable th) {
                a.a(th, h.class);
                return 0;
            }
        }
        return i;
    }

    private static String a(Context context) {
        if (a.a(h.class)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            String concat = "PCKGCHKSUM;".concat(String.valueOf(packageManager.getPackageInfo(context.getPackageName(), 0).versionName));
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            String string = sharedPreferences.getString(concat, null);
            if (string != null && string.length() == 32) {
                return string;
            }
            String a2 = f.a(new File(packageManager.getApplicationInfo(context.getPackageName(), 0).sourceDir));
            sharedPreferences.edit().putString(concat, a2).apply();
            return a2;
        } catch (Exception e) {
            return null;
        } catch (Throwable th) {
            a.a(th, h.class);
            return null;
        }
    }

    private static void a() {
        if (!a.a(h.class)) {
            try {
                x.a(m.APP_EVENTS, f19567a, "Clock skew detected");
            } catch (Throwable th) {
                a.a(th, h.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0081 A[Catch: all -> 0x0112, TryCatch #0 {all -> 0x0112, blocks: (B:8:0x000e, B:12:0x001a, B:14:0x0023, B:16:0x0034, B:18:0x003e, B:20:0x0048, B:22:0x004e, B:25:0x0058, B:27:0x006d, B:29:0x0077, B:31:0x0081, B:32:0x008a, B:32:0x008a, B:33:0x008d, B:35:0x00cb, B:37:0x00d9), top: B:42:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cb A[Catch: all -> 0x0112, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0112, blocks: (B:8:0x000e, B:12:0x001a, B:14:0x0023, B:16:0x0034, B:18:0x003e, B:20:0x0048, B:22:0x004e, B:25:0x0058, B:27:0x006d, B:29:0x0077, B:31:0x0081, B:32:0x008a, B:32:0x008a, B:33:0x008d, B:35:0x00cb, B:37:0x00d9), top: B:42:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.lang.String r10, com.facebook.appevents.f.g r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.f.h.a(java.lang.String, com.facebook.appevents.f.g, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2, Context context) {
        if (!a.a(h.class)) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("fb_mobile_launch_source", "Unclassified");
                bundle.putString("fb_mobile_pckg_fp", a(context));
                bundle.putString("fb_mobile_app_cert_hash", com.facebook.internal.d.a.a(context));
                com.facebook.appevents.m mVar = new com.facebook.appevents.m(str, str2, null);
                mVar.a("fb_mobile_activate_app", bundle);
                if (com.facebook.appevents.h.a() != g.a.f19574b) {
                    mVar.f19658a.b();
                }
            } catch (Throwable th) {
                a.a(th, h.class);
            }
        }
    }
}
