package com.google.android.gms.internal.ads;

import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crb.class */
final class crb {

    /* renamed from: a  reason: collision with root package name */
    final crd f26288a = new crd();

    /* renamed from: b  reason: collision with root package name */
    int f26289b;

    /* renamed from: c  reason: collision with root package name */
    int f26290c;

    /* renamed from: d  reason: collision with root package name */
    int f26291d;
    int e;
    int f;

    public final String a() {
        return "\n\tPool does not exist: " + this.f26291d + "\n\tNew pools created: " + this.f26289b + "\n\tPools removed: " + this.f26290c + "\n\tEntries added: " + this.f + "\n\tNo entries retrieved: " + this.e + StringUtils.LF;
    }
}
