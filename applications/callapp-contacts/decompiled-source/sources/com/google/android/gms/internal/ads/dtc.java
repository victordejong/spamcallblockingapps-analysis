package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtc.class */
public final class dtc extends bvn<Integer, Object> {

    /* renamed from: a  reason: collision with root package name */
    public Long f27180a;

    /* renamed from: b  reason: collision with root package name */
    public Boolean f27181b;

    /* renamed from: c  reason: collision with root package name */
    public Boolean f27182c;

    public dtc() {
    }

    public dtc(String str) {
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    protected final HashMap<Integer, Object> a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f27180a);
        hashMap.put(1, this.f27181b);
        hashMap.put(2, this.f27182c);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.bvn
    public final void a(String str) {
        HashMap b2 = b(str);
        if (b2 != null) {
            this.f27180a = (Long) b2.get(0);
            this.f27181b = (Boolean) b2.get(1);
            this.f27182c = (Boolean) b2.get(2);
        }
    }
}
