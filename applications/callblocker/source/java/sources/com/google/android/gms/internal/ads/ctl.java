package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ctl.class */
public final class ctl {

    /* renamed from: e */
    private static final String[] f13673e = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* renamed from: a */
    private String f13674a = "googleads.g.doubleclick.net";

    /* renamed from: b */
    private String f13675b = "/pagead/ads";

    /* renamed from: c */
    private String f13676c = "ad.doubleclick.net";

    /* renamed from: d */
    private String[] f13677d = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    /* renamed from: f */
    private cjd f13678f;

    public ctl(cjd cjdVar) {
        this.f13678f = cjdVar;
    }

    /* renamed from: a */
    private final Uri m10666a(Uri uri, String str) {
        Uri parse;
        try {
            boolean m10663c = m10663c(uri);
            if (m10663c) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzdw("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzdw("Query parameter already exists: ms");
            }
            if (m10663c) {
                String uri2 = uri.toString();
                int indexOf = uri2.indexOf(";adurl");
                if (indexOf != -1) {
                    parse = Uri.parse(uri2.substring(0, indexOf + 1) + "dc_ms=" + str + ";" + uri2.substring(indexOf + 1));
                } else {
                    String encodedPath = uri.getEncodedPath();
                    int indexOf2 = uri2.indexOf(encodedPath);
                    parse = Uri.parse(uri2.substring(0, encodedPath.length() + indexOf2) + ";dc_ms=" + str + ";" + uri2.substring(encodedPath.length() + indexOf2));
                }
            } else {
                String uri3 = uri.toString();
                int indexOf3 = uri3.indexOf("&adurl");
                int i = indexOf3;
                if (indexOf3 == -1) {
                    i = uri3.indexOf("?adurl");
                }
                parse = i != -1 ? Uri.parse(uri3.substring(0, i + 1) + "ms=" + str + "&" + uri3.substring(i + 1)) : uri.buildUpon().appendQueryParameter("ms", str).build();
            }
            return parse;
        } catch (UnsupportedOperationException e) {
            throw new zzdw("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: c */
    private final boolean m10663c(Uri uri) {
        boolean z;
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            z = uri.getHost().equals(this.f13676c);
        } catch (NullPointerException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final Uri m10668a(Uri uri, Context context) {
        return m10666a(uri, this.f13678f.mo11053a(context));
    }

    /* renamed from: a */
    public final Uri m10667a(Uri uri, Context context, View view, Activity activity) {
        try {
            return m10666a(uri, this.f13678f.mo11048a(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException e) {
            throw new zzdw("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: a */
    public final cjd m10670a() {
        return this.f13678f;
    }

    /* renamed from: a */
    public final void m10665a(MotionEvent motionEvent) {
        this.f13678f.mo11047a(motionEvent);
    }

    /* renamed from: a */
    public final boolean m10669a(Uri uri) {
        boolean z;
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            String[] strArr = this.f13677d;
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (host.endsWith(strArr[i])) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        } catch (NullPointerException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m10664b(Uri uri) {
        boolean z = false;
        if (m10669a(uri)) {
            String[] strArr = f13673e;
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                }
                if (uri.getPath().endsWith(strArr[i])) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        return z;
    }
}
