package com.google.android.play.core.assetpacks;

import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/aj.class */
final class aj extends bd {

    /* renamed from: a  reason: collision with root package name */
    final int f31104a;

    /* renamed from: b  reason: collision with root package name */
    final long f31105b;

    /* renamed from: c  reason: collision with root package name */
    final String f31106c;

    /* renamed from: d  reason: collision with root package name */
    final int f31107d;
    final int e;
    final int f;
    final long g;
    final int h;
    final InputStream i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(int i, String str, int i2, long j, String str2, int i3, int i4, int i5, long j2, int i6, InputStream inputStream) {
        super(i, str);
        this.f31104a = i2;
        this.f31105b = j;
        this.f31106c = str2;
        this.f31107d = i3;
        this.e = i4;
        this.f = i5;
        this.g = j2;
        this.h = i6;
        this.i = inputStream;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return this.e + 1 == this.f;
    }
}
