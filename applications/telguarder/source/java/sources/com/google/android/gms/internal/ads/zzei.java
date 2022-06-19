package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzei.class */
public final class zzei {
    private static final String[] zzxx = {"/aclk", "/pcs/click", "/dbm/clk"};
    private String zzxt = "googleads.g.doubleclick.net";
    private String zzxu = "/pagead/ads";
    private String zzxv = "ad.doubleclick.net";
    private String[] zzxw = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private zzdy zzxy;

    public zzei(zzdy zzdyVar) {
        this.zzxy = zzdyVar;
    }

    private final Uri zza(Uri uri, String str) throws zzeh {
        try {
            boolean zza = zza(uri);
            if (zza) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzeh("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzeh("Query parameter already exists: ms");
            }
            if (!zza) {
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
                return Uri.parse(uri2.substring(0, i2) + "ms" + SimpleComparison.EQUAL_TO_OPERATION + str + "&" + uri2.substring(i2));
            }
            String uri3 = uri.toString();
            int indexOf2 = uri3.indexOf(";adurl");
            if (indexOf2 != -1) {
                int i3 = indexOf2 + 1;
                return Uri.parse(uri3.substring(0, i3) + "dc_ms" + SimpleComparison.EQUAL_TO_OPERATION + str + ";" + uri3.substring(i3));
            }
            String encodedPath = uri.getEncodedPath();
            int indexOf3 = uri3.indexOf(encodedPath);
            return Uri.parse(uri3.substring(0, encodedPath.length() + indexOf3) + ";dc_ms" + SimpleComparison.EQUAL_TO_OPERATION + str + ";" + uri3.substring(indexOf3 + encodedPath.length()));
        } catch (UnsupportedOperationException e) {
            throw new zzeh("Provided Uri is not in a valid state");
        }
    }

    private final boolean zza(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            return uri.getHost().equals(this.zzxv);
        } catch (NullPointerException e) {
            return false;
        }
    }

    public final Uri zza(Uri uri, Context context) throws zzeh {
        return zza(uri, this.zzxy.zzb(context));
    }

    public final Uri zza(Uri uri, Context context, View view, Activity activity) throws zzeh {
        try {
            return zza(uri, this.zzxy.zza(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException e) {
            throw new zzeh("Provided Uri is not in a valid state");
        }
    }

    public final void zza(MotionEvent motionEvent) {
        this.zzxy.zza(motionEvent);
    }

    public final boolean zzb(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            String host = uri.getHost();
            for (String str : this.zzxw) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
            return false;
        } catch (NullPointerException e) {
            return false;
        }
    }

    public final boolean zzc(Uri uri) {
        if (zzb(uri)) {
            for (String str : zzxx) {
                if (uri.getPath().endsWith(str)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final zzdy zzca() {
        return this.zzxy;
    }
}
