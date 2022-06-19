package com.google.android.gms.measurement.internal;

import android.net.Uri;
/* renamed from: com.google.android.gms.measurement.internal.hh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hh.class */
final class RunnableC4354hh implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f19059a;

    /* renamed from: b */
    private final /* synthetic */ Uri f19060b;

    /* renamed from: c */
    private final /* synthetic */ String f19061c;

    /* renamed from: d */
    private final /* synthetic */ String f19062d;

    /* renamed from: e */
    private final /* synthetic */ C4350hd f19063e;

    public RunnableC4354hh(C4350hd c4350hd, boolean z, Uri uri, String str, String str2) {
        this.f19063e = c4350hd;
        this.f19059a = z;
        this.f19060b = uri;
        this.f19061c = str;
        this.f19062d = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19063e.m4377a(this.f19059a, this.f19060b, this.f19061c, this.f19062d);
    }
}
