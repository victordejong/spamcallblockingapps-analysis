package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/die.class */
public final class die {

    /* renamed from: a  reason: collision with root package name */
    static final String[] f26843a = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* renamed from: b  reason: collision with root package name */
    public cxx f26844b;

    /* renamed from: c  reason: collision with root package name */
    private String f26845c = "googleads.g.doubleclick.net";

    /* renamed from: d  reason: collision with root package name */
    private String f26846d = "/pagead/ads";
    private String e = "ad.doubleclick.net";
    private String[] f = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    public die(cxx cxxVar) {
        this.f26844b = cxxVar;
    }

    private final boolean b(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            return uri.getHost().equals(this.e);
        } catch (NullPointerException e) {
            return false;
        }
    }

    public final Uri a(Uri uri, Context context, View view, Activity activity) throws zzeh {
        try {
            return a(uri, this.f26844b.zza(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException e) {
            throw new zzeh("Provided Uri is not in a valid state");
        }
    }

    public final Uri a(Uri uri, String str) throws zzeh {
        try {
            boolean b2 = b(uri);
            if (b2) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzeh("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzeh("Query parameter already exists: ms");
            }
            if (b2) {
                String uri2 = uri.toString();
                int indexOf = uri2.indexOf(";adurl");
                if (indexOf != -1) {
                    int i = indexOf + 1;
                    return Uri.parse(uri2.substring(0, i) + "dc_ms=" + str + ";" + uri2.substring(i));
                }
                String encodedPath = uri.getEncodedPath();
                int indexOf2 = uri2.indexOf(encodedPath);
                return Uri.parse(uri2.substring(0, encodedPath.length() + indexOf2) + ";dc_ms=" + str + ";" + uri2.substring(indexOf2 + encodedPath.length()));
            }
            String uri3 = uri.toString();
            int indexOf3 = uri3.indexOf("&adurl");
            int i2 = indexOf3;
            if (indexOf3 == -1) {
                i2 = uri3.indexOf("?adurl");
            }
            if (i2 == -1) {
                return uri.buildUpon().appendQueryParameter("ms", str).build();
            }
            int i3 = i2 + 1;
            return Uri.parse(uri3.substring(0, i3) + "ms=" + str + "&" + uri3.substring(i3));
        } catch (UnsupportedOperationException e) {
            throw new zzeh("Provided Uri is not in a valid state");
        }
    }

    public final void a(MotionEvent motionEvent) {
        this.f26844b.zza(motionEvent);
    }

    public final boolean a(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            String host = uri.getHost();
            for (String str : this.f) {
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
