package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yu3.class */
public final class yu3 {

    /* renamed from: a */
    public final boolean f32655a;

    /* renamed from: b */
    public final String f32656b;

    /* renamed from: c */
    public final xr3 f32657c;

    /* renamed from: d */
    public final int f32658d;

    /* renamed from: e */
    public final byte[] f32659e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public yu3(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        int i4;
        boolean z2;
        C7173y8.m8898a((i == 0) ^ (bArr2 == null));
        this.f32655a = z;
        this.f32656b = str;
        this.f32658d = i;
        this.f32659e = bArr2;
        if (str == null) {
            i4 = 1;
        } else {
            switch (str.hashCode()) {
                case 3046605:
                    if (str.equals("cbc1")) {
                        z2 = true;
                        break;
                    }
                    z2 = true;
                    break;
                case 3046671:
                    if (str.equals("cbcs")) {
                        z2 = true;
                        break;
                    }
                    z2 = true;
                    break;
                case 3049879:
                    if (str.equals("cenc")) {
                        z2 = false;
                        break;
                    }
                    z2 = true;
                    break;
                case 3049895:
                    if (str.equals("cens")) {
                        z2 = true;
                        break;
                    }
                    z2 = true;
                    break;
                default:
                    z2 = true;
                    break;
            }
            i4 = 1;
            if (z2) {
                i4 = 1;
                if (!z2) {
                    if (z2 || z2) {
                        i4 = 2;
                    } else {
                        StringBuilder sb = new StringBuilder(str.length() + 68);
                        sb.append("Unsupported protection scheme type '");
                        sb.append(str);
                        sb.append("'. Assuming AES-CTR crypto mode.");
                        Log.w("TrackEncryptionBox", sb.toString());
                        i4 = 1;
                    }
                }
            }
        }
        this.f32657c = new xr3(i4, bArr, i2, i3);
    }
}
