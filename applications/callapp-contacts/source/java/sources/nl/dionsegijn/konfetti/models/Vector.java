package nl.dionsegijn.konfetti.models;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020��J\u0016\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020��2\u0006\u0010\u0010\u001a\u00020\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0013\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u000e\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0003J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u001e"}, m4298d2 = {"Lnl/dionsegijn/konfetti/models/Vector;", "", "x", "", "y", "(FF)V", "getX", "()F", "setX", "(F)V", "getY", "setY", "add", "", "v", "addScaled", "s", "component1", "component2", "copy", "div", "n", "equals", "", "other", "hashCode", "", "mult", "toString", "", "konfetti_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/models/Vector.class */
public final class Vector {

    /* renamed from: x */
    private float f67163x;

    /* renamed from: y */
    private float f67164y;

    public Vector() {
        this(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 3, null);
    }

    public Vector(float f, float f2) {
        this.f67163x = f;
        this.f67164y = f2;
    }

    public /* synthetic */ Vector(float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2);
    }

    public static /* synthetic */ Vector copy$default(Vector vector, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = vector.f67163x;
        }
        if ((i & 2) != 0) {
            f2 = vector.f67164y;
        }
        return vector.copy(f, f2);
    }

    public final void add(Vector v) {
        C18524p.m3840d(v, "v");
        this.f67163x += v.f67163x;
        this.f67164y += v.f67164y;
    }

    public final void addScaled(Vector v, float f) {
        C18524p.m3840d(v, "v");
        this.f67163x += v.f67163x * f;
        this.f67164y += v.f67164y * f;
    }

    public final float component1() {
        return this.f67163x;
    }

    public final float component2() {
        return this.f67164y;
    }

    public final Vector copy(float f, float f2) {
        return new Vector(f, f2);
    }

    public final void div(float f) {
        this.f67163x /= f;
        this.f67164y /= f;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Vector)) {
                return false;
            }
            Vector vector = (Vector) obj;
            return Float.compare(this.f67163x, vector.f67163x) == 0 && Float.compare(this.f67164y, vector.f67164y) == 0;
        }
        return true;
    }

    public final float getX() {
        return this.f67163x;
    }

    public final float getY() {
        return this.f67164y;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f67163x) * 31) + Float.floatToIntBits(this.f67164y);
    }

    public final void mult(float f) {
        this.f67163x *= f;
        this.f67164y *= f;
    }

    public final void setX(float f) {
        this.f67163x = f;
    }

    public final void setY(float f) {
        this.f67164y = f;
    }

    public final String toString() {
        return "Vector(x=" + this.f67163x + ", y=" + this.f67164y + ")";
    }
}
