package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import androidx.browser.customtabs.d;
import com.google.android.gms.internal.ads.br;
import com.google.android.gms.internal.ads.bu;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzo.class */
public final class zzo implements bu {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ Uri val$uri;
    private final /* synthetic */ br zzegx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(zzj zzjVar, br brVar, Context context, Uri uri) {
        this.zzegx = brVar;
        this.val$context = context;
        this.val$uri = uri;
    }

    @Override // com.google.android.gms.internal.ads.bu
    public final void zztb() {
        br brVar = this.zzegx;
        if (brVar.f24923b == null) {
            brVar.f24922a = null;
        } else if (brVar.f24922a == null) {
            brVar.f24922a = brVar.f24923b.b();
        }
        new d.a(brVar.f24922a).a().a(this.val$context, this.val$uri);
        br brVar2 = this.zzegx;
        Activity activity = (Activity) this.val$context;
        if (brVar2.f24924c != null) {
            activity.unbindService(brVar2.f24924c);
            brVar2.f24923b = null;
            brVar2.f24922a = null;
            brVar2.f24924c = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.bu
    public final void zztc() {
    }
}
