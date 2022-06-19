package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drm.class */
public final class drm implements drp {

    /* renamed from: a */
    private final byte[] f15484a;

    /* renamed from: b */
    private Uri f15485b;

    /* renamed from: c */
    private int f15486c;

    /* renamed from: d */
    private int f15487d;

    public drm(byte[] bArr) {
        drz.m8774a(bArr);
        drz.m8772a(bArr.length > 0);
        this.f15484a = bArr;
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final int mo8808a(byte[] bArr, int i, int i2) {
        int i3;
        if (i2 == 0) {
            i3 = 0;
        } else if (this.f15487d == 0) {
            i3 = -1;
        } else {
            int min = Math.min(i2, this.f15487d);
            System.arraycopy(this.f15484a, this.f15486c, bArr, i, min);
            this.f15486c += min;
            this.f15487d -= min;
            i3 = min;
        }
        return i3;
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final long mo8811a(drq drqVar) {
        this.f15485b = drqVar.f15488a;
        this.f15486c = (int) drqVar.f15491d;
        this.f15487d = drqVar.f15492e == -1 ? this.f15484a.length - drqVar.f15491d : drqVar.f15492e;
        if (this.f15487d <= 0 || this.f15486c + this.f15487d > this.f15484a.length) {
            int i = this.f15486c;
            throw new IOException(new StringBuilder(77).append("Unsatisfiable range: [").append(i).append(", ").append(drqVar.f15492e).append("], length: ").append(this.f15484a.length).toString());
        }
        return this.f15487d;
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: a */
    public final Uri mo8812a() {
        return this.f15485b;
    }

    @Override // com.google.android.gms.internal.ads.drp
    /* renamed from: b */
    public final void mo8807b() {
        this.f15485b = null;
    }
}
