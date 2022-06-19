package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.zzbfd;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbfo;
@TargetApi(17)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbez.class */
public final class zzbez<WebViewT extends zzbfd & zzbfm & zzbfo> {
    private final zzbfe zzeuh;
    private final WebViewT zzeui;

    public zzbez(WebViewT webviewt, zzbfe zzbfeVar) {
        this.zzeuh = zzbfeVar;
        this.zzeui = webviewt;
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = "Click string is empty, not proceeding.";
        } else {
            zzei zzada = this.zzeui.zzada();
            if (zzada == null) {
                str2 = "Signal utils is empty, ignoring.";
            } else {
                zzdy zzca = zzada.zzca();
                if (zzca == null) {
                    str2 = "Signals object is empty, ignoring.";
                } else if (this.zzeui.getContext() != null) {
                    return zzca.zza(this.zzeui.getContext(), str, this.zzeui.getView(), this.zzeui.zzabe());
                } else {
                    str2 = "Context is null, ignoring.";
                }
            }
        }
        zzd.zzeb(str2);
        return "";
    }

    @JavascriptInterface
    public final void notify(String str) {
        if (TextUtils.isEmpty(str)) {
            zzazk.zzex("URL is empty, ignoring message");
        } else {
            zzj.zzeen.post(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzbfb
                private final String zzdjf;
                private final zzbez zzeuj;

                {
                    this.zzeuj = this;
                    this.zzdjf = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzeuj.zzfn(this.zzdjf);
                }
            });
        }
    }

    public final /* synthetic */ void zzfn(String str) {
        this.zzeuh.zzj(Uri.parse(str));
    }
}
