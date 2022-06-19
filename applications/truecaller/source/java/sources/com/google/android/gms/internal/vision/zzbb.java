package com.google.android.gms.internal.vision;

import android.net.Uri;
import p1727n3.p1788g.C26174a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzbb.class */
public final class zzbb {
    private static final C26174a<String, Uri> zzfu = new C26174a<>();

    public static Uri getContentProviderUri(String str) {
        Uri uri;
        synchronized (zzbb.class) {
            try {
                C26174a<String, Uri> c26174a = zzfu;
                Uri orDefault = c26174a.getOrDefault(str, null);
                uri = orDefault;
                if (orDefault == null) {
                    String valueOf = String.valueOf(Uri.encode(str));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    c26174a.put(str, uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
