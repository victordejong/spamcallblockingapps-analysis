package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhk.class */
public final class dhk extends dhl {

    /* renamed from: a */
    private Logger f14363a;

    public dhk(String str) {
        this.f14363a = Logger.getLogger(str);
    }

    @Override // com.google.android.gms.internal.ads.dhl
    /* renamed from: a */
    public final void mo9455a(String str) {
        this.f14363a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
