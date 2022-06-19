package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.reflect.jvm.internal.impl.types.Variance;
@Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.z */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/z.class */
public final /* synthetic */ class C20102z {

    /* renamed from: a */
    public static final /* synthetic */ int[] f66506a;

    static {
        int[] iArr = new int[Variance.values().length];
        f66506a = iArr;
        iArr[Variance.INVARIANT.ordinal()] = 1;
        iArr[Variance.IN_VARIANCE.ordinal()] = 2;
        iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
    }
}
