package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5526o;
/* renamed from: com.google.android.exoplayer2.extractor.mp4.m */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/m.class */
public final class C5086m {

    /* renamed from: a */
    public final boolean f15895a;

    /* renamed from: b */
    public final String f15896b;

    /* renamed from: c */
    public final AbstractC4996v.C4997a f15897c;

    /* renamed from: d */
    public final int f15898d;

    /* renamed from: e */
    public final byte[] f15899e;

    public C5086m(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        C5508e.m18915a((bArr2 != null ? false : true) ^ (i == 0));
        this.f15895a = z;
        this.f15896b = str;
        this.f15898d = i;
        this.f15899e = bArr2;
        this.f15897c = new AbstractC4996v.C4997a(m20593a(str), bArr, i2, i3);
    }

    /* renamed from: a */
    private static int m20593a(String str) {
        if (str == null) {
            return 1;
        }
        boolean z = true;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals("cbc1")) {
                    z = false;
                    break;
                }
                break;
            case 3046671:
                if (str.equals("cbcs")) {
                    z = true;
                    break;
                }
                break;
            case 3049879:
                if (str.equals("cenc")) {
                    z = true;
                    break;
                }
                break;
            case 3049895:
                if (str.equals("cens")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
            case true:
                return 2;
            case true:
            case true:
                return 1;
            default:
                C5526o.m18742f("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                return 1;
        }
    }
}
