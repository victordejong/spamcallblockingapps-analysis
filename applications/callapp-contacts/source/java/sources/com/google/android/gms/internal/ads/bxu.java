package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxu.class */
public final class bxu implements zzg {

    /* renamed from: a */
    private final arj f45060a;

    /* renamed from: b */
    private final asc f45061b;

    /* renamed from: c */
    private final aym f45062c;

    /* renamed from: d */
    private final ayh f45063d;

    /* renamed from: e */
    private final aju f45064e;

    /* renamed from: f */
    private AtomicBoolean f45065f = new AtomicBoolean(false);

    public bxu(arj arjVar, asc ascVar, aym aymVar, ayh ayhVar, aju ajuVar) {
        this.f45060a = arjVar;
        this.f45061b = ascVar;
        this.f45062c = aymVar;
        this.f45063d = ayhVar;
        this.f45064e = ajuVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
        synchronized (this) {
            if (!this.f45065f.compareAndSet(false, true)) {
                return;
            }
            this.f45064e.mo17547b();
            this.f45063d.m18323a(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkg() {
        if (this.f45065f.get()) {
            this.f45060a.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkh() {
        if (this.f45065f.get()) {
            this.f45061b.m18434a();
            this.f45062c.m18319a();
        }
    }
}
