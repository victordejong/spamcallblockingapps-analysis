package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbe.class */
public final class zzbe extends WebView {

    /* renamed from: a  reason: collision with root package name */
    final Handler f28861a;

    /* renamed from: b  reason: collision with root package name */
    private final ak f28862b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28863c = false;

    public zzbe(ai aiVar, Handler handler, ak akVar) {
        super(aiVar);
        this.f28861a = handler;
        this.f28862b = akVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(String str) {
        return str != null && str.startsWith("consent://");
    }
}
