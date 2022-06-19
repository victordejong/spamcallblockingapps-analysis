package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.collection.ArrayMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzex.class */
public final class zzex {
    private static final ArrayMap<String, Uri> zza = new ArrayMap<>();

    public static Uri zza(String str) {
        Uri uri;
        synchronized (zzex.class) {
            try {
                ArrayMap<String, Uri> arrayMap = zza;
                Uri uri2 = arrayMap.get("com.google.android.gms.measurement");
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    arrayMap.put("com.google.android.gms.measurement", uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
