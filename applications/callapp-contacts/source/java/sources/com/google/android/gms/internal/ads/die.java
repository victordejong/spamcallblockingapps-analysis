package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/die.class */
public final class die {

    /* renamed from: a */
    static final String[] f47084a = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* renamed from: b */
    public cxx f47085b;

    /* renamed from: c */
    private String f47086c = "googleads.g.doubleclick.net";

    /* renamed from: d */
    private String f47087d = "/pagead/ads";

    /* renamed from: e */
    private String f47088e = "ad.doubleclick.net";

    /* renamed from: f */
    private String[] f47089f = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    public die(cxx cxxVar) {
        this.f47085b = cxxVar;
    }

    /* renamed from: b */
    private final boolean m16639b(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            return uri.getHost().equals(this.f47088e);
        } catch (NullPointerException e) {
            return false;
        }
    }

    /* renamed from: a */
    public final Uri m16642a(Uri uri, Context context, View view, Activity activity) throws zzeh {
        try {
            return m16641a(uri, this.f47085b.zza(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException e) {
            throw new zzeh("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: a */
    public final Uri m16641a(Uri uri, String str) throws zzeh {
        try {
            boolean m16639b = m16639b(uri);
            if (m16639b) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzeh("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzeh("Query parameter already exists: ms");
            }
            if (!m16639b) {
                String uri2 = uri.toString();
                int indexOf = uri2.indexOf("&adurl");
                int i = indexOf;
                if (indexOf == -1) {
                    i = uri2.indexOf("?adurl");
                }
                if (i == -1) {
                    return uri.buildUpon().appendQueryParameter("ms", str).build();
                }
                int i2 = i + 1;
                return Uri.parse(uri2.substring(0, i2) + "ms=" + str + "&" + uri2.substring(i2));
            }
            String uri3 = uri.toString();
            int indexOf2 = uri3.indexOf(";adurl");
            if (indexOf2 != -1) {
                int i3 = indexOf2 + 1;
                return Uri.parse(uri3.substring(0, i3) + "dc_ms=" + str + ";" + uri3.substring(i3));
            }
            String encodedPath = uri.getEncodedPath();
            int indexOf3 = uri3.indexOf(encodedPath);
            return Uri.parse(uri3.substring(0, encodedPath.length() + indexOf3) + ";dc_ms=" + str + ";" + uri3.substring(indexOf3 + encodedPath.length()));
        } catch (UnsupportedOperationException e) {
            throw new zzeh("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: a */
    public final void m16640a(MotionEvent motionEvent) {
        this.f47085b.zza(motionEvent);
    }

    /* renamed from: a */
    public final boolean m16643a(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            String host = uri.getHost();
            for (String str : this.f47089f) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
            return false;
        } catch (NullPointerException e) {
            return false;
        }
    }
}
