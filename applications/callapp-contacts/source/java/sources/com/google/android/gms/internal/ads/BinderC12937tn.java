package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.C12041m;
/* renamed from: com.google.android.gms.internal.ads.tn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tn.class */
public final class BinderC12937tn extends AbstractBinderC12938to {

    /* renamed from: a */
    private final String f49882a;

    /* renamed from: b */
    private final int f49883b;

    public BinderC12937tn(String str, int i) {
        this.f49882a = str;
        this.f49883b = i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12939tp
    /* renamed from: a */
    public final String mo14154a() {
        return this.f49882a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12939tp
    /* renamed from: b */
    public final int mo14153b() {
        return this.f49883b;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BinderC12937tn)) {
            return false;
        }
        BinderC12937tn binderC12937tn = (BinderC12937tn) obj;
        return C12041m.m19168a(this.f49882a, binderC12937tn.f49882a) && C12041m.m19168a(Integer.valueOf(this.f49883b), Integer.valueOf(binderC12937tn.f49883b));
    }
}
