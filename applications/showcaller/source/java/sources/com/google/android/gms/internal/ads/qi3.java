package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qi3.class */
public final class qi3 extends ti3 {

    /* renamed from: a */
    final Logger f28503a;

    public qi3(String str) {
        this.f28503a = Logger.getLogger(str);
    }

    @Override // com.google.android.gms.internal.ads.ti3
    /* renamed from: a */
    public final void mo10652a(String str) {
        this.f28503a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
