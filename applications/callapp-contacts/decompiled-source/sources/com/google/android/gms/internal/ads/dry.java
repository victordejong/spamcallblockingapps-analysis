package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dry.class */
public final class dry extends drz {

    /* renamed from: a  reason: collision with root package name */
    private Logger f27144a;

    public dry(String str) {
        this.f27144a = Logger.getLogger(str);
    }

    @Override // com.google.android.gms.internal.ads.drz
    public final void a(String str) {
        this.f27144a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
