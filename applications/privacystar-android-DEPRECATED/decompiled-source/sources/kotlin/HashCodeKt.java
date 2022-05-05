package kotlin;

import kotlin.internal.InlineOnly;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n��\n\u0002\u0010\b\n\u0002\u0010��\n��\u001a\u000f\u0010��\u001a\u00020\u0001*\u0004\u0018\u00010\u0002H\u0087\b¨\u0006\u0003"}, m254d2 = {"hashCode", "", "", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/HashCodeKt.class */
public final class HashCodeKt {
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final int hashCode(@Nullable Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }
}
