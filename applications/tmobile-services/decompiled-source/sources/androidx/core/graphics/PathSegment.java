package androidx.core.graphics;

import android.graphics.PointF;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/PathSegment.class */
public final class PathSegment {

    /* renamed from: a */
    private final PointF f3024a;

    /* renamed from: b */
    private final float f3025b;

    /* renamed from: c */
    private final PointF f3026c;

    /* renamed from: d */
    private final float f3027d;

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PathSegment)) {
            return false;
        }
        PathSegment pathSegment = (PathSegment) obj;
        if (Float.compare(this.f3025b, pathSegment.f3025b) != 0 || Float.compare(this.f3027d, pathSegment.f3027d) != 0 || !this.f3024a.equals(pathSegment.f3024a) || !this.f3026c.equals(pathSegment.f3026c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f3024a.hashCode();
        float f = this.f3025b;
        int i = 0;
        int floatToIntBits = f != 0.0f ? Float.floatToIntBits(f) : 0;
        int hashCode2 = this.f3026c.hashCode();
        float f2 = this.f3027d;
        if (f2 != 0.0f) {
            i = Float.floatToIntBits(f2);
        }
        return (((((hashCode * 31) + floatToIntBits) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "PathSegment{start=" + this.f3024a + ", startFraction=" + this.f3025b + ", end=" + this.f3026c + ", endFraction=" + this.f3027d + '}';
    }
}
