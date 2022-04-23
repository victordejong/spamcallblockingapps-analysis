package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.aeu;
import com.google.android.gms.internal.ads.aez;
import com.google.android.gms.internal.ads.afb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aeq.class */
public final class aeq<WebViewT extends aeu & aez & afb> {

    /* renamed from: a  reason: collision with root package name */
    final aer f23207a;

    /* renamed from: b  reason: collision with root package name */
    private final WebViewT f23208b;

    public aeq(WebViewT webviewt, aer aerVar) {
        this.f23207a = aerVar;
        this.f23208b = webviewt;
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            zzd.zzed("Click string is empty, not proceeding.");
            return "";
        }
        die E = this.f23208b.E();
        if (E == null) {
            zzd.zzed("Signal utils is empty, ignoring.");
            return "";
        }
        cxx cxxVar = E.f26844b;
        if (cxxVar == null) {
            zzd.zzed("Signals object is empty, ignoring.");
            return "";
        } else if (this.f23208b.getContext() != null) {
            return cxxVar.zza(this.f23208b.getContext(), str, this.f23208b.s(), this.f23208b.d());
        } else {
            zzd.zzed("Context is null, ignoring.");
            return "";
        }
    }

    @JavascriptInterface
    public final void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            zzd.zzez("URL is empty, ignoring message");
        } else {
            zzj.zzegq.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.aes

                /* renamed from: a  reason: collision with root package name */
                private final aeq f23209a;

                /* renamed from: b  reason: collision with root package name */
                private final String f23210b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23209a = this;
                    this.f23210b = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f23209a.f23207a.a(Uri.parse(this.f23210b));
                }
            });
        }
    }
}
