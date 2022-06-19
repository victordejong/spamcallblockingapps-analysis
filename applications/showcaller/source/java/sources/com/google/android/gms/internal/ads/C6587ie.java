package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ie */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ie.class */
final class C6587ie extends C6661ke {

    /* renamed from: P0 */
    public final long f24215P0;

    /* renamed from: Q0 */
    public final List<C6624je> f24216Q0 = new ArrayList();

    /* renamed from: R0 */
    public final List<C6587ie> f24217R0 = new ArrayList();

    public C6587ie(int i, long j) {
        super(i);
        this.f24215P0 = j;
    }

    /* renamed from: d */
    public final void m14435d(C6624je c6624je) {
        this.f24216Q0.add(c6624je);
    }

    /* renamed from: e */
    public final void m14434e(C6587ie c6587ie) {
        this.f24217R0.add(c6587ie);
    }

    /* renamed from: f */
    public final C6624je m14433f(int i) {
        int size = this.f24216Q0.size();
        for (int i2 = 0; i2 < size; i2++) {
            C6624je c6624je = this.f24216Q0.get(i2);
            if (c6624je.f25197O0 == i) {
                return c6624je;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final C6587ie m14432g(int i) {
        int size = this.f24217R0.size();
        for (int i2 = 0; i2 < size; i2++) {
            C6587ie c6587ie = this.f24217R0.get(i2);
            if (c6587ie.f25197O0 == i) {
                return c6587ie;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.C6661ke
    public final String toString() {
        String m13916c = C6661ke.m13916c(this.f25197O0);
        String arrays = Arrays.toString(this.f24216Q0.toArray());
        String arrays2 = Arrays.toString(this.f24217R0.toArray());
        int length = String.valueOf(arrays).length();
        StringBuilder sb = new StringBuilder(m13916c.length() + 22 + length + String.valueOf(arrays2).length());
        sb.append(m13916c);
        sb.append(" leaves: ");
        sb.append(arrays);
        sb.append(" containers: ");
        sb.append(arrays2);
        return sb.toString();
    }
}
