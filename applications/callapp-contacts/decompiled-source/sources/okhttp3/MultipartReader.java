package okhttp3;

import android.support.v4.media.session.PlaybackStateCompat;
import c.ad;
import c.ae;
import c.f;
import c.h;
import c.i;
import c.r;
import c.s;
import com.appsflyer.internal.referrer.Payload;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.internal.http1.HeadersReader;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� \u001c2\u00020\u0001:\u0003\u001c\u001d\u001eB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bR\u0013\u0010\u0007\u001a\u00020\b8\u0007¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000f\u001a\b\u0018\u00010\u0010R\u00020��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001f"}, d2 = {"Lokhttp3/MultipartReader;", "Ljava/io/Closeable;", Payload.RESPONSE, "Lokhttp3/ResponseBody;", "(Lokhttp3/ResponseBody;)V", Payload.SOURCE, "Lokio/BufferedSource;", "boundary", "", "(Lokio/BufferedSource;Ljava/lang/String;)V", "()Ljava/lang/String;", "closed", "", "crlfDashDashBoundary", "Lokio/ByteString;", "currentPart", "Lokhttp3/MultipartReader$PartSource;", "dashDashBoundary", "noMoreParts", "partCount", "", EventConstants.CLOSE, "", "currentPartBytesRemaining", "", "maxResult", "nextPart", "Lokhttp3/MultipartReader$Part;", "Companion", "Part", "PartSource", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/MultipartReader.class */
public final class MultipartReader implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final s afterBoundaryOptions;
    private final String boundary;
    private boolean closed;
    private final i crlfDashDashBoundary;
    private PartSource currentPart;
    private final i dashDashBoundary;
    private boolean noMoreParts;
    private int partCount;
    private final h source;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/MultipartReader$Companion;", "", "()V", "afterBoundaryOptions", "Lokio/Options;", "getAfterBoundaryOptions", "()Lokio/Options;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/MultipartReader$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final s getAfterBoundaryOptions() {
            return MultipartReader.afterBoundaryOptions;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\t\u001a\u00020\nH\u0096\u0001R\u0013\u0010\u0004\u001a\u00020\u00058\u0007¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u0007R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\b¨\u0006\u000b"}, d2 = {"Lokhttp3/MultipartReader$Part;", "Ljava/io/Closeable;", "headers", "Lokhttp3/Headers;", "body", "Lokio/BufferedSource;", "(Lokhttp3/Headers;Lokio/BufferedSource;)V", "()Lokio/BufferedSource;", "()Lokhttp3/Headers;", EventConstants.CLOSE, "", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/MultipartReader$Part.class */
    public static final class Part implements Closeable {
        private final h body;
        private final Headers headers;

        public Part(Headers headers, h body) {
            p.d(headers, "headers");
            p.d(body, "body");
            this.headers = headers;
            this.body = body;
        }

        public final h body() {
            return this.body;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.body.close();
        }

        public final Headers headers() {
            return this.headers;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0016J\b\u0010\u0003\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lokhttp3/MultipartReader$PartSource;", "Lokio/Source;", "(Lokhttp3/MultipartReader;)V", "timeout", "Lokio/Timeout;", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/MultipartReader$PartSource.class */
    final class PartSource implements ad {
        private final ae timeout = new ae();

        public PartSource() {
        }

        @Override // c.ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (p.a(MultipartReader.this.currentPart, this)) {
                MultipartReader.this.currentPart = null;
            }
        }

        @Override // c.ad
        public final long read(f sink, long j) {
            p.d(sink, "sink");
            if (!(j >= 0)) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
            } else if (p.a(MultipartReader.this.currentPart, this)) {
                ae timeout = MultipartReader.this.source.timeout();
                ae aeVar = this.timeout;
                long timeoutNanos = timeout.timeoutNanos();
                timeout.timeout(ae.a.a(aeVar.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                if (timeout.hasDeadline()) {
                    long deadlineNanoTime = timeout.deadlineNanoTime();
                    if (aeVar.hasDeadline()) {
                        timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), aeVar.deadlineNanoTime()));
                    }
                    try {
                        long currentPartBytesRemaining = MultipartReader.this.currentPartBytesRemaining(j);
                        return currentPartBytesRemaining == 0 ? -1L : MultipartReader.this.source.read(sink, currentPartBytesRemaining);
                    } finally {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (aeVar.hasDeadline()) {
                            timeout.deadlineNanoTime(deadlineNanoTime);
                        }
                    }
                } else {
                    if (aeVar.hasDeadline()) {
                        timeout.deadlineNanoTime(aeVar.deadlineNanoTime());
                    }
                    try {
                        long currentPartBytesRemaining2 = MultipartReader.this.currentPartBytesRemaining(j);
                        return currentPartBytesRemaining2 == 0 ? -1L : MultipartReader.this.source.read(sink, currentPartBytesRemaining2);
                    } finally {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (aeVar.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                    }
                }
            } else {
                throw new IllegalStateException("closed".toString());
            }
        }

        @Override // c.ad
        public final ae timeout() {
            return this.timeout;
        }
    }

    static {
        s.a aVar = s.f6315d;
        i.a aVar2 = i.f6297d;
        i a2 = i.a.a("\r\n");
        i.a aVar3 = i.f6297d;
        i a3 = i.a.a("--");
        i.a aVar4 = i.f6297d;
        i a4 = i.a.a(StringUtils.SPACE);
        i.a aVar5 = i.f6297d;
        afterBoundaryOptions = aVar.a(a2, a3, a4, i.a.a("\t"));
    }

    public MultipartReader(h source, String boundary) throws IOException {
        p.d(source, "source");
        p.d(boundary, "boundary");
        this.source = source;
        this.boundary = boundary;
        this.dashDashBoundary = new f().b("--").b(boundary).q();
        this.crlfDashDashBoundary = new f().b("\r\n--").b(boundary).q();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MultipartReader(okhttp3.ResponseBody r5) throws java.io.IOException {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "response"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r5
            c.h r0 = r0.source()
            r6 = r0
            r0 = r5
            okhttp3.MediaType r0 = r0.contentType()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0026
            r0 = r5
            java.lang.String r1 = "boundary"
            java.lang.String r0 = r0.parameter(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0026
            r0 = r4
            r1 = r6
            r2 = r5
            r0.<init>(r1, r2)
            return
        L_0x0026:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            r1 = r0
            java.lang.String r2 = "expected the Content-Type to have a boundary parameter"
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartReader.<init>(okhttp3.ResponseBody):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v145 */
    /* JADX WARN: Type inference failed for: r0v146 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r21v2, types: [long] */
    /* JADX WARN: Type inference failed for: r23v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long currentPartBytesRemaining(long r8) {
        /*
            Method dump skipped, instructions count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartReader.currentPartBytesRemaining(long):long");
    }

    public final String boundary() {
        return this.boundary;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.closed) {
            this.closed = true;
            this.currentPart = null;
            this.source.close();
        }
    }

    public final Part nextPart() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        } else if (this.noMoreParts) {
            return null;
        } else {
            if (this.partCount != 0 || !this.source.a(0L, this.dashDashBoundary)) {
                while (true) {
                    long currentPartBytesRemaining = currentPartBytesRemaining(PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                    if (currentPartBytesRemaining == 0) {
                        break;
                    }
                    this.source.h(currentPartBytesRemaining);
                }
                this.source.h(this.crlfDashDashBoundary.f());
            } else {
                this.source.h(this.dashDashBoundary.f());
            }
            boolean z = false;
            while (true) {
                int a2 = this.source.a(afterBoundaryOptions);
                if (a2 == -1) {
                    throw new ProtocolException("unexpected characters after boundary");
                } else if (a2 == 0) {
                    this.partCount++;
                    Headers readHeaders = new HeadersReader(this.source).readHeaders();
                    PartSource partSource = new PartSource();
                    this.currentPart = partSource;
                    return new Part(readHeaders, r.a(partSource));
                } else if (a2 != 1) {
                    if (a2 == 2 || a2 == 3) {
                        z = true;
                    }
                } else if (z) {
                    throw new ProtocolException("unexpected characters after boundary");
                } else if (this.partCount != 0) {
                    this.noMoreParts = true;
                    return null;
                } else {
                    throw new ProtocolException("expected at least 1 part");
                }
            }
        }
    }
}
