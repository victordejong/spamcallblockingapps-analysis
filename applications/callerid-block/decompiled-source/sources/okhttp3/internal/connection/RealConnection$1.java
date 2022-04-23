package okhttp3.internal.connection;

import java.io.Closeable;
import okhttp3.internal.p128ws.RealWebSocket$Streams;
import okio.BufferedSink;
import okio.BufferedSource;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/connection/RealConnection$1.class */
class RealConnection$1 extends RealWebSocket$Streams {
    final /* synthetic */ RealConnection this$0;
    final /* synthetic */ StreamAllocation val$streamAllocation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RealConnection$1(RealConnection realConnection, final boolean z, final BufferedSource bufferedSource, final BufferedSink bufferedSink, StreamAllocation streamAllocation) {
        new Closeable(z, bufferedSource, bufferedSink) { // from class: okhttp3.internal.ws.RealWebSocket$Streams
            public final boolean client;
            public final BufferedSink sink;
            public final BufferedSource source;

            {
                this.client = z;
                this.source = bufferedSource;
                this.sink = bufferedSink;
            }
        };
        this.this$0 = realConnection;
        this.val$streamAllocation = streamAllocation;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        StreamAllocation streamAllocation = this.val$streamAllocation;
        streamAllocation.streamFinished(true, streamAllocation.codec(), -1L, null);
    }
}
