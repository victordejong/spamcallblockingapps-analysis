package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyq.class */
final class dyq extends dyr {

    /* renamed from: a */
    public final long f48111a;

    /* renamed from: b */
    public final List<dyt> f48112b = new ArrayList();

    /* renamed from: c */
    public final List<dyq> f48113c = new ArrayList();

    public dyq(int i, long j) {
        super(i);
        this.f48111a = j;
    }

    /* renamed from: a */
    public final dyt m15455a(int i) {
        int size = this.f48112b.size();
        for (int i2 = 0; i2 < size; i2++) {
            dyt dytVar = this.f48112b.get(i2);
            if (dytVar.f48207aR == i) {
                return dytVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final void m15454a(dyq dyqVar) {
        this.f48113c.add(dyqVar);
    }

    /* renamed from: a */
    public final void m15453a(dyt dytVar) {
        this.f48112b.add(dytVar);
    }

    /* renamed from: b */
    public final dyq m15452b(int i) {
        int size = this.f48113c.size();
        for (int i2 = 0; i2 < size; i2++) {
            dyq dyqVar = this.f48113c.get(i2);
            if (dyqVar.f48207aR == i) {
                return dyqVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dyr
    public final String toString() {
        String e = m15449e(this.f48207aR);
        String arrays = Arrays.toString(this.f48112b.toArray());
        String arrays2 = Arrays.toString(this.f48113c.toArray());
        StringBuilder sb = new StringBuilder(String.valueOf(e).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
        sb.append(e);
        sb.append(" leaves: ");
        sb.append(arrays);
        sb.append(" containers: ");
        sb.append(arrays2);
        return sb.toString();
    }
}
