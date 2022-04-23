package kotlinx.coroutines.internal;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt", "kotlinx/coroutines/internal/SystemPropsKt__SystemProps_commonKt"}, k = 4, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/w.class */
public final class w {
    public static /* synthetic */ int a(String str, int i, int i2, int i3, int i4) {
        if ((i4 & 4) != 0) {
            i2 = 1;
        }
        if ((i4 & 8) != 0) {
            i3 = Integer.MAX_VALUE;
        }
        return (int) a(str, i, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long a(String str, long j, long j2, long j3) {
        return y.a(str, j, j2, j3);
    }
}
