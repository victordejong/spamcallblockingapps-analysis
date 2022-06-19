package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
/* renamed from: com.google.android.gms.internal.ads.xe */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xe.class */
final class C3621xe implements AbstractC3364nr {

    /* renamed from: a */
    private File f17586a = null;

    /* renamed from: b */
    private final /* synthetic */ Context f17587b;

    public C3621xe(Context context) {
        this.f17587b = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3364nr
    /* renamed from: a */
    public final File mo6838a() {
        if (this.f17586a == null) {
            this.f17586a = new File(this.f17587b.getCacheDir(), "volley");
        }
        return this.f17586a;
    }
}
