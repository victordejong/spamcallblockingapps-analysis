package kotlinx.coroutines;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/am.class */
public final /* synthetic */ class am {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f38675a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f38676b;

    static {
        int[] iArr = new int[al.values().length];
        f38675a = iArr;
        iArr[al.DEFAULT.ordinal()] = 1;
        iArr[al.ATOMIC.ordinal()] = 2;
        iArr[al.UNDISPATCHED.ordinal()] = 3;
        iArr[al.LAZY.ordinal()] = 4;
        int[] iArr2 = new int[al.values().length];
        f38676b = iArr2;
        iArr2[al.DEFAULT.ordinal()] = 1;
        iArr2[al.ATOMIC.ordinal()] = 2;
        iArr2[al.UNDISPATCHED.ordinal()] = 3;
        iArr2[al.LAZY.ordinal()] = 4;
    }
}
