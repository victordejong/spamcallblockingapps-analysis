package com.google.android.gms.internal.measurement;

import android.net.Uri;
import p020b.p036e.C1489a;
/* renamed from: com.google.android.gms.internal.measurement.n3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/n3.class */
public final class C7474n3 {

    /* renamed from: a */
    private static final C1489a<String, Uri> f34602a = new C1489a<>();

    /* renamed from: a */
    public static Uri m7080a(String str) {
        Uri uri;
        synchronized (C7474n3.class) {
            try {
                C1489a<String, Uri> c1489a = f34602a;
                Uri uri2 = c1489a.get("com.google.android.gms.measurement");
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    c1489a.put("com.google.android.gms.measurement", uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
