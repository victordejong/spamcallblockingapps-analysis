package okio;

import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0017\u0010��\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0086\b¨\u0006\u0005"}, m400d2 = {"inflate", "Lokio/InflaterSource;", "Lokio/Source;", "inflater", "Ljava/util/zip/Inflater;", "okio"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/_InflaterSourceExtensions.class */
public final class _InflaterSourceExtensions {
    public static final InflaterSource inflate(Source inflate, Inflater inflater) {
        Intrinsics.checkNotNullParameter(inflate, "$this$inflate");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return new InflaterSource(inflate, inflater);
    }

    public static /* synthetic */ InflaterSource inflate$default(Source inflate, Inflater inflater, int i, Object obj) {
        if ((i & 1) != 0) {
            inflater = new Inflater();
        }
        Intrinsics.checkNotNullParameter(inflate, "$this$inflate");
        Inflater inflater2 = inflater;
        Intrinsics.checkNotNullParameter(inflater2, "inflater");
        return new InflaterSource(inflate, inflater);
    }
}
