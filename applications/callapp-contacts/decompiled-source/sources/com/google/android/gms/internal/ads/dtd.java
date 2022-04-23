package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtd.class */
public final class dtd extends bvn<Integer, Long> {

    /* renamed from: a  reason: collision with root package name */
    public Long f27183a;

    /* renamed from: b  reason: collision with root package name */
    public Long f27184b;

    public dtd() {
    }

    public dtd(String str) {
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f27183a);
        hashMap.put(1, this.f27184b);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.bvn
    public final void a(String str) {
        HashMap b2 = b(str);
        if (b2 != null) {
            this.f27183a = (Long) b2.get(0);
            this.f27184b = (Long) b2.get(1);
        }
    }
}
