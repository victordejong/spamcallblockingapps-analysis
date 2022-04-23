package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akm.class */
public final class akm implements xl {

    /* renamed from: a  reason: collision with root package name */
    private File f23494a = null;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Context f23495b;

    public akm(Context context) {
        this.f23495b = context;
    }

    @Override // com.google.android.gms.internal.ads.xl
    public final File a() {
        if (this.f23494a == null) {
            this.f23494a = new File(this.f23495b.getCacheDir(), "volley");
        }
        return this.f23494a;
    }
}
