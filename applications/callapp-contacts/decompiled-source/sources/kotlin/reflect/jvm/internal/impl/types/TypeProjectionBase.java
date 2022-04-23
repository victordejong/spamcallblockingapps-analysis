package kotlin.reflect.jvm.internal.impl.types;

import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeProjectionBase.class */
public abstract class TypeProjectionBase implements TypeProjection {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypeProjection)) {
            return false;
        }
        TypeProjection typeProjection = (TypeProjection) obj;
        return isStarProjection() == typeProjection.isStarProjection() && getProjectionKind() == typeProjection.getProjectionKind() && getType().equals(typeProjection.getType());
    }

    public int hashCode() {
        int i;
        int i2;
        int hashCode = getProjectionKind().hashCode();
        if (TypeUtils.noExpectedType(getType())) {
            i = hashCode * 31;
            i2 = 19;
        } else {
            i = hashCode * 31;
            i2 = isStarProjection() ? 17 : getType().hashCode();
        }
        return i + i2;
    }

    public String toString() {
        if (isStarProjection()) {
            return "*";
        }
        if (getProjectionKind() == Variance.INVARIANT) {
            return getType().toString();
        }
        return getProjectionKind() + StringUtils.SPACE + getType();
    }
}
