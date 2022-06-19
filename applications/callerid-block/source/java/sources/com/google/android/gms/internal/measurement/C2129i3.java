package com.google.android.gms.internal.measurement;

import android.net.Uri;
import d.e.a;
/* renamed from: com.google.android.gms.internal.measurement.i3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/i3.class */
public final class C2129i3 {

    /* renamed from: a */
    private static final a<String, Uri> f9758a = new a<>();

    /* renamed from: a */
    public static Uri m4322a(String str) {
        Uri uri;
        synchronized (C2129i3.class) {
            try {
                a<String, Uri> aVar = f9758a;
                Uri uri2 = (Uri) aVar.get("com.google.android.gms.measurement");
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    aVar.put("com.google.android.gms.measurement", uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
