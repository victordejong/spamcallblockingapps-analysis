package com.google.android.gms.internal.icing;

import android.content.Context;
import android.net.Uri;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbu.class */
public final class zzbu {

    /* renamed from: a */
    final Uri f7932a;

    /* renamed from: b */
    final String f7933b;

    /* renamed from: c */
    final String f7934c;

    public zzbu(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    private zzbu(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, @Nullable zzby<Context, Boolean> zzbyVar) {
        this.f7932a = uri;
        this.f7933b = str2;
        this.f7934c = str3;
    }

    /* renamed from: a */
    public final zzbq<Boolean> m13998a(String str, boolean z) {
        zzbq<Boolean> b;
        b = zzbq.m14011b(this, str, z);
        return b;
    }
}
