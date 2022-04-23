package kotlin.reflect;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/x.class */
public final /* synthetic */ class x {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f38644a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f38645b;

    static {
        int[] iArr = new int[s.values().length];
        f38644a = iArr;
        iArr[s.IN.ordinal()] = 1;
        iArr[s.INVARIANT.ordinal()] = 2;
        iArr[s.OUT.ordinal()] = 3;
        int[] iArr2 = new int[s.values().length];
        f38645b = iArr2;
        iArr2[s.INVARIANT.ordinal()] = 1;
        iArr2[s.IN.ordinal()] = 2;
        iArr2[s.OUT.ordinal()] = 3;
    }
}
