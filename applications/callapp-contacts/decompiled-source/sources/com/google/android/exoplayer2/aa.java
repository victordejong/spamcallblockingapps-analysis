package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/aa.class */
public final class aa {

    /* renamed from: a  reason: collision with root package name */
    public static final aa f20646a = new aa(1.0f);

    /* renamed from: b  reason: collision with root package name */
    public final float f20647b;

    /* renamed from: c  reason: collision with root package name */
    public final float f20648c;

    /* renamed from: d  reason: collision with root package name */
    public final int f20649d;

    public aa(float f) {
        this(f, 1.0f);
    }

    public aa(float f, float f2) {
        boolean z = true;
        a.a(f > BitmapDescriptorFactory.HUE_RED);
        if (f2 <= BitmapDescriptorFactory.HUE_RED) {
            z = false;
        }
        a.a(z);
        this.f20647b = f;
        this.f20648c = f2;
        this.f20649d = Math.round(f * 1000.0f);
    }

    public final aa a(float f) {
        return new aa(f, this.f20648c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        aa aaVar = (aa) obj;
        return this.f20647b == aaVar.f20647b && this.f20648c == aaVar.f20648c;
    }

    public final int hashCode() {
        return ((Float.floatToRawIntBits(this.f20647b) + 527) * 31) + Float.floatToRawIntBits(this.f20648c);
    }

    public final String toString() {
        return af.a("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f20647b), Float.valueOf(this.f20648c));
    }
}
