package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajo.class */
public final class ajo implements AbstractC12607hi<Object> {

    /* renamed from: a */
    final /* synthetic */ ajp f42236a;

    public ajo(ajp ajpVar) {
        this.f42236a = ajpVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        if (!this.f42236a.m18633a(map)) {
            return;
        }
        this.f42236a.f42238b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ajr

            /* renamed from: a */
            private final ajo f42244a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f42244a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f42244a.f42236a.f42239c.m18631a();
            }
        });
    }
}
