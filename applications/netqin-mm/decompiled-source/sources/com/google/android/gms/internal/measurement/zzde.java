package com.google.android.gms.internal.measurement;

import android.net.Uri;
import p012b.p035f.C0780a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzde.class */
public final class zzde {

    /* renamed from: a */
    public static final C0780a<String, Uri> f29453a = new C0780a<>();

    /* renamed from: a */
    public static Uri m9849a(String str) {
        Uri uri;
        synchronized (zzde.class) {
            try {
                Uri uri2 = f29453a.get(str);
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode(str));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    f29453a.put(str, uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
