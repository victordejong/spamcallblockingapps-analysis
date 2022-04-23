package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/att.class */
public final class att extends awl<atu> implements ash, atk {

    /* renamed from: a  reason: collision with root package name */
    final cov f23874a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f23875b = new AtomicBoolean();

    public att(Set<ayi<atu>> set, cov covVar) {
        super(set);
        this.f23874a = covVar;
    }

    private final void c() {
        if (((Boolean) ekb.e().a(aq.ex)).booleanValue() && this.f23875b.compareAndSet(false, true) && this.f23874a.Z != null && this.f23874a.Z.type == 3) {
            a(new awn(this) { // from class: com.google.android.gms.internal.ads.atr

                /* renamed from: a  reason: collision with root package name */
                private final att f23872a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23872a = this;
                }

                @Override // com.google.android.gms.internal.ads.awn
                public final void a(Object obj) {
                    ((atu) obj).a(this.f23872a.f23874a.Z);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.atk
    public final void a() {
        if (this.f23874a.f26184b == 1) {
            c();
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        if (this.f23874a.f26184b == 2 || this.f23874a.f26184b == 5 || this.f23874a.f26184b == 4 || this.f23874a.f26184b == 6) {
            c();
        }
    }
}
