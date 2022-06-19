package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.exoplayer2.aa */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/aa.class */
public final class C10840aa {

    /* renamed from: a */
    public static final C10840aa f34891a = new C10840aa(1.0f);

    /* renamed from: b */
    public final float f34892b;

    /* renamed from: c */
    public final float f34893c;

    /* renamed from: d */
    public final int f34894d;

    public C10840aa(float f) {
        this(f, 1.0f);
    }

    public C10840aa(float f, float f2) {
        C11593a.m20022a(f > BitmapDescriptorFactory.HUE_RED);
        C11593a.m20022a(f2 > BitmapDescriptorFactory.HUE_RED);
        this.f34892b = f;
        this.f34893c = f2;
        this.f34894d = Math.round(f * 1000.0f);
    }

    /* renamed from: a */
    public final C10840aa m22238a(float f) {
        return new C10840aa(f, this.f34893c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C10840aa c10840aa = (C10840aa) obj;
        return this.f34892b == c10840aa.f34892b && this.f34893c == c10840aa.f34893c;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f34892b) + 527) * 31) + Float.floatToRawIntBits(this.f34893c);
    }

    public final String toString() {
        return C11599af.m19968a("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f34892b), Float.valueOf(this.f34893c));
    }
}
