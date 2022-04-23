package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajo.class */
final class ajo implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ajp f23434a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ajo(ajp ajpVar) {
        this.f23434a = ajpVar;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        if (this.f23434a.a(map)) {
            this.f23434a.f23436b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ajr

                /* renamed from: a  reason: collision with root package name */
                private final ajo f23440a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23440a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f23440a.f23434a.f23437c.a();
                }
            });
        }
    }
}
