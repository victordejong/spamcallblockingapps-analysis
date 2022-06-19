package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.p014c.C0374a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcm.class */
public final class zzcm {
    private static final C0374a<String, Uri> zza = new C0374a<>();

    public static Uri zza(String str) {
        Uri uri;
        synchronized (zzcm.class) {
            try {
                Uri uri2 = zza.get(str);
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode(str));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    zza.put(str, uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
