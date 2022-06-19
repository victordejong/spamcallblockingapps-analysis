package com.google.android.gms.internal.measurement;

import android.net.Uri;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhk.class */
public final class zzhk {
    private static final C4251a<String, Uri> zza = new C4251a<>();

    public static Uri zza(String str) {
        Uri uri;
        synchronized (zzhk.class) {
            try {
                C4251a<String, Uri> c4251a = zza;
                Uri orDefault = c4251a.getOrDefault("com.google.android.gms.measurement", null);
                uri = orDefault;
                if (orDefault == null) {
                    String valueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    c4251a.put("com.google.android.gms.measurement", uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
