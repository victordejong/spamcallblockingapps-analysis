package okio;

import java.io.IOException;
import java.security.MessageDigest;
import javax.crypto.Mac;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018�� \u001b2\u00020\u0001:\u0001\u001bB\u0019\b\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018B!\b\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u001aJ\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0013\u0010\u0005\u001a\u00020\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0004R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u001c"}, d2 = {"Lokio/HashingSink;", "Lokio/ForwardingSink;", "Lokio/ByteString;", "-deprecated_hash", "()Lokio/ByteString;", "hash", "Lokio/Buffer;", "source", "", "byteCount", "", "write", "(Lokio/Buffer;J)V", "Ljavax/crypto/Mac;", "mac", "Ljavax/crypto/Mac;", "Ljava/security/MessageDigest;", "messageDigest", "Ljava/security/MessageDigest;", "Lokio/Sink;", "sink", "", "algorithm", "<init>", "(Lokio/Sink;Ljava/lang/String;)V", "key", "(Lokio/Sink;Lokio/ByteString;Ljava/lang/String;)V", "Companion", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/HashingSink.class */
public final class HashingSink extends ForwardingSink {

    /* renamed from: f */
    private final MessageDigest f24155f;

    /* renamed from: g */
    private final Mac f24156g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\b\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\b\u0010\u0007J\u001f\u0010\t\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\t\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u000e\u0010\u000b¨\u0006\u0011"}, d2 = {"Lokio/HashingSink$Companion;", "Lokio/Sink;", "sink", "Lokio/ByteString;", "key", "Lokio/HashingSink;", "hmacSha1", "(Lokio/Sink;Lokio/ByteString;)Lokio/HashingSink;", "hmacSha256", "hmacSha512", "md5", "(Lokio/Sink;)Lokio/HashingSink;", "sha1", "sha256", "sha512", "<init>", "()V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okio/HashingSink$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(@NotNull Buffer source, long j) throws IOException {
        Intrinsics.m1830e(source, "source");
        _Util.m23b(source.m188v0(), 0L, j);
        Segment segment = source.f24125f;
        Intrinsics.m1832c(segment);
        long j2 = 0;
        while (j2 < j) {
            int min = (int) Math.min(j - j2, segment.f24198c - segment.f24197b);
            MessageDigest messageDigest = this.f24155f;
            if (messageDigest != null) {
                messageDigest.update(segment.f24196a, segment.f24197b, min);
            } else {
                Mac mac = this.f24156g;
                Intrinsics.m1832c(mac);
                mac.update(segment.f24196a, segment.f24197b, min);
            }
            j2 += min;
            segment = segment.f24201f;
            Intrinsics.m1832c(segment);
        }
        super.write(source, j);
    }
}
