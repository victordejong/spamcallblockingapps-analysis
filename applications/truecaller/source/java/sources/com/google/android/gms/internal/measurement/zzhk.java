package com.google.android.gms.internal.measurement;

import android.net.Uri;
import p1727n3.p1788g.C26174a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhk.class */
public final class zzhk {
    private static final C26174a zza = new C26174a();

    public static Uri zza(String str) {
        Uri uri;
        synchronized (zzhk.class) {
            try {
                C26174a c26174a = zza;
                Uri uri2 = (Uri) c26174a.getOrDefault("com.google.android.gms.measurement", null);
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    c26174a.put("com.google.android.gms.measurement", uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
