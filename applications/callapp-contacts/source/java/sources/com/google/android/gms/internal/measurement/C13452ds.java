package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.p023b.C0428a;
/* renamed from: com.google.android.gms.internal.measurement.ds */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ds.class */
public final class C13452ds {

    /* renamed from: a */
    private static final C0428a<String, Uri> f50656a = new C0428a<>();

    /* renamed from: a */
    public static Uri m12911a() {
        Uri uri;
        synchronized (C13452ds.class) {
            try {
                C0428a<String, Uri> c0428a = f50656a;
                Uri uri2 = c0428a.get("com.google.android.gms.measurement");
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    c0428a.put("com.google.android.gms.measurement", uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
