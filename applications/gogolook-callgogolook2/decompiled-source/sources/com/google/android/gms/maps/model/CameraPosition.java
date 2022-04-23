package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8911f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/CameraPosition.class */
public final class CameraPosition extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CameraPosition> CREATOR = new C8911f();

    /* renamed from: a */
    public final LatLng f7022a;

    /* renamed from: b */
    public final float f7023b;

    /* renamed from: c */
    public final float f7024c;

    /* renamed from: d */
    public final float f7025d;

    /* renamed from: com.google.android.gms.maps.model.CameraPosition$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/CameraPosition$a.class */
    public static final class C3580a {

        /* renamed from: a */
        public LatLng f7026a;

        /* renamed from: b */
        public float f7027b;

        /* renamed from: c */
        public float f7028c;

        /* renamed from: d */
        public float f7029d;

        /* renamed from: a */
        public final C3580a m31753a(float f) {
            this.f7029d = f;
            return this;
        }

        /* renamed from: a */
        public final C3580a m31752a(LatLng latLng) {
            this.f7026a = latLng;
            return this;
        }

        /* renamed from: a */
        public final CameraPosition m31754a() {
            return new CameraPosition(this.f7026a, this.f7027b, this.f7028c, this.f7029d);
        }

        /* renamed from: b */
        public final C3580a m31751b(float f) {
            this.f7028c = f;
            return this;
        }

        /* renamed from: c */
        public final C3580a m31750c(float f) {
            this.f7027b = f;
            return this;
        }
    }

    public CameraPosition(LatLng latLng, float f, float f2, float f3) {
        C7021t.m21289a(latLng, "null camera target");
        C7021t.m21284a(0.0f <= f2 && f2 <= 90.0f, "Tilt needs to be between 0 and 90 inclusive: %s", Float.valueOf(f2));
        this.f7022a = latLng;
        this.f7023b = f;
        this.f7024c = f2 + 0.0f;
        this.f7025d = (((double) f3) <= 0.0d ? (f3 % 360.0f) + 360.0f : f3) % 360.0f;
    }

    /* renamed from: c */
    public static C3580a m31755c() {
        return new C3580a();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraPosition)) {
            return false;
        }
        CameraPosition cameraPosition = (CameraPosition) obj;
        return this.f7022a.equals(cameraPosition.f7022a) && Float.floatToIntBits(this.f7023b) == Float.floatToIntBits(cameraPosition.f7023b) && Float.floatToIntBits(this.f7024c) == Float.floatToIntBits(cameraPosition.f7024c) && Float.floatToIntBits(this.f7025d) == Float.floatToIntBits(cameraPosition.f7025d);
    }

    public final int hashCode() {
        return C7018s.m21296a(this.f7022a, Float.valueOf(this.f7023b), Float.valueOf(this.f7024c), Float.valueOf(this.f7025d));
    }

    public final String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a(AnimatedVectorDrawableCompat.TARGET, this.f7022a);
        a.m21295a("zoom", Float.valueOf(this.f7023b));
        a.m21295a("tilt", Float.valueOf(this.f7024c));
        a.m21295a("bearing", Float.valueOf(this.f7025d));
        return a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f7022a, i, false);
        C7031b.m21226a(parcel, 3, this.f7023b);
        C7031b.m21226a(parcel, 4, this.f7024c);
        C7031b.m21226a(parcel, 5, this.f7025d);
        C7031b.m21229a(parcel, a);
    }
}
