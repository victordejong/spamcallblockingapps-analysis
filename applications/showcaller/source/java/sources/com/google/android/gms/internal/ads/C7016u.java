package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.u */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u.class */
public final class C7016u {

    /* renamed from: a */
    private static final String[] f30444a = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* renamed from: b */
    private final String f30445b = "ad.doubleclick.net";

    /* renamed from: c */
    private final String[] f30446c = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    /* renamed from: d */
    private final AbstractC6868q f30447d;

    @Deprecated
    public C7016u(AbstractC6868q abstractC6868q) {
        this.f30447d = abstractC6868q;
    }

    /* renamed from: g */
    private final Uri m10445g(Uri uri, String str) {
        Uri uri2;
        Uri uri3;
        Objects.requireNonNull(uri);
        try {
            try {
                if (uri.getHost().equals(this.f30445b)) {
                    if (uri.toString().contains("dc_ms=")) {
                        throw new zzaat("Parameter already exists: dc_ms");
                    }
                    String uri4 = uri.toString();
                    int indexOf = uri4.indexOf(";adurl");
                    if (indexOf != -1) {
                        int i = indexOf + 1;
                        uri3 = Uri.parse(uri4.substring(0, i) + "dc_ms=" + str + ";" + uri4.substring(i));
                    } else {
                        String encodedPath = uri.getEncodedPath();
                        int indexOf2 = uri4.indexOf(encodedPath);
                        uri3 = Uri.parse(uri4.substring(0, encodedPath.length() + indexOf2) + ";dc_ms=" + str + ";" + uri4.substring(indexOf2 + encodedPath.length()));
                    }
                    return uri3;
                }
            } catch (NullPointerException e) {
            }
            if (uri.getQueryParameter("ms") != null) {
                throw new zzaat("Query parameter already exists: ms");
            }
            String uri5 = uri.toString();
            int indexOf3 = uri5.indexOf("&adurl");
            int i2 = indexOf3;
            if (indexOf3 == -1) {
                i2 = uri5.indexOf("?adurl");
            }
            if (i2 != -1) {
                int i3 = i2 + 1;
                uri2 = Uri.parse(uri5.substring(0, i3) + "ms=" + str + "&" + uri5.substring(i3));
            } else {
                uri2 = uri.buildUpon().appendQueryParameter("ms", str).build();
            }
            return uri2;
        } catch (UnsupportedOperationException e2) {
            throw new zzaat("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: a */
    public final boolean m10451a(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            String host = uri.getHost();
            String[] strArr = this.f30446c;
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

    @Deprecated
    /* renamed from: b */
    public final AbstractC6868q m10450b() {
        return this.f30447d;
    }

    @Deprecated
    /* renamed from: c */
    public final Uri m10449c(Uri uri, Context context) {
        return m10445g(uri, this.f30447d.mo11751a(context));
    }

    @Deprecated
    /* renamed from: d */
    public final void m10448d(MotionEvent motionEvent) {
        this.f30447d.mo11746g(motionEvent);
    }

    @Deprecated
    /* renamed from: e */
    public final Uri m10447e(Uri uri, Context context, View view, Activity activity) {
        try {
            return m10445g(uri, this.f30447d.mo11748e(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException e) {
            throw new zzaat("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: f */
    public final boolean m10446f(Uri uri) {
        if (m10451a(uri)) {
            String[] strArr = f30444a;
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
