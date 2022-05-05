package com.android.contacts;

import android.net.Uri;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f2214a;

    /* renamed from: b  reason: collision with root package name */
    public final CharSequence f2215b;
    public final String c;
    public final String d;
    public final int[] e;
    public final long f;
    public final long g;
    public final CharSequence h;
    public final int i;
    public final CharSequence j;
    public final Uri k;
    public final Uri l;
    public final long m;
    public final int n;
    public int o;
    public final int p;
    public String q;
    public long r;
    public final int s;

    public y(CharSequence charSequence, int i, CharSequence charSequence2, String str, String str2, int[] iArr, long j, long j2, int i2, int i3) {
        this(charSequence, i, charSequence2, str, str2, iArr, j, j2, BuildConfig.FLAVOR, 0, BuildConfig.FLAVOR, null, null, i2, i3, 0L);
    }

    public y(CharSequence charSequence, int i, CharSequence charSequence2, String str, String str2, int[] iArr, long j, long j2, CharSequence charSequence3, int i2, CharSequence charSequence4, Uri uri, Uri uri2, int i3, int i4, long j3) {
        this(charSequence, BuildConfig.FLAVOR, i, charSequence2, str, str2, iArr, j, j2, charSequence3, i2, charSequence4, uri, uri2, i3, i4, j3, 0L);
    }

    public y(CharSequence charSequence, String str, int i, CharSequence charSequence2, String str2, String str3, int[] iArr, long j, long j2, int i2) {
        this(charSequence, str, i, charSequence2, str2, str3, iArr, j, j2, BuildConfig.FLAVOR, 0, BuildConfig.FLAVOR, null, null, i2, -1, 0L, 0L);
    }

    public y(CharSequence charSequence, String str, int i, CharSequence charSequence2, String str2, String str3, int[] iArr, long j, long j2, CharSequence charSequence3, int i2, CharSequence charSequence4, Uri uri, int i3, int i4) {
        this(charSequence, str, i, charSequence2, str2, str3, iArr, j, j2, charSequence3, i2, charSequence4, uri, null, i3, i4, 0L, 0L);
    }

    public y(CharSequence charSequence, String str, int i, CharSequence charSequence2, String str2, String str3, int[] iArr, long j, long j2, CharSequence charSequence3, int i2, CharSequence charSequence4, Uri uri, Uri uri2, int i3, int i4, long j3, long j4) {
        this(charSequence, str, i, charSequence2, str2, str3, iArr, j, j2, charSequence3, i2, charSequence4, uri, uri2, i3, i4, j3, j4, 0);
    }

    public y(CharSequence charSequence, String str, int i, CharSequence charSequence2, String str2, String str3, int[] iArr, long j, long j2, CharSequence charSequence3, int i2, CharSequence charSequence4, Uri uri, Uri uri2, int i3, int i4, long j3, long j4, int i5) {
        this.f2214a = charSequence;
        this.q = str;
        this.p = i;
        this.f2215b = charSequence2;
        this.c = str2;
        this.d = str3;
        this.e = iArr;
        this.f = j;
        this.g = j2;
        this.h = charSequence3;
        this.i = i2;
        this.j = charSequence4;
        this.k = uri;
        this.l = uri2;
        this.n = i3;
        this.o = i4;
        this.m = j3;
        this.r = j4;
        this.s = i5;
    }
}
