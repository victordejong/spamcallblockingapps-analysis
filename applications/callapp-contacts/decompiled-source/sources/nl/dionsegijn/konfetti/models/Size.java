package nl.dionsegijn.konfetti.models;

import android.content.res.Resources;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00058@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\b¨\u0006\u0016"}, d2 = {"Lnl/dionsegijn/konfetti/models/Size;", "", "sizeInDp", "", "mass", "", "(IF)V", "getMass", "()F", "getSizeInDp", "()I", "sizeInPx", "getSizeInPx$konfetti_release", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "konfetti_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/models/Size.class */
public final class Size {
    private final float mass;
    private final int sizeInDp;

    public Size(int i, float f) {
        this.sizeInDp = i;
        this.mass = f;
        if (!(f != BitmapDescriptorFactory.HUE_RED)) {
            throw new IllegalArgumentException(("mass=" + f + " must be != 0").toString());
        }
    }

    public /* synthetic */ Size(int i, float f, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? 5.0f : f);
    }

    public static /* synthetic */ Size copy$default(Size size, int i, float f, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = size.sizeInDp;
        }
        if ((i2 & 2) != 0) {
            f = size.mass;
        }
        return size.copy(i, f);
    }

    public final int component1() {
        return this.sizeInDp;
    }

    public final float component2() {
        return this.mass;
    }

    public final Size copy(int i, float f) {
        return new Size(i, f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return this.sizeInDp == size.sizeInDp && Float.compare(this.mass, size.mass) == 0;
    }

    public final float getMass() {
        return this.mass;
    }

    public final int getSizeInDp() {
        return this.sizeInDp;
    }

    public final float getSizeInPx$konfetti_release() {
        float f = this.sizeInDp;
        Resources system = Resources.getSystem();
        p.b(system, "Resources.getSystem()");
        return f * system.getDisplayMetrics().density;
    }

    public final int hashCode() {
        return (this.sizeInDp * 31) + Float.floatToIntBits(this.mass);
    }

    public final String toString() {
        return "Size(sizeInDp=" + this.sizeInDp + ", mass=" + this.mass + ")";
    }
}
