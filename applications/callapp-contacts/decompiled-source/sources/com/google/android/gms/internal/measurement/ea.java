package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ea.class */
public final class ea {

    /* renamed from: b  reason: collision with root package name */
    final Uri f28979b;

    /* renamed from: a  reason: collision with root package name */
    final String f28978a = null;

    /* renamed from: c  reason: collision with root package name */
    final String f28980c = "";

    /* renamed from: d  reason: collision with root package name */
    final String f28981d = "";
    final boolean e = false;
    final boolean f = false;
    final boolean g = false;
    final boolean h = false;
    final eh<Context, Boolean> i = null;

    public ea(Uri uri) {
        this.f28979b = uri;
    }

    public final ec<Long> a(String str, long j) {
        return new dw(this, str, Long.valueOf(j), true);
    }

    public final ec<String> a(String str, String str2) {
        return new dz(this, str, str2, true);
    }

    public final ec<Boolean> a(String str, boolean z) {
        return new dx(this, str, Boolean.valueOf(z), true);
    }
}
