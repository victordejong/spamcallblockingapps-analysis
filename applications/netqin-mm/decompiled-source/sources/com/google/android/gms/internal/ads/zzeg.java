package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.ExtraHints;
import com.inmobi.ads.C8094ai;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeg.class */
public final class zzeg {

    /* renamed from: d */
    public static final String[] f27992d = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* renamed from: a */
    public String f27993a = "ad.doubleclick.net";

    /* renamed from: b */
    public String[] f27994b = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    /* renamed from: c */
    public zzdw f27995c;

    public zzeg(zzdw zzdwVar) {
        this.f27995c = zzdwVar;
    }

    /* renamed from: a */
    public final Uri m12602a(Uri uri, Context context) throws zzef {
        return m12600a(uri, this.f27995c.mo13024a(context));
    }

    /* renamed from: a */
    public final Uri m12601a(Uri uri, Context context, View view, Activity activity) throws zzef {
        try {
            return m12600a(uri, this.f27995c.mo13021a(context, uri.getQueryParameter(C8094ai.f31656b), view, activity));
        } catch (UnsupportedOperationException e) {
            throw new zzef("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: a */
    public final Uri m12600a(Uri uri, String str) throws zzef {
        try {
            boolean a = m12603a(uri);
            if (a) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzef("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzef("Query parameter already exists: ms");
            }
            if (a) {
                String uri2 = uri.toString();
                int indexOf = uri2.indexOf(";adurl");
                if (indexOf != -1) {
                    int i = indexOf + 1;
                    return Uri.parse(uri2.substring(0, i) + "dc_ms=" + str + ExtraHints.KEYWORD_SEPARATOR + uri2.substring(i));
                }
                String encodedPath = uri.getEncodedPath();
                int indexOf2 = uri2.indexOf(encodedPath);
                return Uri.parse(uri2.substring(0, encodedPath.length() + indexOf2) + ExtraHints.KEYWORD_SEPARATOR + "dc_ms=" + str + ExtraHints.KEYWORD_SEPARATOR + uri2.substring(indexOf2 + encodedPath.length()));
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
            throw new zzef("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: a */
    public final zzdw m12604a() {
        return this.f27995c;
    }

    /* renamed from: a */
    public final void m12599a(MotionEvent motionEvent) {
        this.f27995c.mo13019a(motionEvent);
    }

    /* renamed from: a */
    public final boolean m12603a(Uri uri) {
        if (uri != null) {
            try {
                return uri.getHost().equals(this.f27993a);
            } catch (NullPointerException e) {
                return false;
            }
        } else {
            throw null;
        }
    }

    /* renamed from: b */
    public final boolean m12598b(Uri uri) {
        if (uri != null) {
            try {
                String host = uri.getHost();
                for (String str : this.f27994b) {
                    if (host.endsWith(str)) {
                        return true;
                    }
                }
                return false;
            } catch (NullPointerException e) {
                return false;
            }
        } else {
            throw null;
        }
    }

    /* renamed from: c */
    public final boolean m12597c(Uri uri) {
        if (!m12598b(uri)) {
            return false;
        }
        for (String str : f27992d) {
            if (uri.getPath().endsWith(str)) {
                return true;
            }
        }
        return false;
    }
}
