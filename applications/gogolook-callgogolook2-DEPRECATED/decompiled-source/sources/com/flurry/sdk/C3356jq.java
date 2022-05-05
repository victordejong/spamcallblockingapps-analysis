package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Log;
import androidx.media2.exoplayer.external.audio.Sonic;
import com.flurry.android.FlurryAgent;
/* renamed from: com.flurry.sdk.jq */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jq.class */
public final class C3356jq {

    /* renamed from: a */
    public static boolean f5736a = false;

    /* renamed from: b */
    public static int f5737b = 5;

    /* renamed from: c */
    public static boolean f5738c = false;

    /* renamed from: a */
    public static void m32617a() {
        f5736a = true;
    }

    /* renamed from: a */
    public static void m32616a(int i) {
        f5737b = i;
    }

    /* renamed from: a */
    public static void m32615a(int i, String str, String str2) {
        m32604d(i, str, str2);
    }

    /* renamed from: a */
    public static void m32614a(int i, String str, String str2, Throwable th) {
        m32604d(i, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    /* renamed from: a */
    public static void m32613a(String str, String str2) {
        m32610b(3, str, str2);
    }

    /* renamed from: a */
    public static void m32612a(String str, String str2, Throwable th) {
        m32610b(6, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    /* renamed from: b */
    public static void m32611b() {
        f5736a = false;
    }

    /* renamed from: b */
    public static void m32610b(int i, String str, String str2) {
        if (!f5736a && f5737b <= i) {
            m32607c(i, str, str2);
        }
    }

    /* renamed from: b */
    public static void m32609b(String str, String str2) {
        m32610b(6, str, str2);
    }

    /* renamed from: c */
    public static int m32608c() {
        return f5737b;
    }

    /* renamed from: c */
    public static void m32607c(int i, String str, String str2) {
        if (!f5738c) {
            str = FlurryAgent.f3814a;
        }
        int i2 = 0;
        int length = TextUtils.isEmpty(str2) ? 0 : str2.length();
        while (i2 < length) {
            int i3 = 4000 > length - i2 ? length : i2 + Sonic.AMDF_FREQUENCY;
            if (Log.println(i, str, str2.substring(i2, i3)) > 0) {
                i2 = i3;
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public static void m32606c(String str, String str2) {
        m32610b(4, str, str2);
    }

    /* renamed from: d */
    public static void m32604d(int i, String str, String str2) {
        if (f5738c) {
            m32607c(i, str, str2);
        }
    }

    /* renamed from: d */
    public static void m32603d(String str, String str2) {
        m32610b(2, str, str2);
    }

    /* renamed from: d */
    public static boolean m32605d() {
        return f5738c;
    }

    /* renamed from: e */
    public static void m32602e(String str, String str2) {
        m32610b(5, str, str2);
    }
}
