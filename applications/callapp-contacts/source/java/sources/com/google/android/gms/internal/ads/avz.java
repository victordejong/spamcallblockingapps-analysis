package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/avz.class */
public final class avz extends awl<AppEventListener> implements AbstractC12588gq {
    public avz(Set<ayi<AppEventListener>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12588gq
    /* renamed from: a */
    public final void mo14636a(String str, String str2) {
        synchronized (this) {
            m18374a(new awn(str, str2) { // from class: com.google.android.gms.internal.ads.avy

                /* renamed from: a */
                private final String f43224a;

                /* renamed from: b */
                private final String f43225b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43224a = str;
                    this.f43225b = str2;
                }

                @Override // com.google.android.gms.internal.ads.awn
                /* renamed from: a */
                public final void mo17234a(Object obj) {
                    ((AppEventListener) obj).onAppEvent(this.f43224a, this.f43225b);
                }
            });
        }
    }
}
