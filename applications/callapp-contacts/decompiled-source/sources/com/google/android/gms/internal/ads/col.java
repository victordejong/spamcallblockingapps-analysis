package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/col.class */
public final class col implements cal<bhu> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ coj f26162a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public col(coj cojVar) {
        this.f26162a = cojVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final void a() {
        synchronized (this.f26162a) {
            this.f26162a.f = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final /* synthetic */ void a(bhu bhuVar) {
        bhu bhuVar2;
        bhu bhuVar3 = bhuVar;
        synchronized (this.f26162a) {
            this.f26162a.f = bhuVar3;
            bhuVar2 = this.f26162a.f;
            bhuVar2.h();
        }
    }
}
