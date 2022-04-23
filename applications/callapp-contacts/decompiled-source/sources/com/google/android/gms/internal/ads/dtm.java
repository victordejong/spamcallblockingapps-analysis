package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtm.class */
public final class dtm extends bvn<Integer, Long> {

    /* renamed from: a  reason: collision with root package name */
    public Long f27201a;

    /* renamed from: b  reason: collision with root package name */
    public Long f27202b;

    /* renamed from: c  reason: collision with root package name */
    public Long f27203c;

    /* renamed from: d  reason: collision with root package name */
    public Long f27204d;
    public Long e;
    public Long f;
    public Long g;
    public Long h;
    public Long i;
    public Long j;
    public Long k;

    public dtm() {
    }

    public dtm(String str) {
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f27201a);
        hashMap.put(1, this.f27202b);
        hashMap.put(2, this.f27203c);
        hashMap.put(3, this.f27204d);
        hashMap.put(4, this.e);
        hashMap.put(5, this.f);
        hashMap.put(6, this.g);
        hashMap.put(7, this.h);
        hashMap.put(8, this.i);
        hashMap.put(9, this.j);
        hashMap.put(10, this.k);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.bvn
    public final void a(String str) {
        HashMap b2 = b(str);
        if (b2 != null) {
            this.f27201a = (Long) b2.get(0);
            this.f27202b = (Long) b2.get(1);
            this.f27203c = (Long) b2.get(2);
            this.f27204d = (Long) b2.get(3);
            this.e = (Long) b2.get(4);
            this.f = (Long) b2.get(5);
            this.g = (Long) b2.get(6);
            this.h = (Long) b2.get(7);
            this.i = (Long) b2.get(8);
            this.j = (Long) b2.get(9);
            this.k = (Long) b2.get(10);
        }
    }
}
