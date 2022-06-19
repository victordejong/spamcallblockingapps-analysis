package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f70.class */
public final class f70 extends ii0 {

    /* renamed from: b */
    private final e70 f22739b;

    public f70(e70 e70Var, String str) {
        super(str);
        this.f22739b = e70Var;
    }

    @Override // com.google.android.gms.internal.ads.ii0, com.google.android.gms.internal.ads.wh0
    /* renamed from: n */
    public final void mo9583n(String str) {
        String valueOf = String.valueOf(str);
        ei0.m15469a(valueOf.length() != 0 ? "LeibnizHttpUrlPinger pinging URL: ".concat(valueOf) : new String("LeibnizHttpUrlPinger pinging URL: "));
        if ("oda".equals(Uri.parse(str).getScheme())) {
            return;
        }
        ei0.m15469a("URL does not match oda:// scheme, falling back on HttpUrlPinger");
        super.mo9583n(str);
    }
}
