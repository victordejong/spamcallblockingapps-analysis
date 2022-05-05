package kotlin.math;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\n\bÂ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003R\u0016\u0010\u0005\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0003R\u0016\u0010\u0006\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0003R\u0016\u0010\u0007\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0003R\u0016\u0010\b\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0003¨\u0006\u000b"}, d2 = {"Lkotlin/math/Constants;", "", "LN2", "D", "epsilon", "taylor_2_bound", "taylor_n_bound", "upper_taylor_2_bound", "upper_taylor_n_bound", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/math/Constants.class */
final class Constants {
    @JvmField

    /* renamed from: a */
    public static final double f20766a;
    @JvmField

    /* renamed from: b */
    public static final double f20767b;
    @JvmField

    /* renamed from: c */
    public static final double f20768c;

    static {
        Math.log(2.0d);
        double ulp = Math.ulp(1.0d);
        f20766a = ulp;
        double sqrt = Math.sqrt(ulp);
        f20767b = sqrt;
        f20768c = Math.sqrt(sqrt);
    }

    private Constants() {
    }
}
