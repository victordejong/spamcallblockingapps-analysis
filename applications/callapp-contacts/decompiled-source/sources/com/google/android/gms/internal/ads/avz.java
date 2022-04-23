package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/avz.class */
public final class avz extends awl<AppEventListener> implements gq {
    public avz(Set<ayi<AppEventListener>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.gq
    public final void a(final String str, final String str2) {
        synchronized (this) {
            a(new awn(str, str2) { // from class: com.google.android.gms.internal.ads.avy

                /* renamed from: a  reason: collision with root package name */
                private final String f23935a;

                /* renamed from: b  reason: collision with root package name */
                private final String f23936b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23935a = str;
                    this.f23936b = str2;
                }

                @Override // com.google.android.gms.internal.ads.awn
                public final void a(Object obj) {
                    ((AppEventListener) obj).onAppEvent(this.f23935a, this.f23936b);
                }
            });
        }
    }
}
