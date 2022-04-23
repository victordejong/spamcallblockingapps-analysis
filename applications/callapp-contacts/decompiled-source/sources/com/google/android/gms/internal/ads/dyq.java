package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyq.class */
final class dyq extends dyr {

    /* renamed from: a  reason: collision with root package name */
    public final long f27415a;

    /* renamed from: b  reason: collision with root package name */
    public final List<dyt> f27416b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final List<dyq> f27417c = new ArrayList();

    public dyq(int i, long j) {
        super(i);
        this.f27415a = j;
    }

    public final dyt a(int i) {
        int size = this.f27416b.size();
        for (int i2 = 0; i2 < size; i2++) {
            dyt dytVar = this.f27416b.get(i2);
            if (dytVar.aR == i) {
                return dytVar;
            }
        }
        return null;
    }

    public final void a(dyq dyqVar) {
        this.f27417c.add(dyqVar);
    }

    public final void a(dyt dytVar) {
        this.f27416b.add(dytVar);
    }

    public final dyq b(int i) {
        int size = this.f27417c.size();
        for (int i2 = 0; i2 < size; i2++) {
            dyq dyqVar = this.f27417c.get(i2);
            if (dyqVar.aR == i) {
                return dyqVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dyr
    public final String toString() {
        String e = e(this.aR);
        String arrays = Arrays.toString(this.f27416b.toArray());
        String arrays2 = Arrays.toString(this.f27417c.toArray());
        StringBuilder sb = new StringBuilder(String.valueOf(e).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
        sb.append(e);
        sb.append(" leaves: ");
        sb.append(arrays);
        sb.append(" containers: ");
        sb.append(arrays2);
        return sb.toString();
    }
}
