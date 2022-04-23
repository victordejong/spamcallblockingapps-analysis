package kotlin.jvm.internal;

import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u000b\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u0006¨\u0006\u000f"}, m254d2 = {"Lkotlin/jvm/internal/DoubleCompanionObject;", "", "()V", "MAX_VALUE", "", "getMAX_VALUE", "()D", "MIN_VALUE", "getMIN_VALUE", "NEGATIVE_INFINITY", "getNEGATIVE_INFINITY", "NaN", "getNaN", "POSITIVE_INFINITY", "getPOSITIVE_INFINITY", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/DoubleCompanionObject.class */
public final class DoubleCompanionObject {
    public static final DoubleCompanionObject INSTANCE = new DoubleCompanionObject();
    private static final double MAX_VALUE = Double.MAX_VALUE;
    private static final double MIN_VALUE = Double.MIN_VALUE;
    private static final double NEGATIVE_INFINITY = Double.NEGATIVE_INFINITY;
    private static final double NaN = Double.NaN;
    private static final double POSITIVE_INFINITY = Double.POSITIVE_INFINITY;

    private DoubleCompanionObject() {
    }

    public final double getMAX_VALUE() {
        return MAX_VALUE;
    }

    public final double getMIN_VALUE() {
        return MIN_VALUE;
    }

    public final double getNEGATIVE_INFINITY() {
        return NEGATIVE_INFINITY;
    }

    public final double getNaN() {
        return NaN;
    }

    public final double getPOSITIVE_INFINITY() {
        return POSITIVE_INFINITY;
    }
}
