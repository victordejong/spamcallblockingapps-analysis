package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajq.class */
final class ajq implements hi<Object> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ajp f23439a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ajq(ajp ajpVar) {
        this.f23439a = ajpVar;
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final void a(Object obj, Map<String, String> map) {
        if (this.f23439a.a(map)) {
            this.f23439a.f23436b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ajt

                /* renamed from: a  reason: collision with root package name */
                private final ajq f23444a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23444a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f23444a.f23439a.f23437c.c();
                }
            });
        }
    }
}
