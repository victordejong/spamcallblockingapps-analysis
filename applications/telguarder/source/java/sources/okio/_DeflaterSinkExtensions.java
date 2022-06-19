package okio;

import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0017\u0010��\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0086\b¨\u0006\u0005"}, m400d2 = {"deflate", "Lokio/DeflaterSink;", "Lokio/Sink;", "deflater", "Ljava/util/zip/Deflater;", "okio"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/_DeflaterSinkExtensions.class */
public final class _DeflaterSinkExtensions {
    public static final DeflaterSink deflate(Sink deflate, Deflater deflater) {
        Intrinsics.checkNotNullParameter(deflate, "$this$deflate");
        Intrinsics.checkNotNullParameter(deflater, "deflater");
        return new DeflaterSink(deflate, deflater);
    }

    public static /* synthetic */ DeflaterSink deflate$default(Sink deflate, Deflater deflater, int i, Object obj) {
        if ((i & 1) != 0) {
            deflater = new Deflater();
        }
        Intrinsics.checkNotNullParameter(deflate, "$this$deflate");
        Deflater deflater2 = deflater;
        Intrinsics.checkNotNullParameter(deflater2, "deflater");
        return new DeflaterSink(deflate, deflater);
    }
}
