package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.util.C1993a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.media2.exoplayer.external.ad */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ad.class */
public final class C1368ad {

    /* renamed from: a */
    public static final C1368ad f5135a = new C1368ad(1.0f);

    /* renamed from: b */
    public final float f5136b;

    /* renamed from: c */
    public final float f5137c;

    /* renamed from: d */
    public final boolean f5138d;

    /* renamed from: e */
    public final int f5139e;

    public C1368ad(float f) {
        this(f, 1.0f, false);
    }

    public C1368ad(float f, float f2) {
        this(f, f2, false);
    }

    public C1368ad(float f, float f2, boolean z) {
        C1993a.m41688a(f > BitmapDescriptorFactory.HUE_RED);
        C1993a.m41688a(f2 > BitmapDescriptorFactory.HUE_RED);
        this.f5136b = f;
        this.f5137c = f2;
        this.f5138d = z;
        this.f5139e = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1368ad c1368ad = (C1368ad) obj;
        return this.f5136b == c1368ad.f5136b && this.f5137c == c1368ad.f5137c && this.f5138d == c1368ad.f5138d;
    }

    public final int hashCode() {
        return ((((Float.floatToRawIntBits(this.f5136b) + 527) * 31) + Float.floatToRawIntBits(this.f5137c)) * 31) + (this.f5138d ? 1 : 0);
    }
}
