package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtl.class */
public final class dtl {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f27200a = "0123456789abcdef".toCharArray();

    public static long a(double d2, DisplayMetrics displayMetrics) {
        return Math.round(d2 / displayMetrics.density);
    }

    public static Activity a(View view) {
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

    public static String a(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID fromString = UUID.fromString(str);
                byte[] bArr = new byte[16];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                str2 = bxn.a(bArr, true);
            }
        }
        return str2;
    }

    public static String a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        dlf.a(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static boolean a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean a(DisplayMetrics displayMetrics) {
        return (displayMetrics == null || displayMetrics.density == BitmapDescriptorFactory.HUE_RED) ? false : true;
    }

    public static boolean b(String str) {
        return str == null || str.isEmpty();
    }
}
