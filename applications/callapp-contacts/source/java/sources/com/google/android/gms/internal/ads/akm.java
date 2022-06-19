package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akm.class */
public final class akm implements AbstractC13045xl {

    /* renamed from: a */
    private File f42313a = null;

    /* renamed from: b */
    private final /* synthetic */ Context f42314b;

    public akm(Context context) {
        this.f42314b = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13045xl
    /* renamed from: a */
    public final File mo14003a() {
        if (this.f42313a == null) {
            this.f42313a = new File(this.f42314b.getCacheDir(), "volley");
        }
        return this.f42313a;
    }
}
