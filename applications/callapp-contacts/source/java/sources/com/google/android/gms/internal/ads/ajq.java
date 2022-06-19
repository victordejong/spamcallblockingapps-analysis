package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajq.class */
public final class ajq implements AbstractC12607hi<Object> {

    /* renamed from: a */
    final /* synthetic */ ajp f42243a;

    public ajq(ajp ajpVar) {
        this.f42243a = ajpVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final void mo14250a(Object obj, Map<String, String> map) {
        if (!this.f42243a.m18633a(map)) {
            return;
        }
        this.f42243a.f42238b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ajt

            /* renamed from: a */
            private final ajq f42248a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f42248a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f42248a.f42243a.f42239c.m18628c();
            }
        });
    }
}
