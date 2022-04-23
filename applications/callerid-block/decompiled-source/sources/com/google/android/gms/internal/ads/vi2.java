package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vi2.class */
public final class vi2 {
    static {
        "0123456789abcdef".toCharArray();
    }

    /* renamed from: a */
    public static String m5241a(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID fromString = UUID.fromString(str);
                byte[] bArr = new byte[16];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                str2 = ir1.m7099a(bArr, true);
            }
        }
        return str2;
    }

    /* renamed from: b */
    public static String m5240b(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        ab2.m8149c(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* renamed from: c */
    public static boolean m5239c(String str) {
        return str == null || str.isEmpty();
    }

    /* renamed from: d */
    public static boolean m5238d() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: e */
    public static boolean m5237e(DisplayMetrics displayMetrics) {
        return (displayMetrics == null || displayMetrics.density == 0.0f) ? false : true;
    }

    /* renamed from: f */
    public static long m5236f(double d, int i, DisplayMetrics displayMetrics) {
        double d2 = displayMetrics.density;
        Double.isNaN(d2);
        return Math.round(d / d2);
    }

    /* renamed from: g */
    public static Activity m5235g(View view) {
        View rootView = view.getRootView();
        if (rootView != null) {
            view = rootView;
        }
        Context context = view.getContext();
        for (int i = 0; (context instanceof ContextWrapper) && i < 10; i++) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }
}
