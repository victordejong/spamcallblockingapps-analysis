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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dis.class */
public final class dis {

    /* renamed from: a */
    private static final char[] f14433a = "0123456789abcdef".toCharArray();

    /* renamed from: a */
    public static long m9390a(double d, DisplayMetrics displayMetrics) {
        return Math.round(d / displayMetrics.density);
    }

    /* renamed from: a */
    public static Activity m9388a(View view) {
        Activity activity;
        View rootView = view.getRootView();
        if (rootView != null) {
            view = rootView;
        }
        Context context = view.getContext();
        for (int i = 0; (context instanceof ContextWrapper) && i < 10; i++) {
            if (context instanceof Activity) {
                activity = (Activity) context;
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        activity = null;
        return activity;
    }

    /* renamed from: a */
    public static String m9387a(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID fromString = UUID.fromString(str);
                byte[] bArr = new byte[16];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                str2 = bkl.m11831a(bArr, true);
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static String m9386a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        dap.m10260a(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* renamed from: a */
    public static boolean m9391a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: a */
    public static boolean m9389a(DisplayMetrics displayMetrics) {
        return (displayMetrics == null || displayMetrics.density == 0.0f) ? false : true;
    }

    /* renamed from: b */
    public static boolean m9385b(String str) {
        return str == null || str.isEmpty();
    }
}
