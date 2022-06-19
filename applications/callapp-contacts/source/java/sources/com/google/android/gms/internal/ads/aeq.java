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

    /* renamed from: a */
    final aer f40137a;

    /* renamed from: b */
    private final WebViewT f40138b;

    public aeq(WebViewT webviewt, aer aerVar) {
        this.f40137a = aerVar;
        this.f40138b = webviewt;
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            zzd.zzed("Click string is empty, not proceeding.");
            return "";
        }
        die mo13805E = this.f40138b.mo13805E();
        if (mo13805E == null) {
            zzd.zzed("Signal utils is empty, ignoring.");
            return "";
        }
        cxx cxxVar = mo13805E.f47085b;
        if (cxxVar == null) {
            zzd.zzed("Signals object is empty, ignoring.");
            return "";
        } else if (this.f40138b.getContext() != null) {
            return cxxVar.zza(this.f40138b.getContext(), str, this.f40138b.mo13731s(), this.f40138b.mo13751d());
        } else {
            zzd.zzed("Context is null, ignoring.");
            return "";
        }
    }

    @JavascriptInterface
    public final void notify(String str) {
        if (TextUtils.isEmpty(str)) {
            zzd.zzez("URL is empty, ignoring message");
        } else {
            zzj.zzegq.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.aes

                /* renamed from: a */
                private final aeq f40139a;

                /* renamed from: b */
                private final String f40140b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f40139a = this;
                    this.f40140b = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f40139a.f40137a.mo18802a(Uri.parse(this.f40140b));
                }
            });
        }
    }
}
