package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaas.class */
public final class zzaas {
    private static final String[] zzc = {"/aclk", "/pcs/click", "/dbm/clk"};
    private final String zza = "ad.doubleclick.net";
    private final String[] zzb = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private final zzaao zzd;

    @Deprecated
    public zzaas(zzaao zzaaoVar) {
        this.zzd = zzaaoVar;
    }

    private final Uri zzg(Uri uri, String str) throws zzaat {
        Uri uri2;
        Uri uri3;
        Objects.requireNonNull(uri);
        try {
            try {
                if (uri.getHost().equals(this.zza)) {
                    if (uri.toString().contains("dc_ms=")) {
                        throw new zzaat("Parameter already exists: dc_ms");
                    }
                    String uri4 = uri.toString();
                    int indexOf = uri4.indexOf(";adurl");
                    if (indexOf != -1) {
                        int i = indexOf + 1;
                        uri3 = Uri.parse(uri4.substring(0, i) + "dc_ms" + ContainerUtils.KEY_VALUE_DELIMITER + str + ";" + uri4.substring(i));
                    } else {
                        String encodedPath = uri.getEncodedPath();
                        int indexOf2 = uri4.indexOf(encodedPath);
                        uri3 = Uri.parse(uri4.substring(0, encodedPath.length() + indexOf2) + ";dc_ms" + ContainerUtils.KEY_VALUE_DELIMITER + str + ";" + uri4.substring(indexOf2 + encodedPath.length()));
                    }
                    return uri3;
                }
            } catch (UnsupportedOperationException e) {
                throw new zzaat("Provided Uri is not in a valid state");
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
                uri2 = Uri.parse(uri5.substring(0, i3) + "ms" + ContainerUtils.KEY_VALUE_DELIMITER + str + ContainerUtils.FIELD_DELIMITER + uri5.substring(i3));
            } else {
                uri2 = uri.buildUpon().appendQueryParameter("ms", str).build();
            }
            return uri2;
        }
        throw new zzaat("Query parameter already exists: ms");
    }

    public final boolean zza(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            String host = uri.getHost();
            String[] strArr = this.zzb;
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
    public final zzaao zzb() {
        return this.zzd;
    }

    @Deprecated
    public final Uri zzc(Uri uri, Context context) throws zzaat {
        return zzg(uri, this.zzd.zzp(context));
    }

    @Deprecated
    public final void zzd(MotionEvent motionEvent) {
        this.zzd.zzj(motionEvent);
    }

    @Deprecated
    public final Uri zze(Uri uri, Context context, View view, Activity activity) throws zzaat {
        try {
            return zzg(uri, this.zzd.zzl(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException e) {
            throw new zzaat("Provided Uri is not in a valid state");
        }
    }

    public final boolean zzf(Uri uri) {
        if (zza(uri)) {
            String[] strArr = zzc;
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
