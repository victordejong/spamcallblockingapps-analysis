package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbax.class */
public final class zzbax extends zzayl {

    /* renamed from: c */
    public final zzbbu f24721c;

    /* renamed from: d */
    public final String f24722d;

    public zzbax(Context context, String str, String str2) {
        this(str2, zzp.m17969c().m16141a(context, str));
    }

    public zzbax(String str, String str2) {
        this.f24721c = new zzbbu(str2);
        this.f24722d = str;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    /* renamed from: a */
    public final void mo15673a() {
        this.f24721c.mo15845a(this.f24722d);
    }
}
