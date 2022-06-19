package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.f03;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.d0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/d0.class */
final class C5812d0 implements f03<C5821i> {

    /* renamed from: a */
    final /* synthetic */ BinderC5814e0 f18702a;

    public C5812d0(BinderC5814e0 binderC5814e0) {
        this.f18702a = binderC5814e0;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        C5667s.m18156h().m12235k(th, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        BinderC5814e0.m17799h7(this.f18702a, "sgf", "sgf_reason", th.getMessage());
        ei0.m15466d("Failed to initialize webview for loading SDKCore. ", th);
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(C5821i c5821i) {
        ei0.m15469a("Initialized webview successfully for SDKCore.");
    }
}
