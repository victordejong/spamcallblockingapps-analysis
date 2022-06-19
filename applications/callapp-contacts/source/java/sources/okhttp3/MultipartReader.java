package okhttp3;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.appsflyer.internal.referrer.Payload;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.internal.http1.HeadersReader;
import org.apache.commons.lang3.StringUtils;
import p092c.AbstractC3190ad;
import p092c.AbstractC3207h;
import p092c.C3191ae;
import p092c.C3202f;
import p092c.C3208i;
import p092c.C3218r;
import p092c.C3219s;
import p092c.C3229y;
import p092c.p093a.C3184a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� \u001c2\u00020\u0001:\u0003\u001c\u001d\u001eB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bR\u0013\u0010\u0007\u001a\u00020\b8\u0007¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000f\u001a\b\u0018\u00010\u0010R\u00020��X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001f"}, m4298d2 = {"Lokhttp3/MultipartReader;", "Ljava/io/Closeable;", Payload.RESPONSE, "Lokhttp3/ResponseBody;", "(Lokhttp3/ResponseBody;)V", Payload.SOURCE, "Lokio/BufferedSource;", "boundary", "", "(Lokio/BufferedSource;Ljava/lang/String;)V", "()Ljava/lang/String;", "closed", "", "crlfDashDashBoundary", "Lokio/ByteString;", "currentPart", "Lokhttp3/MultipartReader$PartSource;", "dashDashBoundary", "noMoreParts", "partCount", "", EventConstants.CLOSE, "", "currentPartBytesRemaining", "", "maxResult", "nextPart", "Lokhttp3/MultipartReader$Part;", "Companion", "Part", "PartSource", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/MultipartReader.class */
public final class MultipartReader implements Closeable {
    public static final Companion Companion = new Companion(null);
    private static final C3219s afterBoundaryOptions;
    private final String boundary;
    private boolean closed;
    private final C3208i crlfDashDashBoundary;
    private PartSource currentPart;
    private final C3208i dashDashBoundary;
    private boolean noMoreParts;
    private int partCount;
    private final AbstractC3207h source;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m4298d2 = {"Lokhttp3/MultipartReader$Companion;", "", "()V", "afterBoundaryOptions", "Lokio/Options;", "getAfterBoundaryOptions", "()Lokio/Options;", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/MultipartReader$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final C3219s getAfterBoundaryOptions() {
            return MultipartReader.afterBoundaryOptions;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\t\u001a\u00020\nH\u0096\u0001R\u0013\u0010\u0004\u001a\u00020\u00058\u0007¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\u0007R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\b¨\u0006\u000b"}, m4298d2 = {"Lokhttp3/MultipartReader$Part;", "Ljava/io/Closeable;", "headers", "Lokhttp3/Headers;", "body", "Lokio/BufferedSource;", "(Lokhttp3/Headers;Lokio/BufferedSource;)V", "()Lokio/BufferedSource;", "()Lokhttp3/Headers;", EventConstants.CLOSE, "", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/MultipartReader$Part.class */
    public static final class Part implements Closeable {
        private final AbstractC3207h body;
        private final Headers headers;

        public Part(Headers headers, AbstractC3207h body) {
            C18524p.m3840d(headers, "headers");
            C18524p.m3840d(body, "body");
            this.headers = headers;
            this.body = body;
        }

        public final AbstractC3207h body() {
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

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0016J\b\u0010\u0003\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, m4298d2 = {"Lokhttp3/MultipartReader$PartSource;", "Lokio/Source;", "(Lokhttp3/MultipartReader;)V", "timeout", "Lokio/Timeout;", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/MultipartReader$PartSource.class */
    final class PartSource implements AbstractC3190ad {
        private final C3191ae timeout = new C3191ae();

        public PartSource() {
            MultipartReader.this = r5;
        }

        @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (C18524p.m3850a(MultipartReader.this.currentPart, this)) {
                MultipartReader.this.currentPart = null;
            }
        }

        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* JADX WARN: Type inference failed for: r0v78, types: [long] */
        @Override // p092c.AbstractC3190ad
        public final long read(C3202f sink, long j) {
            C18524p.m3840d(sink, "sink");
            if (j >= 0) {
                if (!C18524p.m3850a(MultipartReader.this.currentPart, this)) {
                    throw new IllegalStateException("closed".toString());
                }
                C3191ae timeout = MultipartReader.this.source.timeout();
                C3191ae c3191ae = this.timeout;
                long timeoutNanos = timeout.timeoutNanos();
                timeout.timeout(C3191ae.C3192a.m39231a(c3191ae.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
                if (!timeout.hasDeadline()) {
                    if (c3191ae.hasDeadline()) {
                        timeout.deadlineNanoTime(c3191ae.deadlineNanoTime());
                    }
                    try {
                        long currentPartBytesRemaining = MultipartReader.this.currentPartBytesRemaining(j);
                        char read = currentPartBytesRemaining == 0 ? (char) 65535 : MultipartReader.this.source.read(sink, currentPartBytesRemaining);
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (c3191ae.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        return read;
                    } catch (Throwable th) {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (c3191ae.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th;
                    }
                }
                long deadlineNanoTime = timeout.deadlineNanoTime();
                if (c3191ae.hasDeadline()) {
                    timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), c3191ae.deadlineNanoTime()));
                }
                try {
                    long currentPartBytesRemaining2 = MultipartReader.this.currentPartBytesRemaining(j);
                    char read2 = currentPartBytesRemaining2 == 0 ? (char) 65535 : MultipartReader.this.source.read(sink, currentPartBytesRemaining2);
                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                    if (c3191ae.hasDeadline()) {
                        timeout.deadlineNanoTime(deadlineNanoTime);
                    }
                    return read2;
                } catch (Throwable th2) {
                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                    if (c3191ae.hasDeadline()) {
                        timeout.deadlineNanoTime(deadlineNanoTime);
                    }
                    throw th2;
                }
            }
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        }

        @Override // p092c.AbstractC3190ad
        public final C3191ae timeout() {
            return this.timeout;
        }
    }

    static {
        C3219s.C3220a c3220a = C3219s.f11603d;
        C3208i.C3209a c3209a = C3208i.f11583d;
        C3208i m39170a = C3208i.C3209a.m39170a("\r\n");
        C3208i.C3209a c3209a2 = C3208i.f11583d;
        C3208i m39170a2 = C3208i.C3209a.m39170a("--");
        C3208i.C3209a c3209a3 = C3208i.f11583d;
        C3208i m39170a3 = C3208i.C3209a.m39170a(StringUtils.SPACE);
        C3208i.C3209a c3209a4 = C3208i.f11583d;
        afterBoundaryOptions = c3220a.m39146a(m39170a, m39170a2, m39170a3, C3208i.C3209a.m39170a("\t"));
    }

    public MultipartReader(AbstractC3207h source, String boundary) throws IOException {
        C18524p.m3840d(source, "source");
        C18524p.m3840d(boundary, "boundary");
        this.source = source;
        this.boundary = boundary;
        this.dashDashBoundary = new C3202f().mo39143b("--").mo39143b(boundary).mo39107q();
        this.crlfDashDashBoundary = new C3202f().mo39143b("\r\n--").mo39143b(boundary).mo39107q();
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
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r5
            c.h r0 = r0.source()
            r6 = r0
            r0 = r5
            okhttp3.MediaType r0 = r0.contentType()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L26
            r0 = r5
            java.lang.String r1 = "boundary"
            java.lang.String r0 = r0.parameter(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L26
            r0 = r4
            r1 = r6
            r2 = r5
            r0.<init>(r1, r2)
            return
        L26:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            r1 = r0
            java.lang.String r2 = "expected the Content-Type to have a boundary parameter"
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.MultipartReader.<init>(okhttp3.ResponseBody):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v139, types: [long] */
    /* JADX WARN: Type inference failed for: r0v145 */
    /* JADX WARN: Type inference failed for: r0v146 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* JADX WARN: Type inference failed for: r0v89 */
    public final long currentPartBytesRemaining(long j) {
        char c;
        char c2;
        char c3;
        this.source.mo39131a(this.crlfDashDashBoundary.mo39173f());
        C3202f mo39124b = this.source.mo39124b();
        C3208i bytes = this.crlfDashDashBoundary;
        C18524p.m3840d(bytes, "bytes");
        C18524p.m3840d(bytes, "bytes");
        if (bytes.mo39173f() > 0) {
            C3229y c3229y = mo39124b.f11571a;
            if (c3229y != null) {
                if (mo39124b.f11572b - 0 < 0) {
                    ?? r0 = mo39124b.f11572b;
                    while (true) {
                        c3 = r0;
                        if (c3 <= 0) {
                            break;
                        }
                        c3229y = c3229y.f11640g;
                        C18524p.m3851a(c3229y);
                        r0 = c3 - (c3229y.f11636c - c3229y.f11635b);
                    }
                    if (c3229y != null) {
                        byte[] mo39171h = bytes.mo39171h();
                        byte b = mo39171h[0];
                        int mo39173f = bytes.mo39173f();
                        long j2 = (mo39124b.f11572b - mo39173f) + 1;
                        char c4 = c3;
                        char c5 = 0;
                        loop1: while (c4 < j2) {
                            byte[] bArr = c3229y.f11634a;
                            int min = (int) Math.min(c3229y.f11636c, (c3229y.f11635b + j2) - c4);
                            for (int i = (int) ((c3229y.f11635b + c5) - c4); i < min; i++) {
                                if (bArr[i] == b && C3184a.m39239a(c3229y, i + 1, mo39171h, mo39173f)) {
                                    c = (i - c3229y.f11635b) + c4;
                                    break loop1;
                                }
                            }
                            c5 = c4 + (c3229y.f11636c - c3229y.f11635b);
                            c3229y = c3229y.f11639f;
                            C18524p.m3851a(c3229y);
                            c4 = c5;
                        }
                    }
                } else {
                    ?? r02 = 0;
                    while (true) {
                        c2 = r02;
                        ?? r03 = (c3229y.f11636c - c3229y.f11635b) + c2;
                        if (r03 > 0) {
                            break;
                        }
                        c3229y = c3229y.f11639f;
                        C18524p.m3851a(c3229y);
                        r02 = r03;
                    }
                    if (c3229y != null) {
                        byte[] mo39171h2 = bytes.mo39171h();
                        byte b2 = mo39171h2[0];
                        int mo39173f2 = bytes.mo39173f();
                        long j3 = (mo39124b.f11572b - mo39173f2) + 1;
                        char c6 = 0;
                        loop4: while (c2 < j3) {
                            byte[] bArr2 = c3229y.f11634a;
                            int min2 = (int) Math.min(c3229y.f11636c, (c3229y.f11635b + j3) - c2);
                            for (int i2 = (int) ((c3229y.f11635b + c6) - c2); i2 < min2; i2++) {
                                if (bArr2[i2] == b2 && C3184a.m39239a(c3229y, i2 + 1, mo39171h2, mo39173f2)) {
                                    c = (i2 - c3229y.f11635b) + c2;
                                    break loop4;
                                }
                            }
                            c6 = c2 + (c3229y.f11636c - c3229y.f11635b);
                            c3229y = c3229y.f11639f;
                            C18524p.m3851a(c3229y);
                            c2 = c6;
                        }
                    }
                }
            }
            c = 65535;
            return c == -1 ? Math.min(j, (this.source.mo39124b().f11572b - this.crlfDashDashBoundary.mo39173f()) + 1) : Math.min(j, (long) c);
        }
        throw new IllegalArgumentException("bytes is empty".toString());
    }

    public final String boundary() {
        return this.boundary;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.currentPart = null;
        this.source.close();
    }

    public final Part nextPart() throws IOException {
        if (!this.closed) {
            if (this.noMoreParts) {
                return null;
            }
            if (this.partCount != 0 || !this.source.mo39130a(0L, this.dashDashBoundary)) {
                while (true) {
                    long currentPartBytesRemaining = currentPartBytesRemaining(PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                    if (currentPartBytesRemaining == 0) {
                        break;
                    }
                    this.source.mo39114h(currentPartBytesRemaining);
                }
                this.source.mo39114h(this.crlfDashDashBoundary.mo39173f());
            } else {
                this.source.mo39114h(this.dashDashBoundary.mo39173f());
            }
            boolean z = false;
            while (true) {
                int mo39127a = this.source.mo39127a(afterBoundaryOptions);
                if (mo39127a == -1) {
                    throw new ProtocolException("unexpected characters after boundary");
                }
                if (mo39127a == 0) {
                    this.partCount++;
                    Headers readHeaders = new HeadersReader(this.source).readHeaders();
                    PartSource partSource = new PartSource();
                    this.currentPart = partSource;
                    return new Part(readHeaders, C3218r.m39150a(partSource));
                } else if (mo39127a == 1) {
                    if (z) {
                        throw new ProtocolException("unexpected characters after boundary");
                    }
                    if (this.partCount == 0) {
                        throw new ProtocolException("expected at least 1 part");
                    }
                    this.noMoreParts = true;
                    return null;
                } else if (mo39127a == 2 || mo39127a == 3) {
                    z = true;
                }
            }
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }
}
