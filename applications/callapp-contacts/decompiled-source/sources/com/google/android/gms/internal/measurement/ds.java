package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.b.a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ds.class */
public final class ds {

    /* renamed from: a  reason: collision with root package name */
    private static final a<String, Uri> f28971a = new a<>();

    public static Uri a() {
        Uri uri;
        synchronized (ds.class) {
            try {
                a<String, Uri> aVar = f28971a;
                Uri uri2 = aVar.get("com.google.android.gms.measurement");
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
