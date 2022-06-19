package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.reflect.jvm.internal.impl.types.Variance;
@Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.x */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/x.class */
public final /* synthetic */ class C20099x {

    /* renamed from: a */
    public static final /* synthetic */ int[] f66500a;

    static {
        int[] iArr = new int[Variance.values().length];
        f66500a = iArr;
        iArr[Variance.INVARIANT.ordinal()] = 1;
        iArr[Variance.IN_VARIANCE.ordinal()] = 2;
        iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
    }
}
