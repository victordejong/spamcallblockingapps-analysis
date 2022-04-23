package com.google.android.gms.tagmanager;

import android.net.Uri;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzeh.class */
class zzeh {
    private static zzeh zzbdq;
    private volatile zza zzbdr = zza.NONE;
    private volatile String zzbds = null;
    private volatile String zzazf = null;
    private volatile String zzbdt = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzeh$zza.class */
    enum zza {
        NONE,
        CONTAINER,
        CONTAINER_DEBUG
    }

    zzeh() {
    }

    private static String zzdt(String str) {
        return str.split("&")[0].split("=")[1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzeh zzpc() {
        zzeh zzehVar;
        synchronized (zzeh.class) {
            try {
                if (zzbdq == null) {
                    zzbdq = new zzeh();
                }
                zzehVar = zzbdq;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzehVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getContainerId() {
        return this.zzazf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzb(Uri uri) {
        synchronized (this) {
            try {
                String decode = URLDecoder.decode(uri.toString(), "UTF-8");
                if (decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
                    String valueOf = String.valueOf(decode);
                    zzdi.m328v(valueOf.length() != 0 ? "Container preview url: ".concat(valueOf) : new String("Container preview url: "));
                    if (decode.matches(".*?&gtm_debug=x$")) {
                        this.zzbdr = zza.CONTAINER_DEBUG;
                    } else {
                        this.zzbdr = zza.CONTAINER;
                    }
                    this.zzbdt = uri.getQuery().replace("&gtm_debug=x", "");
                    if (this.zzbdr == zza.CONTAINER || this.zzbdr == zza.CONTAINER_DEBUG) {
                        String valueOf2 = String.valueOf("/r?");
                        String valueOf3 = String.valueOf(this.zzbdt);
                        this.zzbds = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
                    }
                    this.zzazf = zzdt(this.zzbdt);
                    return true;
                } else if (!decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$")) {
                    String valueOf4 = String.valueOf(decode);
                    zzdi.zzab(valueOf4.length() != 0 ? "Invalid preview uri: ".concat(valueOf4) : new String("Invalid preview uri: "));
                    return false;
                } else if (!zzdt(uri.getQuery()).equals(this.zzazf)) {
                    return false;
                } else {
                    String valueOf5 = String.valueOf(this.zzazf);
                    zzdi.m328v(valueOf5.length() != 0 ? "Exit preview mode for container: ".concat(valueOf5) : new String("Exit preview mode for container: "));
                    this.zzbdr = zza.NONE;
                    this.zzbds = null;
                    return true;
                }
            } catch (UnsupportedEncodingException e) {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zza zzpd() {
        return this.zzbdr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzpe() {
        return this.zzbds;
    }
}
