package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import java.util.Arrays;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dlq.class */
public final class dlq {

    /* renamed from: a */
    private static final dlq f14683a = new dlq(new int[]{2}, 2);

    /* renamed from: b */
    private final int[] f14684b;

    /* renamed from: c */
    private final int f14685c = 2;

    private dlq(int[] iArr, int i) {
        this.f14684b = Arrays.copyOf(iArr, iArr.length);
        Arrays.sort(this.f14684b);
    }

    /* renamed from: a */
    public final boolean m9196a(int i) {
        return Arrays.binarySearch(this.f14684b, i) >= 0;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof dlq)) {
                z = false;
            } else {
                dlq dlqVar = (dlq) obj;
                if (!Arrays.equals(this.f14684b, dlqVar.f14684b) || this.f14685c != dlqVar.f14685c) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return this.f14685c + (Arrays.hashCode(this.f14684b) * 31);
    }

    public final String toString() {
        int i = this.f14685c;
        String arrays = Arrays.toString(this.f14684b);
        return new StringBuilder(String.valueOf(arrays).length() + 67).append("AudioCapabilities[maxChannelCount=").append(i).append(", supportedEncodings=").append(arrays).append("]").toString();
    }
}
