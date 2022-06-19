package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.p013b.C0373a;
/* renamed from: com.google.android.gms.internal.measurement.bk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bk.class */
public final class C3822bk {

    /* renamed from: a */
    private static final C0373a<String, Uri> f17896a = new C0373a<>();

    /* renamed from: a */
    public static Uri m5864a(String str) {
        Uri uri;
        synchronized (C3822bk.class) {
            try {
                Uri uri2 = f17896a.get(str);
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode(str));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    f17896a.put(str, uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
