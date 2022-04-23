package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxu.class */
public final class bxu implements zzg {

    /* renamed from: a  reason: collision with root package name */
    private final arj f25366a;

    /* renamed from: b  reason: collision with root package name */
    private final asc f25367b;

    /* renamed from: c  reason: collision with root package name */
    private final aym f25368c;

    /* renamed from: d  reason: collision with root package name */
    private final ayh f25369d;
    private final aju e;
    private AtomicBoolean f = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public bxu(arj arjVar, asc ascVar, aym aymVar, ayh ayhVar, aju ajuVar) {
        this.f25366a = arjVar;
        this.f25367b = ascVar;
        this.f25368c = aymVar;
        this.f25369d = ayhVar;
        this.e = ajuVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
        synchronized (this) {
            if (this.f.compareAndSet(false, true)) {
                this.e.b();
                this.f25369d.a(view);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkg() {
        if (this.f.get()) {
            this.f25366a.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkh() {
        if (this.f.get()) {
            this.f25367b.a();
            this.f25368c.a();
        }
    }
}
