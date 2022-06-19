package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import androidx.browser.customtabs.C0458d;
import com.google.android.gms.internal.ads.AbstractC12253bu;
import com.google.android.gms.internal.ads.C12250br;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzo.class */
public final class zzo implements AbstractC12253bu {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ Uri val$uri;
    private final /* synthetic */ C12250br zzegx;

    public zzo(zzj zzjVar, C12250br c12250br, Context context, Uri uri) {
        this.zzegx = c12250br;
        this.val$context = context;
        this.val$uri = uri;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12253bu
    public final void zztb() {
        C12250br c12250br = this.zzegx;
        if (c12250br.f44526b == null) {
            c12250br.f44525a = null;
        } else if (c12250br.f44525a == null) {
            c12250br.f44525a = c12250br.f44526b.m45474b();
        }
        new C0458d.C0459a(c12250br.f44525a).m45466a().m45467a(this.val$context, this.val$uri);
        C12250br c12250br2 = this.zzegx;
        Activity activity = (Activity) this.val$context;
        if (c12250br2.f44527c != null) {
            activity.unbindService(c12250br2.f44527c);
            c12250br2.f44526b = null;
            c12250br2.f44525a = null;
            c12250br2.f44527c = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12253bu
    public final void zztc() {
    }
}
