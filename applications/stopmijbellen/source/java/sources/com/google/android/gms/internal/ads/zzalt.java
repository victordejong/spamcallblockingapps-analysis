package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalt.class */
public final class zzalt {
    private static final String[] zza = {"/aclk", "/pcs/click", "/dbm/clk"};
    private final String zzb = "ad.doubleclick.net";
    private final String[] zzc = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private final zzalp zzd;

    @Deprecated
    public zzalt(zzalp zzalpVar) {
        this.zzd = zzalpVar;
    }

    private final Uri zzg(Uri uri, String str) throws zzalu {
        Uri uri2;
        Uri uri3;
        Objects.requireNonNull(uri);
        try {
            try {
                if (uri.getHost().equals(this.zzb)) {
                    if (uri.toString().contains("dc_ms=")) {
                        throw new zzalu("Parameter already exists: dc_ms");
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
            } catch (UnsupportedOperationException e) {
                throw new zzalu("Provided Uri is not in a valid state");
            }
        } catch (NullPointerException e2) {
        }
        if (uri.getQueryParameter("ms") == null) {
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
        }
        throw new zzalu("Query parameter already exists: ms");
    }

    @Deprecated
    public final Uri zza(Uri uri, Context context, View view, Activity activity) throws zzalu {
        try {
            return zzg(uri, this.zzd.zzf(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException e) {
            throw new zzalu("Provided Uri is not in a valid state");
        }
    }

    @Deprecated
    public final Uri zzb(Uri uri, Context context) throws zzalu {
        return zzg(uri, this.zzd.zzg(context));
    }

    @Deprecated
    public final zzalp zzc() {
        return this.zzd;
    }

    @Deprecated
    public final void zzd(MotionEvent motionEvent) {
        this.zzd.zzk(motionEvent);
    }

    public final boolean zze(Uri uri) {
        if (zzf(uri)) {
            String[] strArr = zza;
            for (int i = 0; i < 3; i++) {
                if (uri.getPath().endsWith(strArr[i])) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final boolean zzf(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            String host = uri.getHost();
            String[] strArr = this.zzc;
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
}
