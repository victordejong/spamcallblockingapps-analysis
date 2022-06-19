package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zh2.class */
public final class zh2 {

    /* renamed from: d */
    private static final String[] f9338d = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* renamed from: a */
    private final String f9339a = "ad.doubleclick.net";

    /* renamed from: b */
    private final String[] f9340b = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    /* renamed from: c */
    private final xf2 f9341c;

    public zh2(xf2 xf2Var) {
        this.f9341c = xf2Var;
    }

    /* renamed from: g */
    private final Uri m4628g(Uri uri, String str) {
        Uri uri2;
        String encodedPath;
        String str2;
        uri.getClass();
        try {
            try {
                if (uri.getHost().equals(this.f9339a)) {
                    if (uri.toString().contains("dc_ms=")) {
                        throw new zzfi("Parameter already exists: dc_ms");
                    }
                    String uri3 = uri.toString();
                    int indexOf = uri3.indexOf(";adurl");
                    if (indexOf != -1) {
                        int i = indexOf + 1;
                        str2 = uri3.substring(0, i) + "dc_ms=" + str + ";" + uri3.substring(i);
                    } else {
                        int indexOf2 = uri3.indexOf(uri.getEncodedPath());
                        str2 = uri3.substring(0, encodedPath.length() + indexOf2) + ";dc_ms=" + str + ";" + uri3.substring(indexOf2 + encodedPath.length());
                    }
                    return Uri.parse(str2);
                }
            } catch (UnsupportedOperationException e) {
                throw new zzfi("Provided Uri is not in a valid state");
            }
        } catch (NullPointerException e2) {
        }
        if (uri.getQueryParameter("ms") == null) {
            String uri4 = uri.toString();
            int indexOf3 = uri4.indexOf("&adurl");
            int i2 = indexOf3;
            if (indexOf3 == -1) {
                i2 = uri4.indexOf("?adurl");
            }
            if (i2 != -1) {
                int i3 = i2 + 1;
                uri2 = Uri.parse(uri4.substring(0, i3) + "ms=" + str + "&" + uri4.substring(i3));
            } else {
                uri2 = uri.buildUpon().appendQueryParameter("ms", str).build();
            }
            return uri2;
        }
        throw new zzfi("Query parameter already exists: ms");
    }

    /* renamed from: a */
    public final boolean m4634a(Uri uri) {
        uri.getClass();
        try {
            String host = uri.getHost();
            String[] strArr = this.f9340b;
            for (int i = 0; i < 3; i++) {
                if (host.endsWith(strArr[i])) {
                    return true;
                }
            }
            return false;
        } catch (NullPointerException e) {
            return false;
        }
    }

    /* renamed from: b */
    public final xf2 m4633b() {
        return this.f9341c;
    }

    /* renamed from: c */
    public final Uri m4632c(Uri uri, Context context) {
        return m4628g(uri, this.f9341c.m4906d(context));
    }

    /* renamed from: d */
    public final void m4631d(MotionEvent motionEvent) {
        this.f9341c.m4909a(motionEvent);
    }

    /* renamed from: e */
    public final Uri m4630e(Uri uri, Context context, View view, Activity activity) {
        try {
            return m4628g(uri, this.f9341c.m4905e(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException e) {
            throw new zzfi("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: f */
    public final boolean m4629f(Uri uri) {
        if (m4634a(uri)) {
            String[] strArr = f9338d;
            for (int i = 0; i < 3; i++) {
                if (uri.getPath().endsWith(strArr[i])) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
