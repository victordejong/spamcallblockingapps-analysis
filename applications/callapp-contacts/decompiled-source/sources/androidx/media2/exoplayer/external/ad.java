package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.util.a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ad.class */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    public static final ad f2809a = new ad(1.0f);

    /* renamed from: b  reason: collision with root package name */
    public final float f2810b;

    /* renamed from: c  reason: collision with root package name */
    public final float f2811c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f2812d;
    public final int e;

    public ad(float f) {
        this(f, 1.0f, false);
    }

    public ad(float f, float f2) {
        this(f, f2, false);
    }

    public ad(float f, float f2, boolean z) {
        boolean z2 = true;
        a.a(f > BitmapDescriptorFactory.HUE_RED);
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            z2 = false;
        }
        a.a(z2);
        this.f2810b = f;
        this.f2811c = f2;
        this.f2812d = z;
        this.e = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ad adVar = (ad) obj;
        return this.f2810b == adVar.f2810b && this.f2811c == adVar.f2811c && this.f2812d == adVar.f2812d;
    }

    public final int hashCode() {
        return ((((Float.floatToRawIntBits(this.f2810b) + 527) * 31) + Float.floatToRawIntBits(this.f2811c)) * 31) + (this.f2812d ? 1 : 0);
    }
}
