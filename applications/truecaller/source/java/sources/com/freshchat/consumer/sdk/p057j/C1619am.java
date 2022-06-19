package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.freshchat.consumer.sdk.exception.PermissionNotGrantedException;
import com.freshchat.consumer.sdk.p047b.C1466e;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.j.am */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/am.class */
public class C1619am {

    /* renamed from: iE */
    public static String[] f4375iE = {"android.permission.RECORD_AUDIO", "android.permission.WRITE_EXTERNAL_STORAGE"};

    /* renamed from: iF */
    private static final String[] f4376iF = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"};

    /* renamed from: iG */
    private static final String[] f4377iG = new String[0];

    /* renamed from: a */
    public static boolean m40260a(Context context, String[] strArr) {
        for (String str : strArr) {
            if (!m40252n(context, str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m40259a(int[] iArr) {
        for (int i : iArr) {
            if (i != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: aT */
    public static void m40258aT(Context context) {
        String[] strArr;
        String[] strArr2;
        if (context == null) {
            return;
        }
        for (String str : f4376iF) {
            if (!m40252n(context, str)) {
                throw new PermissionNotGrantedException(str);
            }
        }
        if (C1630aw.m40193fa()) {
            return;
        }
        for (String str2 : f4377iG) {
            if (!m40252n(context, str2) && (!"android.permission.RECORD_AUDIO".equals(str2) || C1466e.m40905i(context).m40962bn())) {
                throw new PermissionNotGrantedException(str2);
            }
        }
    }

    /* renamed from: aU */
    public static boolean m40257aU(Context context) {
        return m40252n(context, "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    /* renamed from: aV */
    public static boolean m40256aV(Context context) {
        return true;
    }

    /* renamed from: aW */
    public static final boolean m40255aW(Context context) {
        String[] strArr;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(C1710g.m39960ab(context), 4096);
            if (packageInfo == null || (strArr = packageInfo.requestedPermissions) == null) {
                return false;
            }
            for (String str : strArr) {
                if ("android.permission.CAMERA".equalsIgnoreCase(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: aX */
    public static final boolean m40254aX(Context context) {
        if (m40255aW(context)) {
            return m40252n(context, "android.permission.CAMERA");
        }
        return true;
    }

    /* renamed from: b */
    public static String[] m40253b(Context context, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (!m40252n(context, str)) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: n */
    public static boolean m40252n(Context context, String str) {
        boolean z = false;
        if (context == null) {
            return false;
        }
        if (C1630aw.m40193fa()) {
            if (context.checkSelfPermission(str) == 0) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (context.checkCallingOrSelfPermission(str) == 0) {
            z2 = true;
        }
        return z2;
    }
}
