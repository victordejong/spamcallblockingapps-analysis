package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\f\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0086\b¨\u0006\u0003"}, m400d2 = {"gzip", "Lokio/GzipSink;", "Lokio/Sink;", "okio"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/_GzipSinkExtensions.class */
public final class _GzipSinkExtensions {
    public static final GzipSink gzip(Sink gzip) {
        Intrinsics.checkNotNullParameter(gzip, "$this$gzip");
        return new GzipSink(gzip);
    }
}
