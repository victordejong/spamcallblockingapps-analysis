package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0018\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\r\u0010��\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0005*\u00020\u0006¨\u0006\u0007"}, m400d2 = {"blackholeSink", "Lokio/Sink;", "blackhole", "buffer", "Lokio/BufferedSink;", "Lokio/BufferedSource;", "Lokio/Source;", "okio"}, m399k = 5, m398mv = {1, 4, 0}, m395xs = "okio/Okio")
/* loaded from: classes-dex2jar.jar:okio/Okio__OkioKt.class */
public final /* synthetic */ class Okio__OkioKt {
    public static final Sink blackhole() {
        return new BlackholeSink();
    }

    public static final BufferedSink buffer(Sink buffer) {
        Intrinsics.checkNotNullParameter(buffer, "$this$buffer");
        return new RealBufferedSink(buffer);
    }

    public static final BufferedSource buffer(Source buffer) {
        Intrinsics.checkNotNullParameter(buffer, "$this$buffer");
        return new RealBufferedSource(buffer);
    }
}
