package kotlinx.serialization;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b.class */
public final /* synthetic */ class b {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f38871a;

    static {
        int[] iArr = new int[v.values().length];
        f38871a = iArr;
        iArr[v.BANNED.ordinal()] = 1;
        iArr[v.OVERWRITE.ordinal()] = 2;
        iArr[v.UPDATE.ordinal()] = 3;
    }
}
