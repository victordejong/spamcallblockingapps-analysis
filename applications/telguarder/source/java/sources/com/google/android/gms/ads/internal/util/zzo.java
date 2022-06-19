package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.internal.ads.zzaco;
import com.google.android.gms.internal.ads.zzacp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzo.class */
public final class zzo implements zzaco {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ Uri val$uri;
    private final /* synthetic */ zzacp zzeeu;

    public zzo(zzj zzjVar, zzacp zzacpVar, Context context, Uri uri) {
        this.zzeeu = zzacpVar;
        this.val$context = context;
        this.val$uri = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzst() {
        new CustomTabsIntent.Builder(this.zzeeu.zzsv()).build().launchUrl(this.val$context, this.val$uri);
        this.zzeeu.zzc((Activity) this.val$context);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzsu() {
    }
}
