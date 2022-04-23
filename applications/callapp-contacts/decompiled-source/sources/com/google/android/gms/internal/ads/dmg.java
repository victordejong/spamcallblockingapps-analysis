package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmg.class */
public final class dmg extends bvn<Integer, Long> {

    /* renamed from: a  reason: collision with root package name */
    public long f26953a;

    /* renamed from: b  reason: collision with root package name */
    public long f26954b;

    public dmg() {
        this.f26953a = -1L;
        this.f26954b = -1L;
    }

    public dmg(String str) {
        this();
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    protected final HashMap<Integer, Long> a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, Long.valueOf(this.f26953a));
        hashMap.put(1, Long.valueOf(this.f26954b));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.bvn
    public final void a(String str) {
        HashMap b2 = b(str);
        if (b2 != null) {
            this.f26953a = ((Long) b2.get(0)).longValue();
            this.f26954b = ((Long) b2.get(1)).longValue();
        }
    }
}
