package com.google.android.gms.internal.clearcut;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzao.class */
public final class zzao {

    /* renamed from: a */
    public final String f29220a;

    /* renamed from: b */
    public final Uri f29221b;

    /* renamed from: c */
    public final String f29222c;

    /* renamed from: d */
    public final String f29223d;

    /* renamed from: e */
    public final boolean f29224e;

    /* renamed from: f */
    public final boolean f29225f;

    public zzao(Uri uri) {
        this(null, uri, "", "", false, false);
    }

    public zzao(String str, Uri uri, String str2, String str3, boolean z, boolean z2) {
        this.f29220a = str;
        this.f29221b = uri;
        this.f29222c = str2;
        this.f29223d = str3;
        this.f29224e = z;
        this.f29225f = z2;
    }

    /* renamed from: a */
    public final <T> zzae<T> m10843a(String str, T t, zzan<T> zzanVar) {
        return zzae.m10853b(this, str, t, zzanVar);
    }

    /* renamed from: a */
    public final zzae<String> m10842a(String str, String str2) {
        return zzae.m10852b(this, str, (String) null);
    }

    /* renamed from: a */
    public final zzae<Boolean> m10841a(String str, boolean z) {
        return zzae.m10851b(this, str, false);
    }

    /* renamed from: a */
    public final zzao m10844a(String str) {
        boolean z = this.f29224e;
        if (!z) {
            return new zzao(this.f29220a, this.f29221b, str, this.f29223d, z, this.f29225f);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    /* renamed from: b */
    public final zzao m10839b(String str) {
        return new zzao(this.f29220a, this.f29221b, this.f29222c, str, this.f29224e, this.f29225f);
    }
}
