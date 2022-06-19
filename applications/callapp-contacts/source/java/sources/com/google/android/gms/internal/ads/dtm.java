package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtm.class */
public final class dtm extends bvn<Integer, Long> {

    /* renamed from: a */
    public Long f47571a;

    /* renamed from: b */
    public Long f47572b;

    /* renamed from: c */
    public Long f47573c;

    /* renamed from: d */
    public Long f47574d;

    /* renamed from: e */
    public Long f47575e;

    /* renamed from: f */
    public Long f47576f;

    /* renamed from: g */
    public Long f47577g;

    /* renamed from: h */
    public Long f47578h;

    /* renamed from: i */
    public Long f47579i;

    /* renamed from: j */
    public Long f47580j;

    /* renamed from: k */
    public Long f47581k;

    public dtm() {
    }

    public dtm(String str) {
        mo15707a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo15708a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f47571a);
        hashMap.put(1, this.f47572b);
        hashMap.put(2, this.f47573c);
        hashMap.put(3, this.f47574d);
        hashMap.put(4, this.f47575e);
        hashMap.put(5, this.f47576f);
        hashMap.put(6, this.f47577g);
        hashMap.put(7, this.f47578h);
        hashMap.put(8, this.f47579i);
        hashMap.put(9, this.f47580j);
        hashMap.put(10, this.f47581k);
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    public final void mo15707a(String str) {
        HashMap b = m17602b(str);
        if (b != null) {
            this.f47571a = (Long) b.get(0);
            this.f47572b = (Long) b.get(1);
            this.f47573c = (Long) b.get(2);
            this.f47574d = (Long) b.get(3);
            this.f47575e = (Long) b.get(4);
            this.f47576f = (Long) b.get(5);
            this.f47577g = (Long) b.get(6);
            this.f47578h = (Long) b.get(7);
            this.f47579i = (Long) b.get(8);
            this.f47580j = (Long) b.get(9);
            this.f47581k = (Long) b.get(10);
        }
    }
}
