package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.reflect.jvm.internal.impl.types.Variance;
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/z.class */
public final /* synthetic */ class z {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f38632a;

    static {
        int[] iArr = new int[Variance.values().length];
        f38632a = iArr;
        iArr[Variance.INVARIANT.ordinal()] = 1;
        iArr[Variance.IN_VARIANCE.ordinal()] = 2;
        iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
    }
}
