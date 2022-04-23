package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.mz;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/b.class */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f24064a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ long f24065b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ z f24066c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(z zVar, String str, long j) {
        this.f24066c = zVar;
        this.f24064a = str;
        this.f24065b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        mz.a aVar;
        mz.a aVar2;
        aVar = this.f24066c.zzao;
        aVar.a(this.f24064a, this.f24065b);
        aVar2 = this.f24066c.zzao;
        aVar2.a(this.f24066c.toString());
    }
}
