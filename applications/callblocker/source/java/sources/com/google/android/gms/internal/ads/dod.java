package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dod.class */
final class dod extends doe {

    /* renamed from: a */
    public final long f15019a;

    /* renamed from: b */
    public final List<dog> f15020b = new ArrayList();

    /* renamed from: c */
    public final List<dod> f15021c = new ArrayList();

    public dod(int i, long j) {
        super(i);
        this.f15019a = j;
    }

    /* renamed from: a */
    public final dog m9007a(int i) {
        dog dogVar;
        int size = this.f15020b.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                dogVar = null;
                break;
            }
            dogVar = this.f15020b.get(i2);
            if (dogVar.f15115aB == i) {
                break;
            }
            i2++;
        }
        return dogVar;
    }

    /* renamed from: b */
    public final dod m9006b(int i) {
        dod dodVar;
        int size = this.f15021c.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                dodVar = null;
                break;
            }
            dodVar = this.f15021c.get(i2);
            if (dodVar.f15115aB == i) {
                break;
            }
            i2++;
        }
        return dodVar;
    }

    @Override // com.google.android.gms.internal.ads.doe
    public final String toString() {
        String e = m9003e(this.f15115aB);
        String arrays = Arrays.toString(this.f15020b.toArray());
        String arrays2 = Arrays.toString(this.f15021c.toArray());
        return new StringBuilder(String.valueOf(e).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length()).append(e).append(" leaves: ").append(arrays).append(" containers: ").append(arrays2).toString();
    }
}
