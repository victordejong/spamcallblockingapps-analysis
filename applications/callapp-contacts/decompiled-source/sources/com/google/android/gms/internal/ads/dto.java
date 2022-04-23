package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dto.class */
public final class dto extends bvn<Integer, Long> {

    /* renamed from: a  reason: collision with root package name */
    public Long f27209a;

    /* renamed from: b  reason: collision with root package name */
    public Long f27210b;

    /* renamed from: c  reason: collision with root package name */
    public Long f27211c;

    /* renamed from: d  reason: collision with root package name */
    public Long f27212d;

    public dto() {
    }

    public dto(String str) {
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f27209a);
        hashMap.put(1, this.f27210b);
        hashMap.put(2, this.f27211c);
        hashMap.put(3, this.f27212d);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.bvn
    public final void a(String str) {
        HashMap b2 = b(str);
        if (b2 != null) {
            this.f27209a = (Long) b2.get(0);
            this.f27210b = (Long) b2.get(1);
            this.f27211c = (Long) b2.get(2);
            this.f27212d = (Long) b2.get(3);
        }
    }
}
