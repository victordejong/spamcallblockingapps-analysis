package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dry.class */
public final class dry extends drz {

    /* renamed from: a */
    private Logger f47491a;

    public dry(String str) {
        this.f47491a = Logger.getLogger(str);
    }

    @Override // com.google.android.gms.internal.ads.drz
    /* renamed from: a */
    public final void mo15789a(String str) {
        this.f47491a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
