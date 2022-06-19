package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbe.class */
public final class zzbe extends WebView {

    /* renamed from: a */
    final Handler f50521a;

    /* renamed from: b */
    private final C13180ak f50522b;

    /* renamed from: c */
    private boolean f50523c = false;

    public zzbe(C13178ai c13178ai, Handler handler, C13180ak c13180ak) {
        super(c13178ai);
        this.f50521a = handler;
        this.f50522b = c13180ak;
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m13514a(String str) {
        return str != null && str.startsWith("consent://");
    }
}
