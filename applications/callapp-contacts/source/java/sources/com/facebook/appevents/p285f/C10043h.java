package com.facebook.appevents.p285f;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.callapp.contacts.model.Constants;
import com.facebook.EnumC10396m;
import com.facebook.appevents.C10046g;
import com.facebook.appevents.C10063h;
import com.facebook.appevents.C10097m;
import com.facebook.internal.C10336x;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.internal.p306d.C10279a;
import java.io.File;
/* renamed from: com.facebook.appevents.f.h */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/h.class */
class C10043h {

    /* renamed from: a */
    private static final String f33333a = "com.facebook.appevents.f.h";

    /* renamed from: b */
    private static final long[] f33334b = {300000, 900000, 1800000, Constants.HOUR_IN_MILLIS, 21600000, 43200000, 86400000, 172800000, 259200000, Constants.WEEK_IN_MILLIS, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    C10043h() {
    }

    /* renamed from: a */
    private static int m23544a(long j) {
        if (C10249a.m23108a(C10043h.class)) {
            return 0;
        }
        int i = 0;
        while (true) {
            try {
                long[] jArr = f33334b;
                if (i >= jArr.length || jArr[i] >= j) {
                    break;
                }
                i++;
            } catch (Throwable th) {
                C10249a.m23106a(th, C10043h.class);
                return 0;
            }
        }
        return i;
    }

    /* renamed from: a */
    private static String m23543a(Context context) {
        if (C10249a.m23108a(C10043h.class)) {
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
            String m23547a = C10041f.m23547a(new File(packageManager.getApplicationInfo(context.getPackageName(), 0).sourceDir));
            sharedPreferences.edit().putString(concat, m23547a).apply();
            return m23547a;
        } catch (Exception e) {
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10043h.class);
            return null;
        }
    }

    /* renamed from: a */
    private static void m23545a() {
        if (C10249a.m23108a(C10043h.class)) {
            return;
        }
        try {
            C10336x.m22993a(EnumC10396m.APP_EVENTS, f33333a, "Clock skew detected");
        } catch (Throwable th) {
            C10249a.m23106a(th, C10043h.class);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0081 A[Catch: all -> 0x0112, TryCatch #0 {all -> 0x0112, blocks: (B:8:0x000e, B:12:0x001a, B:14:0x0023, B:16:0x0034, B:18:0x003e, B:20:0x0048, B:22:0x004e, B:25:0x0058, B:27:0x006d, B:29:0x0077, B:31:0x0081, B:32:0x008a, B:32:0x008a, B:33:0x008d, B:35:0x00cb, B:37:0x00d9), top: B:42:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cb A[Catch: all -> 0x0112, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0112, blocks: (B:8:0x000e, B:12:0x001a, B:14:0x0023, B:16:0x0034, B:18:0x003e, B:20:0x0048, B:22:0x004e, B:25:0x0058, B:27:0x006d, B:29:0x0077, B:31:0x0081, B:32:0x008a, B:32:0x008a, B:33:0x008d, B:35:0x00cb, B:37:0x00d9), top: B:42:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d5  */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m23542a(java.lang.String r10, com.facebook.appevents.p285f.C10042g r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p285f.C10043h.m23542a(java.lang.String, com.facebook.appevents.f.g, java.lang.String):void");
    }

    /* renamed from: a */
    public static void m23541a(String str, String str2, Context context) {
        if (C10249a.m23108a(C10043h.class)) {
            return;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("fb_mobile_launch_source", "Unclassified");
            bundle.putString("fb_mobile_pckg_fp", m23543a(context));
            bundle.putString("fb_mobile_app_cert_hash", C10279a.m23069a(context));
            C10097m c10097m = new C10097m(str, str2, null);
            c10097m.m23414a("fb_mobile_activate_app", bundle);
            if (C10063h.m23490a() == C10046g.EnumC10047a.f33340b) {
                return;
            }
            c10097m.f33445a.m23479b();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10043h.class);
        }
    }
}
